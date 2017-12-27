
program Project2;

uses
  Vcl.Forms,
  Unit3 in 'Unit\Unit3.pas' {Form3} ,
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
TStyleManager.TrySetStyle('Obsidian');
  Application.Run;

end.
