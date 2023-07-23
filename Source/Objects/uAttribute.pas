unit uAttribute;

interface

type
  TableName = class(TCustomAttribute)
  private
    FName: string;
  public
    property Name: string read FName write FName;

    constructor Create(const aValue: string);
  end;

  FieldName = class(TCustomAttribute)
  private
    FName: string;
    FFK: Boolean;
    FAutoInc: Boolean;
    FPK: Boolean;
  public
    property Name: string read FName write FName;
    property PK: Boolean read FPK write FPK;
    property AutoInc: Boolean read FAutoInc write FAutoInc;
    property FK: Boolean read FFK write FFK;

    constructor Create(aValue: string; const aPK: Boolean = False; const aAutoInc: Boolean = False; const aFK: Boolean = False);
  end;

implementation

{ TableName }

constructor TableName.Create(const aValue: string);
begin
  Self.FName := aValue;
end;

{ FieldName }

constructor FieldName.Create(aValue: string; const aPK, aAutoInc, aFK: Boolean);
begin
  Self.FName := aValue;
  Self.FPK := aPK;
  Self.FAutoInc := aAutoInc;
  Self.FFK := aFK;
end;

end.
