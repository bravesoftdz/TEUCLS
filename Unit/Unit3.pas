unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  WinInet, Winsock, URLMon, ShellApi, Vcl.Menus;
// (getip las primeras 2 y download las siguientes)

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Menu1: TMenuItem;
    N1101: TMenuItem;
    N11201: TMenuItem;
    N21301: TMenuItem;
    N31401: TMenuItem;
    N41501: TMenuItem;
    N51xx1: TMenuItem;
    About1: TMenuItem;
    AboutWeb1: TMenuItem;
    elegram1: TMenuItem;
    WEBCLS1: TMenuItem;
    Requerimientos: TMemo;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    N61xx1: TMenuItem;
    Examenes1: TMenuItem;
    Prctica1: TMenuItem;
    EnIngls1: TMenuItem;
    GoogleGroups1: TMenuItem;
    procedure WebCLS1Click(Sender: TObject);
    procedure elegram1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure N1101Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N11201Click(Sender: TObject);
    procedure N21301Click(Sender: TObject);
    procedure N31401Click(Sender: TObject);
    procedure N41501Click(Sender: TObject);
    procedure N51xx1Click(Sender: TObject);
    procedure N61xx1Click(Sender: TObject);
    procedure Examenes1Click(Sender: TObject);
    procedure Prctica1Click(Sender: TObject);
    procedure EnIngls1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure GoogleGroups1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

resourcestring
  {
    formato para este caso
    nombre = 'link' ;
  }

  curso1 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/1-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%201.7z';
  curso2 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/2-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%202.7z';
  curso3 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/3-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%203.7z';
  curso4 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/4-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%204.7z';
  curso5 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/5-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%205.7z';
  curso6 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/6-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%206.7z';
  curso7 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/7-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%207.7z';
  curso8 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/8-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%208.7z';
  curso9 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/9-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%209.7z';
  curso10 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/10-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2010.7z';
  curso11 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/11-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2011.7z';
  curso12 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/12-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2012.7z';
  curso13 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/13-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2013.7z';
  curso14 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/14-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2014.7z';
  curso15 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/15-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2015.7z';
  curso16 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/16-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2016%20pass%20a.7z';
  curso17 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/17-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2017.7z';
  curso18 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/18-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2018.7z';
  curso19 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/19-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2019.7z';
  curso20 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/20-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2020.7z';
  curso21 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/21-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2021.7z';
  curso22 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/22-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2022.7z';
  curso23 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/23-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2023.7z';
  curso24 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/24-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2024.7z';
  curso25 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/25-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2025.7z';
  curso26 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/26-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2026.7z';
  curso27 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/27-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2027.7z';
  curso28 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/28-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2028.7z';
  curso29 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/29-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2029.7z';
  curso30 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/30-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2030.7z';
  curso31 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/31-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2031.7z';
  curso32 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/32-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2032.7z';
  curso33 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/33-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2033.7z';
  curso34 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/34-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2034.7z';
  curso35 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/35-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2035.7z';
  curso36 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/36-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2036.7z';
  curso37 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/37-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2037.7z';
  curso38 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/38-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2038.7z';
  curso39 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/39-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2039.7z';
  curso40 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/40-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2040.7z';
  curso41 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/41-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2041.7z';
  curso42 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/42-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2042.7z';
  curso43 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/43-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2043.7z';
  curso44 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/44-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2044.7z';
  curso45 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/45-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2045.7z';
  curso46 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/46-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2046.7z';
  curso47 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/47-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2047.rar';
  curso48 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/48-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2048.7z';
  curso49 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/49-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO_PARTE%2049.7z';
  curso50 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/50-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO_PARTE_50_KERNEL_pass%20a.7z';
  curso51 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/51-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2051_KERNEL.7z';
  curso52 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/52-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2052%20Pass%20a.7z';
  curso53 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/53-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2053.7z';
  curso54 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/54-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2054%20Pass%20a.7z';
  curso55 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/55-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2055%20Pass%20a.7z';
  curso56 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/56-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2056%20Pass%20a.7z';
  curso57 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/57-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2057%20Pass%20a.7z';
  curso58 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/58-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2058%20Pass%20a.7z';
  curso59 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/59-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2059%20Pass%20a.7z';
  curso60 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/60-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2060.7z';
  curso61 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/61-INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO%20PARTE%2061%20Pass%20a.7z';
  carpeta = 'Curso/';
  nombre1 = 'IDA001.7z';
  nombre2 = 'IDA002.7z';
  nombre3 = 'IDA003.7z';
  nombre4 = 'IDA004.7z';
  nombre5 = 'IDA005.7z';
  nombre6 = 'IDA006.7z';
  nombre7 = 'IDA007.7z';
  nombre8 = 'IDA008.7z';
  nombre9 = 'IDA009.7z';
  nombre10 = 'IDA010.7z';
  nombre11 = 'IDA011.7z';
  nombre12 = 'IDA012.7z';
  nombre13 = 'IDA013.7z';
  nombre14 = 'IDA014.7z';
  nombre15 = 'IDA015.7z';
  nombre16 = 'IDA016 pass a.7z';
  nombre17 = 'IDA017.7z';
  nombre18 = 'IDA018.7z';
  nombre19 = 'IDA019.7z';
  nombre20 = 'IDA020.7z';
  nombre21 = 'IDA021.7z';
  nombre22 = 'IDA022.7z';
  nombre23 = 'IDA023.7z';
  nombre24 = 'IDA024.7z';
  nombre25 = 'IDA025.7z';
  nombre26 = 'IDA026.7z';
  nombre27 = 'IDA027.7z';
  nombre28 = 'IDA028.7z';
  nombre29 = 'IDA029.7z';
  nombre30 = 'IDA030.7z';
  nombre31 = 'IDA031.7z';
  nombre32 = 'IDA032.7z';
  nombre33 = 'IDA033.7z';
  nombre34 = 'IDA034.7z';
  nombre35 = 'IDA035.7z';
  nombre36 = 'IDA036.7z';
  nombre37 = 'IDA037.7z';
  nombre38 = 'IDA038.7z';
  nombre39 = 'IDA039.7z';
  nombre40 = 'IDA040.7z';
  nombre41 = 'IDA041.7z';
  nombre42 = 'IDA042.7z';
  nombre43 = 'IDA043.7z';
  nombre44 = 'IDA044.7z';
  nombre45 = 'IDA045.7z';
  nombre46 = 'IDA046.7z';
  nombre47 = 'IDA047.rar';
  nombre48 = 'IDA048.7z';
  nombre49 = 'IDA049.7z';
  nombre50 = 'IDA050 pass a.7z';
  nombre51 = 'IDA051.7z';
  nombre52 = 'IDA052 pass a.7z';
  nombre53 = 'IDA053.7z';
  nombre54 = 'IDA054 pass a.7z';
  nombre55 = 'IDA055 pass a.7z';
  nombre56 = 'IDA056.pass a7z';
  nombre57 = 'IDA057 pass a.7z';
  nombre58 = 'IDA058 pass a.7z';
  nombre59 = 'IDA059 pass a.7z';
  nombre60 = 'IDA060.7z';
  nombre61 = 'IDA061 pass a.7z';

implementation

{$R *.dfm}

function DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile),
      0, nil) = 0;
  except
    Result := False;
  end;
end;

procedure TForm3.About1Click(Sender: TObject);

begin
  ShowMessage('Creado con Fines Educativos , saludos Apuromafo');
end;

// visibles del 1 al 10
procedure TForm3.N1101Click(Sender: TObject);
begin
  Button1.Caption := 'Curso 1';
  Button2.Caption := 'Curso 2';
  Button3.Caption := 'Curso 3';
  Button4.Caption := 'Curso 4';
  Button5.Caption := 'Curso 5';
  Button6.Caption := 'Curso 6';
  Button7.Caption := 'Curso 7';
  Button8.Caption := 'Curso 8';
  Button9.Caption := 'Curso 9';
  Button10.Caption := 'Curso 10';

end;

// visibles del 11 al 20
procedure TForm3.N11201Click(Sender: TObject);
begin
  Button1.Caption := 'Curso 11';
  Button2.Caption := 'Curso 12';
  Button3.Caption := 'Curso 13';
  Button4.Caption := 'Curso 14';
  Button5.Caption := 'Curso 15';
  Button6.Caption := 'Curso 16';
  Button7.Caption := 'Curso 17';
  Button8.Caption := 'Curso 18';
  Button9.Caption := 'Curso 19';
  Button10.Caption := 'Curso 20';
end;

// visibles del 21 al 30
procedure TForm3.N21301Click(Sender: TObject);
begin
  Button1.Caption := 'Curso 21';
  Button2.Caption := 'Curso 22';
  Button3.Caption := 'Curso 23';
  Button4.Caption := 'Curso 24';
  Button5.Caption := 'Curso 25';
  Button6.Caption := 'Curso 26';
  Button7.Caption := 'Curso 27';
  Button8.Caption := 'Curso 28';
  Button9.Caption := 'Curso 29';
  Button10.Caption := 'Curso 30';
end;

// visibles del 31 al 40
procedure TForm3.N31401Click(Sender: TObject);
begin
  Button1.Caption := 'Curso 31';
  Button2.Caption := 'Curso 32';
  Button3.Caption := 'Curso 33';
  Button4.Caption := 'Curso 34';
  Button5.Caption := 'Curso 35';
  Button6.Caption := 'Curso 36';
  Button7.Caption := 'Curso 37';
  Button8.Caption := 'Curso 38';
  Button9.Caption := 'Curso 39';
  Button10.Caption := 'Curso 40';
end;

// visibles del 41 al 50
procedure TForm3.N41501Click(Sender: TObject);
begin
  Button1.Caption := 'Curso 41';
  Button2.Caption := 'Curso 42';
  Button3.Caption := 'Curso 43';
  Button4.Caption := 'Curso 44';
  Button5.Caption := 'Curso 45';
  Button6.Caption := 'Curso 46';
  Button7.Caption := 'Curso 47';
  Button8.Caption := 'Curso 48';
  Button9.Caption := 'Curso 49';
  Button10.Caption := 'Curso 50';
end;

procedure TForm3.N51xx1Click(Sender: TObject);
begin
  Button1.Caption := 'Curso 51';
  Button2.Caption := 'Curso 52';
  Button3.Caption := 'Curso 53';
  Button4.Caption := 'Curso 54';
  Button5.Caption := 'Curso 55';
  Button6.Caption := 'Curso 56';
  Button7.Caption := 'Curso 57';
  Button8.Caption := 'Curso 58';
  Button9.Caption := 'Curso 59';
  Button10.Caption := 'Curso 60';

end;

procedure TForm3.N61xx1Click(Sender: TObject);
begin
  Button1.Caption := 'Curso 61';
  Button2.Caption := 'Curso 61';
  Button3.Caption := 'Curso 61';
  Button4.Caption := 'Curso 61';
  Button5.Caption := 'Curso 61';
  Button6.Caption := 'Curso 61';
  Button7.Caption := 'Curso 61';
  Button8.Caption := 'Curso 61';
  Button9.Caption := 'Curso 61';
  Button10.Caption := 'Curso 61';

end;

procedure TForm3.Prctica1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open',
    'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/EJERCICIOS/',
    nil, nil, SW_SHOWNORMAL);
end;

// visible del 51 al xx
procedure TForm3.WebCLS1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://www.ricardonarvaja.info', nil, nil,
    SW_SHOWNORMAL);
end;

procedure TForm3.elegram1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://t.me/crackslatinos', nil, nil,
    SW_SHOWNORMAL);
end;

procedure TForm3.EnIngls1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open',
    'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/EN%20INGLES/',
    nil, nil, SW_SHOWNORMAL);
end;

procedure TForm3.Examenes1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open',
    'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20REVERSING%20CON%20IDA%20PRO%20DESDE%20CERO/EXAMENES/',
    nil, nil, SW_SHOWNORMAL);
end;

procedure TForm3.Exit1Click(Sender: TObject);
begin
  self.Close;
  halt;
end;

procedure TForm3.GoogleGroups1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://groups.google.com/group/CrackSLatinoS',
    nil, nil, SW_SHOWNORMAL);

end;

// Curso 1
procedure TForm3.Button1Click(Sender: TObject);
var
  DestFile, SourceFile: string;
  compara: string;

begin
  { consta en 3 rutinas ,
    dado que cada boton llega a evento button1 click, entonces este se encarga de 
    comparar  en 3 rutinas
    
    rutina1:
    el boton que ha sido presionado
    compara a traves de un sender,
    esto es almacenado en la variable compara si el sender es boton1, 
    guarda el caption del boton1
    

    rutina2:
    compara el nombre del caption segun el boton presionado, este establece 2 datos
    el primero es el link de descarga(web de ricardo)
    y el segundo es el formato que trabaja (7z)
    
    rutina3:
    es la descarga con los datos anteriores (requiere internet)

  }

  if Sender = Button1 then
  begin
    compara := Button1.Caption
  end
  else if Sender = Button2 then
  begin
    compara := Button2.Caption
  end
  else if Sender = Button3 then
  begin
    compara := Button3.Caption
  end
  else if Sender = Button4 then
  begin
    compara := Button4.Caption
  end
  else if Sender = Button5 then
  begin
    compara := Button5.Caption
  end
  else if Sender = Button6 then
  begin
    compara := Button6.Caption
  end
  else if Sender = Button7 then
  begin
    compara := Button7.Caption
  end
  else if Sender = Button8 then
  begin
    compara := Button8.Caption
  end
  else if Sender = Button9 then
  begin
    compara := Button9.Caption
  end
  else if Sender = Button10 then
  begin
    compara := Button10.Caption
  end
  else

    // comienzo segunda rutina
    if compara = 'Curso 1' then
    begin
      SourceFile := curso1;
      DestFile := carpeta + nombre1;
    end;

  if compara = 'Curso 2' then
  begin
    ShowMessage('curso2');
    SourceFile := curso2;
    DestFile := carpeta + nombre2;
  end
  else if compara = 'Curso 3' then
  begin
    SourceFile := curso3;
    DestFile := carpeta + nombre3;
  end
  else if compara = 'Curso 4' then
  begin
    SourceFile := curso4;
    DestFile := carpeta + nombre4;
  end
  else if compara = 'Curso 5' then
  begin
    SourceFile := curso5;
    DestFile := carpeta + nombre5;
  end
  else if compara = 'Curso 6' then
  begin
    SourceFile := curso6;
    DestFile := carpeta + nombre6;
  end
  else if compara = 'Curso 7' then
  begin
    SourceFile := curso7;
    DestFile := carpeta + nombre7;
  end
  else if compara = 'Curso 8' then
  begin
    SourceFile := curso8;
    DestFile := carpeta + nombre8;
  end

  else if compara = 'Curso 9' then
  begin
    SourceFile := curso9;
    DestFile := carpeta + nombre9;
  end

  else if compara = 'Curso 10' then
  begin
    SourceFile := curso10;
    DestFile := carpeta + nombre10;
  end

  else if compara = 'Curso 11' then
  begin
    SourceFile := curso11;
    DestFile := carpeta + nombre11;
  end

  else if compara = 'Curso 12' then
  begin
    SourceFile := curso12;
    DestFile := carpeta + nombre12;
  end

  else if compara = 'Curso 13' then
  begin
    SourceFile := curso13;
    DestFile := carpeta + nombre13;
  end

  else if compara = 'Curso 14' then
  begin
    SourceFile := curso14;
    DestFile := carpeta + nombre14;
  end

  else if compara = 'Curso 15' then
  begin
    SourceFile := curso15;
    DestFile := carpeta + nombre15;
  end
  else if compara = 'Curso 16' then
  begin
    SourceFile := curso16;
    DestFile := carpeta + nombre16;
  end
  else if compara = 'Curso 17' then
  begin
    SourceFile := curso17;
    DestFile := carpeta + nombre17;
  end

  else if compara = 'Curso 18' then
  begin
    SourceFile := curso18;
    DestFile := carpeta + nombre18;
  end

  else if compara = 'Curso 19' then
  begin
    SourceFile := curso19;
    DestFile := carpeta + nombre19;
  end

  else if compara = 'Curso 20' then
  begin
    SourceFile := curso20;
    DestFile := carpeta + nombre20;
  end

  else if compara = 'Curso 21' then
  begin
    SourceFile := curso21;
    DestFile := carpeta + nombre21;
  end

  else if compara = 'Curso 22' then
  begin
    SourceFile := curso22;
    DestFile := carpeta + nombre22;
  end

  else if compara = 'Curso 23' then
  begin
    SourceFile := curso23;
    DestFile := carpeta + nombre23;
  end

  else if compara = 'Curso 24' then
  begin
    SourceFile := curso24;
    DestFile := carpeta + nombre24;
  end

  else if compara = 'Curso 25' then
  begin
    SourceFile := curso25;
    DestFile := carpeta + nombre25;
  end

  else if compara = 'Curso 26' then
  begin
    SourceFile := curso26;
    DestFile := carpeta + nombre26;
  end

  else if compara = 'Curso 27' then
  begin
    SourceFile := curso27;
    DestFile := carpeta + nombre27;
  end

  else if compara = 'Curso 28' then
  begin
    SourceFile := curso28;
    DestFile := carpeta + nombre28;
  end

  else if compara = 'Curso 29' then
  begin
    SourceFile := curso29;
    DestFile := carpeta + nombre29;
  end

  else if compara = 'Curso 30' then
  begin
    SourceFile := curso30;
    DestFile := carpeta + nombre30;
  end

  else if compara = 'Curso 31' then
  begin
    SourceFile := curso31;
    DestFile := carpeta + nombre31;
  end

  else if compara = 'Curso 32' then
  begin
    SourceFile := curso32;
    DestFile := carpeta + nombre32;
  end

  else if compara = 'Curso 33' then
  begin
    SourceFile := curso33;
    DestFile := carpeta + nombre33;
  end

  else if compara = 'Curso 34' then
  begin
    SourceFile := curso34;
    DestFile := carpeta + nombre34;
  end

  else if compara = 'Curso 35' then
  begin
    SourceFile := curso35;
    DestFile := carpeta + nombre35;
  end

  else if compara = 'Curso 36' then
  begin
    SourceFile := curso36;
    DestFile := carpeta + nombre36;
  end

  else if compara = 'Curso 37' then
  begin
    SourceFile := curso37;
    DestFile := carpeta + nombre37;
  end

  else if compara = 'Curso 38' then
  begin
    SourceFile := curso38;
    DestFile := carpeta + nombre38;
  end

  else if compara = 'Curso 39' then
  begin
    SourceFile := curso39;
    DestFile := carpeta + nombre39;
  end

  else if compara = 'Curso 40' then
  begin
    SourceFile := curso40;
    DestFile := carpeta + nombre40;
  end

  else if compara = 'Curso 41' then
  begin
    SourceFile := curso41;
    DestFile := carpeta + nombre41;
  end

  else if compara = 'Curso 42' then
  begin
    SourceFile := curso42;
    DestFile := carpeta + nombre42;
  end

  else if compara = 'Curso 43' then
  begin
    SourceFile := curso43;
    DestFile := carpeta + nombre43;
  end

  else if compara = 'Curso 44' then
  begin
    SourceFile := curso44;
    DestFile := carpeta + nombre44;
  end

  else if compara = 'Curso 45' then
  begin
    SourceFile := curso45;
    DestFile := carpeta + nombre45;
  end

  else if compara = 'Curso 46' then
  begin
    SourceFile := curso46;
    DestFile := carpeta + nombre46;
  end

  else if compara = 'Curso 47' then
  begin
    SourceFile := curso47;
    DestFile := carpeta + nombre47;
  end

  else if compara = 'Curso 48' then
  begin
    SourceFile := curso48;
    DestFile := carpeta + nombre48;
  end

  else if compara = 'Curso 49' then
  begin
    SourceFile := curso49;
    DestFile := carpeta + nombre49;
  end

  else if compara = 'Curso 50' then
  begin
    SourceFile := curso50;
    DestFile := carpeta + nombre50;
  end

  else if compara = 'Curso 51' then
  begin
    SourceFile := curso51;
    DestFile := carpeta + nombre51;
  end

  else if compara = 'Curso 52' then
  begin
    SourceFile := curso52;
    DestFile := carpeta + nombre52;
  end

  else if compara = 'Curso 53' then
  begin
    SourceFile := curso53;
    DestFile := carpeta + nombre53;
  end

  else if compara = 'Curso 54' then
  begin
    SourceFile := curso54;
    DestFile := carpeta + nombre54;
  end

  else if compara = 'Curso 55' then
  begin
    SourceFile := curso55;
    DestFile := carpeta + nombre55;
  end

  else if compara = 'Curso 56' then
  begin
    SourceFile := curso56;
    DestFile := carpeta + nombre56;
  end
  else if compara = 'Curso 57' then
  begin
    SourceFile := curso57;
    DestFile := carpeta + nombre57;
  end
  else if compara = 'Curso 58' then
  begin
    SourceFile := curso58;
    DestFile := carpeta + nombre58;
  end
  else if compara = 'Curso 59' then
  begin
    SourceFile := curso59;
    DestFile := carpeta + nombre59;
  end
  else if compara = 'Curso 60' then
  begin
    SourceFile := curso60;
    DestFile := carpeta + nombre60;
  end
  else if compara = 'Curso 61' then
  begin
    SourceFile := curso61;
    DestFile := carpeta + nombre61;
  end;
  // rutina 3 la descarga.

  if DownloadFile(SourceFile, DestFile) then
  begin

    ShowMessage('Download ok!');
    ShellExecute(Application.Handle, PChar('open'),
      PChar(ExtractFilePath(Application.ExeName) + DestFile), PChar(''),
      PChar(nil), SW_NORMAL)
  end
  else
    ShowMessage('Error in this web http:// ' + SourceFile)

end;

{ ejemplo del boton de forma individual

  procedure TForm3.Button3Click(Sender: TObject);
  var
  DestFile, SourceFile: string;

  begin
  SourceFile := curso3;
  DestFile := carpeta + nombre3;

  if DownloadFile(SourceFile, DestFile) then
  begin

  ShowMessage('Download ok!');
  ShellExecute(Application.Handle, PChar('open'),
  PChar(ExtractFilePath(Application.ExeName) + DestFile), PChar(''),
  PChar(nil), SW_NORMAL)
  end
  else
  ShowMessage('Error in this web http:// ' + SourceFile)

  end;
}
end.
