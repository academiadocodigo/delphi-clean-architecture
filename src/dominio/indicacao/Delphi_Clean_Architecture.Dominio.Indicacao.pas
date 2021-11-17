unit Delphi_Clean_Architecture.Dominio.Indicacao;

interface

uses
  Delphi_Clean_Architecture.Dominio.Aluno,
  System.SysUtils;

type
  TIndicacao = class
  private
    FIndicante: TAluno;
    FIndicado: TAluno;
    FDataIndicacao: TDateTime;
    procedure SetDataIndicacao(const Value: TDateTime);
    procedure SetIndicado(const Value: TAluno);
    procedure SetIndicante(const Value: TAluno);
  public
    constructor Create(aIndicado, aIndicante: TAluno);
    destructor Destroy; override;
    property Indicado: TAluno read FIndicado write SetIndicado;
    property Indicante: TAluno read FIndicante write SetIndicante;
    property DataIndicacao: TDateTime read FDataIndicacao
      write SetDataIndicacao;
  end;

implementation

{ TIndicacao }

constructor TIndicacao.Create(aIndicado, aIndicante: TAluno);
begin
  FIndicado := aIndicado;
  FIndicante := aIndicante;
  FDataIndicacao := now;
end;

destructor TIndicacao.Destroy;
begin

  inherited;
end;

procedure TIndicacao.SetDataIndicacao(const Value: TDateTime);
begin
  FDataIndicacao := Value;
end;

procedure TIndicacao.SetIndicado(const Value: TAluno);
begin
  FIndicado := Value;
end;

procedure TIndicacao.SetIndicante(const Value: TAluno);
begin
  FIndicante := Value;
end;

end.
