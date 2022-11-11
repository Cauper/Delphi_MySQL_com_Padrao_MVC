program Pedido;

uses
  Vcl.Forms,
  Pedido.View.Principal in 'View\Pedido.View.Principal.pas' {frmPrincipal},
  Pedido.Model.Dados in 'Model\Pedido.Model.Dados.pas' {Dados: TDataModule},
  Pedido.Controller.Pedido in 'Controller\Pedido.Controller.Pedido.pas',
  Pedido.Controller.ItemPedido in 'Controller\Pedido.Controller.ItemPedido.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDados, Dados);
  Application.Run;
end.
