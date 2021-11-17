unit Delphi_Clean_Architecture.Aplicacao.Aluno.Matricular.MAtricularAluno;

interface

uses
  Delphi_Clean_Architecture.Dominio.Aluno.RepositorioDeAlunos,
  Delphi_Clean_Architecture.Aplicacao.Aluno.Matricular.MAtricularAlunoDto;

type
  TMatricularAluno = class
  private
    FRepositorio : iRepositorioDeAlunos;
  public
    constructor Create(aRepostirorio : iRepositorioDeAlunos);
    destructor Destroy; override;
    procedure Executa(aDados : TMatricularAlunoDto);
  end;

implementation

uses
  Delphi_Clean_Architecture.Dominio.Aluno;

{ TMatricularAluno }

constructor TMatricularAluno.Create(aRepostirorio: iRepositorioDeAlunos);
begin
  FRepositorio := aRepostirorio;
end;

destructor TMatricularAluno.Destroy;
begin

  inherited;
end;

procedure TMatricularAluno.Executa(aDados: TMatricularAlunoDto);
var
  lNovo : TAluno;
begin
  lNovo := aDados.CriarAluno;
  FRepositorio.matricular(lNovo);
end;

end.
