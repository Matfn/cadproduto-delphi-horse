unit uPersistentObject;

interface

uses
  System.Rtti, System.StrUtils, System.Variants, System.Classes, System.SysUtils, Data.Win.ADODB;

type
  TPersistentObject = class
  private
    FSQL: WideString;

    function GetValue(const aRTP: TRttiProperty; const aFK: Boolean): string;
    procedure SetValue(P: TRttiProperty; S: Variant);
  public
    property CustomSQL: WideString read FSQL write FSQL;

    function Insert: Boolean;
    function Update: Boolean;
    function Delete: Boolean;
    function SelectQuery: TADOQuery;
    function Select: Boolean; overload;
    procedure Select(const aValue: Integer); overload; virtual; abstract;
  end;

implementation

{ TPersistentObject }

uses
  Model.ConexaoSQL, uAttribute;

function TPersistentObject.Delete: Boolean;
var
  ctx: TRttiContext;
  rtt: TRttiType;
  rtp: TRttiProperty;
  att: TCustomAttribute;
  sql, field, where, error: String;
begin
  Result := False;
  sql := '';
  field := '';
  where := '';
  error := '';
  field := '';

  ctx := TRttiContext.Create;
  try
    ConexaoSQL.BeginTransaction;
    try
      if not Trim(Self.CustomSQL).Equals('') then
      begin
        sql := Self.CustomSQL;
      end
      else
      begin
        rtt := ctx.GetType(ClassType);

        for att in rtt.GetAttributes do
        begin
          if att is TableName then
          begin
            sql := 'DELETE FROM ' + TableName(att).Name ;
          end;
        end;

        for rtp in rtt.GetProperties do
        begin
          for att in rtp.GetAttributes do
          begin
            if att is FieldName then
            begin
              if (FieldName(att).PK) then
              begin
                if Self.GetValue(rtp, FieldName(att).FK).Equals('') then
                begin
                  raise Exception.Create('Erro: O valor para a PK não foi informado.');
                end
                else
                begin
                  where := where + Ifthen(Trim(where)='','',' AND ') + FieldName(att).Name + ' = ' + Self.GetValue(rtp, FieldName(att).FK);
                end
              end;
            end;
          end;
        end;

        sql := sql + ' WHERE ' + where;
      end;

      Result := ConexaoSQL.ExecSQL(sql, error);

      if not Result then
      begin
        raise Exception.Create(error);
      end;
    finally
      Self.CustomSQL := '';
      ConexaoSQL.Commit;
      ctx.Free;
    end;
  except
    ConexaoSQL.RoolBack;
    raise;
  end;
end;

function TPersistentObject.GetValue(const aRTP: TRttiProperty; const aFK: Boolean): string;
begin
  Result := '';

  case aRTP.PropertyType.TypeKind of
    tkUnknown, tkInteger, tkInt64: Result := aRTP.GetValue(Self).ToString;
    tkChar, tkString, tkWChar, tkLString, tkWString, tkUString: Result := QuotedStr(aRTP.GetValue(Self).ToString);
    tkEnumeration: Result := BoolToStr(aRTP.GetValue(Self).AsBoolean);
    tkFloat: Result := StringReplace(FormatFloat('0.00', aRTP.GetValue(Self).AsExtended), FormatSettings.DecimalSeparator, '.', [rfReplaceAll, rfIgnoreCase]);
  end;

  if ((aFK) and (Result = '0')) then
  begin
    Result := 'NULL';
  end;
end;

function TPersistentObject.Insert: Boolean;
var
  ctx: TRttiContext;
  rtt: TRttiType;
  rtp: TRttiProperty;
  att: TCustomAttribute;
  sql, field, value, fieldID, nomeTabela, error: string;
  qry: TADOQuery;
begin
  Result := False;
  sql := '';
  field := '';
  value := '';
  fieldID := '';
  nomeTabela := '';
  error := '';
  qry := nil;

  ctx := TRttiContext.Create;
  try
    ConexaoSQL.BeginTransaction;
    try
      rtt := ctx.GetType(ClassType);

      for att in rtt.GetAttributes do
      begin
        if att is TableName then
        begin
          sql := 'INSERT INTO ' + TableName(att).Name;
          nomeTabela := TableName(att).Name;
        end;
      end;

      for rtp in rtt.GetProperties do
      begin
        for att in rtp.GetAttributes do
        begin
          if att is FieldName then
          begin
            if not FieldName(att).AutoInc then
            begin
              field := field + FieldName(att).Name + ',';
              value := value + GetValue(rtp, FieldName(att).FK) + ',';
            end
            else
            begin
              fieldID := FieldName(att).Name;
            end;
          end;
        end;
      end;

      field := Copy(field, 1, Length(field) - 1);
      value := Copy(value, 1, Length(value) - 1);

      sql := sql + ' (' + field + ') VALUES (' + value + ') ';

      if not Trim(Self.CustomSQL).Equals('') then
      begin
        sql := Self.CustomSQL;
      end;

      Result := ConexaoSQL.ExecSQL(sql, error);

      sql := 'SELECT ' + fieldID + ' FROM ' + nomeTabela + ' ORDER BY ' + fieldID + ' DESC';

      qry := ConexaoSQL.ADOQuery(sql);
      try
        for rtp in rtt.GetProperties do
        begin
          for att in rtp.GetAttributes do
          begin
            if (att is FieldName) and (FieldName(att).AutoInc) then
            begin
              rtp.SetValue(Self, TValue.FromVariant(qry.Fields[0].AsInteger));
            end;
          end;
        end;
      finally
        if Assigned(qry) then
        begin
          qry.Close;
          FreeAndNil(qry)
        end;
      end;
    finally
      Self.CustomSQL := '';
      ConexaoSQL.Commit;
      ctx.Free;
    end;
  except
     ConexaoSQL.RoolBack;
     raise;
  end;
end;

function TPersistentObject.Select: Boolean;
var
  ctx: TRttiContext;
  rtt: TRttiType;
  rtp: TRttiProperty;
  att: TCustomAttribute;
  sql, where: String;
  qry: TADOQuery;
begin
  Result := True;
  sql := '';
  where := '';
  qry := nil;

  try
    ctx := TRttiContext.Create;
    try
      rtt := ctx.GetType(ClassType);

      if not Trim(Self.CustomSQL).Equals('') then
      begin
        sql := Self.CustomSQL;
      end
      else
      begin
        for att in rtt.GetAttributes do
        begin
          if att is TableName then
          begin
            sql := 'SELECT * FROM ' + TableName(ATT).Name;
          end;
        end;

        for rtp in rtt.GetProperties do
        begin
          for att in rtp.GetAttributes do
          begin
            if att is FieldName then
            begin
              if (FieldName(att).PK) then
              begin
                where := where + Ifthen(Trim(where)='', '', ' AND ') + FieldName(att).Name + ' = ' + Self.GetValue(rtp, FieldName(att).FK);
              end;
            end;
          end;
        end;

        sql := sql + ' WHERE ' + where;
      end;

      qry := ConexaoSQL.ADOQuery(sql);
      try
        if (Assigned(qry)) and (qry.RecordCount > 0) then
        begin
          qry.First;

          while not qry.Eof do
          begin
            for rtp in rtt.GetProperties do
            begin
              for att in rtp.GetAttributes do
              begin
                if att is FieldName then
                  begin
                  if Assigned(qry.FindField(FieldName(att).Name)) then
                  begin
                    Self.SetValue(rtp, qry.FieldByName(FieldName(att).Name).Value);
                  end;
                end;
              end;
            end;

            qry.Next;
          end;
        end
        else
        begin
          Result := False;
        end;
      finally
        if Assigned(qry) then
        begin
          qry.Close;
          FreeAndNil(qry);
        end;
      end;
    finally
      Self.CustomSQL := '';
      ctx.Free;
    end;
  except
    raise;
  end;
end;

procedure TPersistentObject.SetValue(P: TRttiProperty; S: Variant);
var
  V: TValue;
  w: Word;
begin
  w := VarType(S);

  case w of
    271: v := StrToFloat(S); {smallmoney}
    272: v := StrToDateTime(S); {smalldatetime}
    3:   v := StrToInt(S);
    else
    begin
      P.SetValue(Self, TValue.FromVariant(S));
      exit;
    end;
  end;

  P.SetValue(Self, v)
end;

function TPersistentObject.Update: Boolean;
var
  ctx: TRttiContext;
  rtt: TRttiType;
  rtp: TRttiProperty;
  att: TCustomAttribute;
  sql, field, where, error: String;
begin
  Result := False;
  sql := '';
  field := '';
  where := '';
  error := '';
  field := '';

  ctx := TRttiContext.Create;
  try
    ConexaoSQL.BeginTransaction;
    try
      if not Trim(Self.CustomSQL).Equals('') then
      begin
        sql := Self.CustomSQL;
      end
      else
      begin
        rtt := ctx.GetType(ClassType);

        for att in rtt.GetAttributes do
        begin
          if att is TableName then
          begin
            sql := 'UPDATE ' + TableName(att).Name + ' SET';
          end;
        end;

        for rtp in rtt.GetProperties do
        begin
          for att in rtp.GetAttributes do
          begin
            if att is FieldName then
            begin
              if (not (FieldName(att).AutoInc)) and (not (FieldName(att).PK) and (not Self.GetValue(rtp, FieldName(att).FK).Equals(''))) then
              begin
                field := field + FieldName(att).Name + ' = ' + Self.GetValue(rtp, FieldName(att).FK) + ',';
              end
              else
              begin
                if (FieldName(att).PK) then
                begin
                  if Self.GetValue(rtp, FieldName(att).FK).Equals('') then
                  begin
                    raise Exception.Create('Erro: O valor para a PK não foi informado.');
                  end
                  else
                  begin
                    where := where + Ifthen(Trim(where)='','',' AND ') + FieldName(att).Name + ' = ' + Self.GetValue(rtp, FieldName(att).FK);
                  end;
                end;
              end;
            end;
          end;
        end;

        field := Copy(field, 1, Length(Field) - 1);

        sql := sql + ' ' + field + ' WHERE ' + where;
      end;

      Result := ConexaoSQL.ExecSQL(sql, error);

      if not Result then
      begin
        raise Exception.Create(error);
      end;
    finally
      Self.CustomSQL := '';
      ConexaoSQL.Commit;
      ctx.Free;
    end;
  except
    ConexaoSQL.RoolBack;
    raise;
  end;
end;

function TPersistentObject.SelectQuery: TADOQuery;
var
  ctx: TRttiContext;
  rtt: TRttiType;
  att: TCustomAttribute;
  sql: String;
begin
  Result := nil;
  sql := '';

  try
    ctx := TRttiContext.Create;
    try
      rtt := ctx.GetType(ClassType);

      if not Trim(Self.CustomSQL).Equals('') then
      begin
        sql := Self.CustomSQL;
      end
      else
      begin
        for att in rtt.GetAttributes do
        begin
          if att is TableName then
          begin
            sql := 'SELECT * FROM ' + TableName(ATT).Name;
          end;
        end;
      end;

      Result := ConexaoSQL.ADOQuery(sql);
    finally
      Self.CustomSQL := '';
      ctx.Free;
    end;
  except
    raise;
  end;
end;

end.
