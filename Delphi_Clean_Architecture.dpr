program Delphi_Clean_Architecture;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Delphi_Clean_Architecture.Dominio.Aluno in 'src\dominio\aluno\Delphi_Clean_Architecture.Dominio.Aluno.pas',
  Delphi_Clean_Architecture.Dominio.Aluno.AlunoNaoEncontrado in 'src\dominio\aluno\Delphi_Clean_Architecture.Dominio.Aluno.AlunoNaoEncontrado.pas',
  Delphi_Clean_Architecture.Dominio.Aluno.CPF in 'src\dominio\aluno\Delphi_Clean_Architecture.Dominio.Aluno.CPF.pas',
  Delphi_Clean_Architecture.Dominio.Aluno.Email in 'src\dominio\aluno\Delphi_Clean_Architecture.Dominio.Aluno.Email.pas',
  Delphi_Clean_Architecture.Dominio.Aluno.Telefone in 'src\dominio\aluno\Delphi_Clean_Architecture.Dominio.Aluno.Telefone.pas',
  Delphi_Clean_Architecture.Dominio.Aluno.CifradroDeSenha in 'src\dominio\aluno\Delphi_Clean_Architecture.Dominio.Aluno.CifradroDeSenha.pas',
  Delphi_Clean_Architecture.Dominio.Aluno.FabricaDeAluno in 'src\dominio\aluno\Delphi_Clean_Architecture.Dominio.Aluno.FabricaDeAluno.pas',
  Delphi_Clean_Architecture.Dominio.Aluno.RepositorioDeAlunos in 'src\dominio\aluno\Delphi_Clean_Architecture.Dominio.Aluno.RepositorioDeAlunos.pas',
  Delphi_Clean_Architecture.Dominio.Indicacao in 'src\dominio\indicacao\Delphi_Clean_Architecture.Dominio.Indicacao.pas',
  Delphi_Clean_Architecture.Aplicacao.Aluno.Matricular.MAtricularAluno in 'src\aplicacao\aluno\matricular\Delphi_Clean_Architecture.Aplicacao.Aluno.Matricular.MAtricularAluno.pas',
  Delphi_Clean_Architecture.Aplicacao.Aluno.Matricular.MAtricularAlunoDto in 'src\aplicacao\aluno\matricular\Delphi_Clean_Architecture.Aplicacao.Aluno.Matricular.MAtricularAlunoDto.pas',
  Delphi_Clean_Architecture.Aplicacao.Indicacao.EnviarEmailIndicacao in 'src\aplicacao\indicacao\Delphi_Clean_Architecture.Aplicacao.Indicacao.EnviarEmailIndicacao.pas',
  Delphi_Clean_Architecture.Infra.Aluno.CifradorDeSenhaComMD5 in 'src\infra\aluno\Delphi_Clean_Architecture.Infra.Aluno.CifradorDeSenhaComMD5.pas',
  Delphi_Clean_Architecture.Infra.Aluno.RepositorioDeAlunosComFiredac in 'src\infra\aluno\Delphi_Clean_Architecture.Infra.Aluno.RepositorioDeAlunosComFiredac.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
