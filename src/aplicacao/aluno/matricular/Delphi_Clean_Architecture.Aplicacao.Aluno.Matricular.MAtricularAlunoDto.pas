unit Delphi_Clean_Architecture.Aplicacao.Aluno.Matricular.MAtricularAlunoDto;

interface

uses
  Delphi_Clean_Architecture.Dominio.Aluno;

type
  TMatricularAlunoDto = class
  private
    FNomeAluno : String;
    FCpfAluno : String;
    FEmailAluno : String;
  public
    constructor Create(aNomeAluno, aCpfAluno, aEmailAluno : String);
    destructor Destroy; override;
    function CriarAluno : TAluno;
  end;

implementation

uses
  Delphi_Clean_Architecture.Dominio.Aluno.CPF,
  Delphi_Clean_Architecture.Dominio.Aluno.Email;

{ TMatricularAlunoDto }

constructor TMatricularAlunoDto.Create(aNomeAluno, aCpfAluno,
  aEmailAluno: String);
begin
  FNomeAluno := aNomeAluno;
  FCpfAluno := aCpfAluno;
  FEmailAluno := aEmailAluno;
end;

function TMatricularAlunoDto.CriarAluno: TAluno;
begin
  Result := TAluno.Create(
          TCPF.Create(FCpfAluno),
          FNomeAluno,
          TEmail.Create(FEmailAluno));
end;

destructor TMatricularAlunoDto.Destroy;
begin

  inherited;
end;

end.
