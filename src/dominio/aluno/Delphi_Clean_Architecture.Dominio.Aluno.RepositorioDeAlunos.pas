unit Delphi_Clean_Architecture.Dominio.Aluno.RepositorioDeAlunos;

interface

uses
  Delphi_Clean_Architecture.Dominio.Aluno,
  Delphi_Clean_Architecture.Dominio.Aluno.CPF,
  System.Generics.Collections;

type
  iRepositorioDeAlunos = interface
    procedure Matricular(aAluno: TAluno);
    function BuscarPorCPF(aCpf: TCPF): TAluno;
    function ListarTodosAlunosMatriculados: TObjectList<TAluno>;
  end;

implementation

end.
