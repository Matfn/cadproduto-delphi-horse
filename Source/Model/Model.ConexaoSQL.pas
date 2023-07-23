unit Model.ConexaoSQL;

interface

uses
  System.SysUtils, Data.DB, data.Win.ADODB, System.IniFiles, System.Classes, ActiveX;

type
  TConexaoSQL = class
  strict private
    class var FInstance: TConexaoSQL;

    constructor CreatePrivate;
  private
    FConexao: TADOConnection;

    class procedure ReleaseInstance;
    class function GetInstance: TConexaoSQL;
    function EstabelecerConexao: TADOConnection;
  public
    property Conexao: TADOConnection read FConexao write FConexao;

    function ExecSQL(aSQL: string; out aErro: string): Boolean;
    function ADOQuery(aSQL: string): TADOQuery;

    procedure BeginTransaction;
    procedure RoolBack;
    procedure Commit;
  end;

function ConexaoSQL: TConexaoSQL;

implementation

function ConexaoSQL: TConexaoSQL;
begin
  Result := TConexaoSQL.GetInstance;
end;

{ TConexaoSQL }

function TConexaoSQL.ADOQuery(aSQL: string): TADOQuery;
begin
  Result := nil;

  try
    if Assigned(Self.FConexao) then
    begin
      Result := TADOQuery.Create(nil);

      Result.Connection := Self.FConexao;
      Result.Close;

      Result.SQL.Clear;
      Result.SQL.Text := aSQL;

      Result.Open;
    end;
  except
    on E: Exception do
    begin
      Writeln('Erro: Ocorreu um erro ao criar o ADOQuery: ' + e.Message);
    end;
  end;
end;

procedure TConexaoSQL.BeginTransaction;
begin
  try
    if Assigned(Self.FConexao) then
    begin
      Self.FConexao.BeginTrans;
    end;
  except
    on E: Exception do
    begin
      Writeln('Erro: Ocorreu um erro ao iniciar a transação: ' + e.Message);
    end;
  end;
end;

procedure TConexaoSQL.Commit;
begin
  try
    if Assigned(Self.FConexao) then
    begin
      Self.FConexao.CommitTrans;
    end;
  except
    on E: Exception do
    begin
      Writeln('Erro: Ocorreu um erro ao commitar a transação: ' + e.Message);
    end;
  end;
end;

constructor TConexaoSQL.CreatePrivate;
begin
  inherited Create;

  Self.FConexao := Self.EstabelecerConexao;
end;

function TConexaoSQL.EstabelecerConexao: TADOConnection;
var
  arquivoIni: string;
  ini: TIniFile;
  paramsConexao: TStringList;
begin
  Result := nil;
  arquivoIni := '';
  ini := nil;
  paramsConexao := nil;

  try
    arquivoIni := GetCurrentDir + '\APIHorse.ini';

    if not FileExists(arquivoIni) then
    begin
      Writeln('Erro: O arquivo APIHorse.ini não foi localizado junto ao executável da API.');
    end
    else
    begin
      ini := TIniFile.Create(arquivoIni);
      try
        paramsConexao := TStringList.Create;
        try
          ini.ReadSectionValues('MSSQL Server', paramsConexao);

          CoInitialize(nil);
          Result := TADOConnection.Create(nil);
          Result.ConnectionString := 'Provider=SQLNCLI11.1;' +
                                     'Persist Security Info=True;' +
                                     'Data Source=' + paramsConexao.Values['Server'] + ';' +
                                     'Initial Catalog=' + paramsConexao.Values['Database'] + ';' +
                                     'User ID=' + paramsConexao.Values['User_name'] + ';' +
                                     'Password=' + paramsConexao.Values['Password'] + ';' +
                                     'Initial File Name="";' +
                                     'Server SPN=""';

          Result.Connected := True;

          if Result.Connected then
          begin
            Writeln('Conexão estabelecida com sucesso.');
          end;
        finally
          if Assigned(paramsConexao) then FreeAndNil(paramsConexao);
        end;
      finally
        if Assigned(ini) then FreeAndNil(ini);
      end;
    end;
  except
    on E: Exception do
    begin
      Writeln('Erro: Ocorreu um erro ao estabelecer a conexão com o SQL Server: ' + e.Message);
    end;
  end;
end;

function TConexaoSQL.ExecSQL(aSQL: string; out aErro: string): Boolean;
var
  qryADO: TADOQuery;
begin
  Result := False;

  try
    qryADO := TADOQuery.Create(nil);
    try
      qryADO.Connection := Self.FConexao;
      qryADO.Close;

      qryADO.SQL.Clear;
      qryADO.SQL.Text := aSQL;

      if qryADO.ExecSQL > 0 then
      begin
        Result := True;
      end;
    finally
      if Assigned(qryADO) then
      begin
        qryADO.Close;
        FreeAndNil(qryADO)
      end;
    end;
  except
    on E: Exception do
    begin
      aErro := e.Message;
      Result := False;
    end;
  end;
end;

class function TConexaoSQL.GetInstance: TConexaoSQL;
begin
  if not Assigned(TConexaoSQL.FInstance) then
  begin
    TConexaoSQL.FInstance := TConexaoSQL.CreatePrivate;
  end;

  Result := TConexaoSQL.FInstance;
end;

class procedure TConexaoSQL.ReleaseInstance;
begin
  if Assigned(TConexaoSQL.FInstance) then
  begin
    if Assigned(TConexaoSQL.FInstance.FConexao) then
    begin
      TConexaoSQL.FInstance.FConexao.Connected := False;

      FreeAndNil(TConexaoSQL.FInstance.FConexao)
    end;

    FreeAndNil(TConexaoSQL.FInstance.FConexao);
  end;
end;

procedure TConexaoSQL.RoolBack;
begin
  try
    if Assigned(Self.FConexao) then
    begin
      Self.FConexao.RollbackTrans;
    end;
  except
    on E: Exception do
    begin
      Writeln('Erro: Ocorreu um erro ao voltar a transação :' + e.Message);
    end;
  end;
end;

initialization
finalization
  TConexaoSQL.ReleaseInstance;

end.
