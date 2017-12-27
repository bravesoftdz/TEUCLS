unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, WinInet, Winsock,
  URLMon, ShellApi, Vcl.Menus ;
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
    AboutTEUCLS1: TMenuItem;
    Source1: TMenuItem;
    procedure WebCLS1Click(Sender: TObject);
    procedure elegram1Click(Sender: TObject);
    // procedure About1Click(Sender: TObject);
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
    // procedure N1Click(Sender: TObject);
    procedure AboutTEUCLS1Click(Sender: TObject);
    procedure Source1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

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

  curso1 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20DESDE%20CERO/EN%20FORMATO%20DOC/01-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%201.rar';
  curso2 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20DESDE%20CERO/EN%20FORMATO%20DOC/02-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%202.rar';
  curso3 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20DESDE%20CERO/EN%20FORMATO%20DOC/03-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%203.rar';
  curso4 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20DESDE%20CERO/EN%20FORMATO%20DOC/04-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%204.rar';
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
  nombre1 =  'OLLY001.rar';
  nombre2 =  'OLLY002.rar';
  nombre3 =  'OLLY003.rar';
  nombre4 =  'OLLY004.rar';
  nombre5 =  'OLLY005.rar';
  nombre6 =  'OLLY006.rar';
  nombre7 =  'OLLY007.rar';
  nombre8 =  'OLLY008.rar';
  nombre9 =  'OLLY009.rar';
  nombre10 = 'OLLY010.rar';
  nombre11 = 'OLLY011.rar';
  nombre12 = 'OLLY012.rar';
  nombre13 = 'OLLY013.rar';
  nombre14 = 'OLLY014.rar';
  nombre15 = 'OLLY015.rar';
  nombre16 = 'OLLY016.rar';
  nombre17 = 'OLLY017.rar';
  nombre18 = 'OLLY018.rar';
  nombre19 = 'OLLY019.rar';
  nombre20 = 'OLLY020.rar';
  nombre21 = 'OLLY021.rar';
  nombre22 = 'OLLY022.rar';
  nombre23 = 'OLLY023 pass a.zip';
  nombre24 = 'OLLY024.rar';
  nombre25 = 'OLLY025.rar';
  nombre26 = 'OLLY026.rar';
  nombre27 = 'OLLY027.rar';
  nombre28 = 'OLLY028.rar';
  nombre29 = 'OLLY029.rar';
  nombre30 = 'OLLY030.rar';
  nombre31 = 'OLLY031.rar';
  nombre32 = 'OLLY032 pass a.zip';
  nombre33 = 'OLLY033.rar';
  nombre34 = 'OLLY034.rar';
  nombre35 = 'OLLY035.rar';
  nombre36 = 'OLLY036.rar';
  nombre37 = 'OLLY037.rar';
  nombre38 = 'OLLY038.rar';
  nombre39 = 'OLLY039 pass a.zip';
  nombre40 = 'OLLY040.rar';
  nombre41 = 'OLLY041.rar';
  nombre42 = 'OLLY042.rar';
  nombre43 = 'OLLY043.rar';
  nombre44 = 'OLLY044.rar';
  nombre45 = 'OLLY045.rar';
  nombre46 = 'OLLY046.rar';
  nombre47 = 'OLLY047.rar';
  nombre48 = 'OLLY048 pass a.zip';
  nombre49 = 'OLLY049.rar';
  nombre50 = 'OLLY050.rar';
  nombre51 = 'OLLY051.rar';
  nombre52 = 'OLLY052 pass a.zip';
  nombre53 = 'OLLY053.rar';
  nombre54 = 'OLLY054 pass a.7z';
  nombre55 = 'OLLY055.rar';
  nombre56 = 'OLLY056 pass a.zip';
  nombre57 = 'OLLY057 pass a.zip';
  nombre58 = 'OLLY058.rar';
  nombre59 = 'introduccion.pdf';
  nombre60 = 'OLLY055-57 Anexo.rar';

implementation

{$R *.dfm}

function HayInternet: Boolean;
var
  Estado: Cardinal;
begin
  Estado := INTERNET_CONNECTION_MODEM or INTERNET_CONNECTION_LAN or
    INTERNET_CONNECTION_PROXY;
  Result := InternetGetConnectedState(@Estado, 0);
end;

function DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile),
      0, nil) = 0;
  except
    Result := False;
  end;
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

procedure TForm3.Source1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://github.com/apuromafo/TEUCLS', nil, nil,
    SW_SHOWNORMAL);

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

procedure TForm3.FormCreate(Sender: TObject);
var
  hola: string;
begin
  hola := 'TEU Ricardo Narvaja Curso IDA desde Cero 27-12-17 v1.3';
  Form3.Caption := hola; // copia el string en caption del form
  Requerimientos.Lines.Insert(0, hola);
  // inserta en la linea 0 del requerimiento
end;

procedure TForm3.GoogleGroups1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://groups.google.com/group/CrackSLatinoS',
    nil, nil, SW_SHOWNORMAL);

end;

// Curso 1
procedure TForm3.AboutTEUCLS1Click(Sender: TObject);
begin
  ShowMessage('Creado con Fines Educativos , saludos Apuromafo');
  if HayInternet then
    ShowMessage('Estás Conectado a internet')
  else
    ShowMessage('Desconectado de internet');

end;

procedure TForm3.Button1Click(Sender: TObject);
var
  DestFile, SourceFile: string;
  compara: string;
  I2: Integer;
  prueba: string;
  Pressed: TCaption;

const
  // curso array guarda los array de los strings
  CursoArray: TArray<String> = [curso1, curso2, curso3, curso4, curso5, curso6,
    curso7, curso8, curso9, curso10, curso11, curso12, curso13, curso14,
    curso15, curso16, curso17, curso18, curso19, curso20, curso21, curso22,
    curso23, curso24, curso25, curso26, curso27, curso28, curso29, curso30,
    curso31, curso32, curso33, curso34, curso35, curso36, curso37, curso38,
    curso39, curso40, curso41, curso42, curso43, curso44, curso45, curso46,
    curso47, curso48, curso49, curso50, curso51, curso52, curso53, curso54,
    curso55, curso56, curso57, curso58, curso59, curso60, curso61];
  NombreArray: TArray<String> = [nombre1, nombre2, nombre3, nombre4, nombre5,
    nombre6, nombre7, nombre8, nombre9, nombre10, nombre11, nombre12, nombre13,
    nombre14, nombre15, nombre16, nombre17, nombre18, nombre19, nombre20,
    nombre21, nombre22, nombre23, nombre24, nombre25, nombre26, nombre27,
    nombre28, nombre29, nombre30, nombre31, nombre32, nombre33, nombre34,
    nombre35, nombre36, nombre37, nombre38, nombre39, nombre40, nombre41,
    nombre42, nombre43, nombre44, nombre45, nombre46, nombre47, nombre48,
    nombre49, nombre50, nombre51, nombre52, nombre53, nombre54, nombre55,
    nombre56, nombre57, nombre58, nombre59, nombre60, nombre61];

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
  begin
    // rutina 1 guarda en compara el boton
    Pressed := (Sender as TButton).Caption;
    compara := Pressed;
    // rutina 2 copia de compara el numero y le asigna el valor de source y destino
    // segun el array de curso y nombre
    prueba := Copy(compara, 6, length(compara));
    I2 := strtoint(prueba) - 1;
    SourceFile := CursoArray[I2];
    DestFile := carpeta + NombreArray[I2];
    // rutina 2.5 verificacion de la existencia de "carpeta" donde ira el curso
    // testing: Jose Luis C.


    if not DirectoryExists(ExtractFilePath(Application.ExeName) + carpeta) then
    begin
      CreateDir(ExtractFilePath(Application.ExeName) + carpeta);
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
