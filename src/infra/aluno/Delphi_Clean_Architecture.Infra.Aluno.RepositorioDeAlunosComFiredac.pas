unit Delphi_Clean_Architecture.Infra.Aluno.RepositorioDeAlunosComFiredac;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Delphi_Clean_Architecture.Dominio.Aluno.RepositorioDeAlunos,
  Delphi_Clean_Architecture.Dominio.Aluno,
  Delphi_Clean_Architecture.Dominio.Aluno.CPF,
  System.Generics.Collections;

type
  TRepositorioDeAlunos = class(TInterfacedObject, iRepositorioDeAlunos)
  private
    FConnection : TFDConnection;
    FQuery : TFDQuery;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iRepositorioDeAlunos;
    procedure Matricular(aAluno: TAluno);
    function BuscarPorCPF(aCpf: TCPF): TAluno;
    function ListarTodosAlunosMatriculados: TObjectList<TAluno>;
  end;

implementation

function TRepositorioDeAlunos.BuscarPorCPF(aCpf: TCPF): TAluno;
begin

end;

constructor TRepositorioDeAlunos.Create;
begin
  FConnection := TFDConnection.Create(nil);
  FQuery := TFDQuery.Create(nil);
end;

destructor TRepositorioDeAlunos.Destroy;
begin
  FConnection.DisposeOf;
  FQuery.DisposeOf;
  inherited;
end;

function TRepositorioDeAlunos.ListarTodosAlunosMatriculados
  : TObjectList<TAluno>;
begin

end;

procedure TRepositorioDeAlunos.Matricular(aAluno: TAluno);
var
  I: Integer;
begin
  FQuery.SQL.Clear;
  FQuery.SQL.Add('insert into aluno values (?,?,?)');
  FQuery.Params[0].Value := aAluno.Cpf;
  FQuery.Params[1].Value := aAluno.Nome;
  FQuery.Params[2].Value := aAluno.Email;
  FQuery.ExecSQL;

  FQuery.SQL.Clear;
  FQuery.SQL.Add('insert into telefone values (?,?)');
  for I := 0 to Pred(aAluno.Telefones.Count) do
  begin
    FQuery.Params[0].Value := aAluno.Telefones[I].DDD;
    FQuery.Params[1].Value := aAluno.Telefones[I].Numero;
    FQuery.ExecSQL;
  end;
end;

class function TRepositorioDeAlunos.New: iRepositorioDeAlunos;
begin
  Result := Self.Create;
end;

end.
