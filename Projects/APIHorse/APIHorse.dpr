program APIHorse;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Model.ConexaoSQL in '..\..\Source\Model\Model.ConexaoSQL.pas',
  uAttribute in '..\..\Source\Objects\uAttribute.pas',
  uPersistentObject in '..\..\Source\Objects\uPersistentObject.pas',
  Model.Produto in '..\..\Source\Model\Model.Produto.pas',
  Controller.Produto in '..\..\Source\Controller\Controller.Produto.pas',
  Horse,
  Horse.Jhonson,
  JSON.Produto in '..\..\Source\JSON\JSON.Produto.pas';

begin
  Controller.Produto.Registry;

  THorse.Use(Jhonson);
  THorse.Listen(9000);
end.
