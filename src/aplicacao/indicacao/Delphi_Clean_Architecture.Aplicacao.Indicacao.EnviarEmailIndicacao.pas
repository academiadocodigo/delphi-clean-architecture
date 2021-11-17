unit Delphi_Clean_Architecture.Aplicacao.Indicacao.EnviarEmailIndicacao;

interface

uses
  Delphi_Clean_Architecture.Dominio.Aluno;

type
  iEnviarEmailIndicacao = interface
    procedure EnviarPara(aIndicado : TAluno);
  end;

implementation

end.
