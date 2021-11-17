unit Delphi_Clean_Architecture.Dominio.Aluno;

interface

uses
  System.Generics.Collections,
  Delphi_Clean_Architecture.Dominio.Aluno.CPF,
  Delphi_Clean_Architecture.Dominio.Aluno.Telefone,
  Delphi_Clean_Architecture.Dominio.Aluno.Email;

type
  TAluno = class
  private
    FCPF: String;
    FTelefones: TList<TTelefone>;
    FNome: String;
    FEmail: String;
  public
    constructor Create(aCPF : TCPF; aNome : String; aEmail: TEmail);
    procedure AdicionarTelefone(DDD, Numero : String);
    property Cpf : String read FCPF write FCPF;
    property Nome : String read FNome write FNome;
    property Email : String read FEmail write FEmail;
    property Telefones : TList<TTelefone> read FTelefones write FTelefones;
  end;

implementation

{ TAluno }

procedure TAluno.AdicionarTelefone(DDD, Numero: String);
begin

end;

constructor TAluno.Create(aCPF : TCPF; aNome : String; aEmail: TEmail);
begin

end;

end.
