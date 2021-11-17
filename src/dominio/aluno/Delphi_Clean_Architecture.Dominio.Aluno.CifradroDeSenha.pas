unit Delphi_Clean_Architecture.Dominio.Aluno.CifradroDeSenha;

interface

type
  iCrifradorDeSenha = interface
    function CifraSenha(aSenha : String) : String;
    function ValidarSenhaCifrada(aSenhaCifrada, aSenha: String) : Boolean;
  end;

implementation

end.
