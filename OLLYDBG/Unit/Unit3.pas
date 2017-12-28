unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, WinInet, Winsock,
  URLMon, ShellApi, Vcl.Menus;
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
    Examenes1: TMenuItem;
    Prctica1: TMenuItem;
    EnIngls1: TMenuItem;
    GoogleGroups1: TMenuItem;
    AboutTEUCLS1: TMenuItem;
    Source1: TMenuItem;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Button11: TButton;
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

    procedure Examenes1Click(Sender: TObject);
    procedure Prctica1Click(Sender: TObject);
    procedure EnIngls1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure GoogleGroups1Click(Sender: TObject);
    // procedure N1Click(Sender: TObject);
    procedure AboutTEUCLS1Click(Sender: TObject);
    procedure Source1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button11Click(Sender: TObject);

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

  web = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20DESDE%20CERO/EN%20FORMATO%20DOC/';
  web2 = 'http://ricardonarvaja.info/WEB/INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20DESDE%20CERO/';
  curso1 = '01-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%201.rar';
  curso2 = '02-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%202.rar';
  curso3 = '03-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%203.rar';
  curso4 = '04-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%204.rar';
  curso5 = '05-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%205.rar';
  curso6 = '06-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%206.rar';
  curso7 = '07-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%207.rar';
  curso8 = '08-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%208.rar';
  curso9 = '09-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%209.rar';
  curso10 = '10-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2010.rar';
  curso11 = '11-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2011.rar';
  curso12 = '12-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2012.rar';
  curso13 = '13-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2013.rar';
  curso14 = '14-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2014.rar';
  curso15 = '15-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2015.rar';
  curso16 = '16-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2016.rar';
  curso17 = '17-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2017.rar';
  curso18 = '18-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2018.rar';
  curso19 = '19-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2019.rar';
  curso20 = '20-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2020.rar';
  curso21 = '21-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2021.rar';
  curso22 = '22-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2022.rar';
  curso23 = '23-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2023%20(packers%20detectados%20como%20malware%20para%20practicar%20reversing%20no%20abrir%20sin%20conocimiento)pass%20a.zip';
  curso24 = '23-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2023%20(packers%20detectados%20como%20malware%20para%20practicar%20reversing%20no%20abrir%20sin%20conocimiento)pass%20a.zip';
  curso25 = '25-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2025.rar';
  curso26 = '26-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2026.rar';
  curso27 = '27-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2027.rar';
  curso28 = '28-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2028.rar';
  curso29 = '29-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2029.rar';
  curso30 = '30-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2030.rar';
  curso31 = '31-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2031.rar';
  curso32 = '32-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2032%20(packers%20detectados%20como%20malware%20para%20practicar%20reversing%20no%20abrir%20sin%20conocimiento)pass%20a.zip';
  curso33 = '33-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2033.rar';
  curso34 = '34-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2034.rar';
  curso35 = '35-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2035.rar';
  curso36 = '36-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2036.rar';
  curso37 = '37-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2037.rar';
  curso38 = '38-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2038.rar';
  curso39 = '39-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2039%20(packers%20detectados%20como%20malware%20para%20practicar%20reversing%20no%20abrir%20sin%20conocimiento)%20pass%20a.zip';
  curso40 = '40-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2040.rar';
  curso41 = '41-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2041.rar';
  curso42 = '42-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2042.rar';
  curso43 = '43-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2043.rar';
  curso44 = '44-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2044.rar';
  curso45 = '45-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2045.rar';
  curso46 = '46-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2046.rar';
  curso47 = '47-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2047.rar';
  curso48 = '48-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2048%20(packers%20detectados%20como%20malware%20para%20practicar%20reversing%20no%20abrir%20sin%20conocimiento)pass%20a.zip';
  curso49 = '49-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2049.rar';
  curso50 = '50-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2050.rar';
  curso51 = '51-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2051.rar';
  curso52 = '52-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2052%20(packers%20detectados%20como%20malware%20para%20practicar%20reversing%20no%20abrir%20sin%20conocimiento)%20pass%20a.zip';
  curso53 = '53-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2053.rar';
  curso54 = '54-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2054%20(ejercicios%20detectados%20como%20malware%20solo%20abrir%20con%20concimiento%20y%20para%20practicar).7z';
  curso55 = '55-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2055.rar';
  curso56 = '56-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20%20PARTE%2056%20(packers%20detectados%20como%20malware%20para%20practicar%20reversing%20no%20abrir%20sin%20conocimiento)pass%20a.zip';
  curso57 = '57-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2057%20(packers%20detectados%20como%20malware%20para%20practicar%20reversing%20no%20abrir%20sin%20conocimiento)%20pass%20a.zip';
  curso58 = '58-INTRODUCCION%20AL%20CRACKING%20CON%20OLLYDBG%20PARTE%2058.rar';
  // indice
  curso59 = 'Indice%20de%20%27intro%20con%20olly%27.pdf';
  // anexo
  curso60 = 'PARTES%2055-57%20-Anexo.rar';

  carpeta = 'Curso/';
  nombre1 = 'OLLY001.rar';
  nombre2 = 'OLLY002.rar';
  nombre3 = 'OLLY003.rar';
  nombre4 = 'OLLY004.rar';
  nombre5 = 'OLLY005.rar';
  nombre6 = 'OLLY006.rar';
  nombre7 = 'OLLY007.rar';
  nombre8 = 'OLLY008.rar';
  nombre9 = 'OLLY009.rar';
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
  nombre59 = 'INDICE.pdf';
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
  Button9.visible := True;
  Button10.visible := True;
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
  Button9.visible := True;
  Button10.visible := True;
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
  Button9.visible := True;
  Button10.visible := True;
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
  Button9.visible := True;
  Button10.visible := True;
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
  Button9.visible := True;
  Button10.visible := True;
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
  Button9.visible := False;
  Button10.visible := False;

  Button9.Caption := 'Curso 58';
  Button10.Caption := 'Curso 58';

end;

procedure TForm3.Prctica1Click(Sender: TObject);

var
  DestFile, SourceFile: string;

begin
  SourceFile := web+curso60;
  DestFile := carpeta + nombre60;

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

procedure TForm3.Source1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://github.com/apuromafo/TEUCLS', nil, nil,
    SW_SHOWNORMAL);
  Label2.Caption := 'Abriendo sitio web...';
end;

// visible del 51 al xx
procedure TForm3.WebCLS1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://www.ricardonarvaja.info', nil, nil,
    SW_SHOWNORMAL);
  Label2.Caption := 'Abriendo sitio web...';
end;

procedure TForm3.elegram1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://t.me/crackslatinos', nil, nil,
    SW_SHOWNORMAL);
  Label2.Caption := 'Abriendo sitio web...';
end;

procedure TForm3.EnIngls1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar(web2), nil, nil, SW_SHOWNORMAL);
  Label2.Caption := 'Abriendo sitio web...';
end;

procedure TForm3.Examenes1Click(Sender: TObject);

var
  DestFile, SourceFile: string;

begin
  SourceFile := web + curso59;
  DestFile := carpeta + nombre59;

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

procedure TForm3.Exit1Click(Sender: TObject);
begin
  self.Close;
  halt;
end;

procedure TForm3.FormCreate(Sender: TObject);
var
  hola: string;
begin
  hola := 'TEU Ricardo Narvaja Curso Ollydbg desde Cero 27-12-17 v1.4';
  Form3.Caption := hola; // copia el string en caption del form
  Requerimientos.Lines.Insert(0, hola);
  // inserta en la linea 0 del requerimiento
end;

procedure TForm3.GoogleGroups1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://groups.google.com/group/CrackSLatinoS',
    nil, nil, SW_SHOWNORMAL);
  Label2.Caption := 'Abriendo sitio web...';
end;

// Curso 1
procedure TForm3.AboutTEUCLS1Click(Sender: TObject);
begin
  ShowMessage('Creado con Fines Educativos , saludos Apuromafo');
  if HayInternet then
  begin
    ShowMessage('Estás Conectado a internet');
    Label2.Caption := 'Estás Conectado a internet';
  end
  else
    ShowMessage('Desconectado de internet');
  Label2.Caption := 'Desconectado de internet';

end;

procedure TForm3.Button11Click(Sender: TObject);

begin
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + carpeta) then
  begin
    CreateDir(ExtractFilePath(Application.ExeName) + carpeta);
    Label2.Caption := 'creada Carpeta Curso';
  end;

  Label2.Caption := 'Abriendo la carpeta contenedora...';
  ShellExecute(Application.Handle, PChar('open'),
    PChar(ExtractFilePath(Application.ExeName) + carpeta), PChar(''),
    PChar(nil), SW_NORMAL);

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
    curso55, curso56, curso57, curso58, curso59, curso60];
  NombreArray: TArray<String> = [nombre1, nombre2, nombre3, nombre4, nombre5,
    nombre6, nombre7, nombre8, nombre9, nombre10, nombre11, nombre12, nombre13,
    nombre14, nombre15, nombre16, nombre17, nombre18, nombre19, nombre20,
    nombre21, nombre22, nombre23, nombre24, nombre25, nombre26, nombre27,
    nombre28, nombre29, nombre30, nombre31, nombre32, nombre33, nombre34,
    nombre35, nombre36, nombre37, nombre38, nombre39, nombre40, nombre41,
    nombre42, nombre43, nombre44, nombre45, nombre46, nombre47, nombre48,
    nombre49, nombre50, nombre51, nombre52, nombre53, nombre54, nombre55,
    nombre56, nombre57, nombre58, nombre59, nombre60];

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
    Label2.Caption := 'Bajando el curso' + prueba;
    I2 := strtoint(prueba) - 1;
    SourceFile := web + CursoArray[I2];
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
      If CheckBox1.Checked then
      begin
        ShowMessage('Download ok!');
      end;
      Label2.Caption := 'descargado!';

      If CheckBox2.Checked then
      begin
        Label2.Caption := 'Abriendo archivo...';
        ShellExecute(Application.Handle, PChar('open'),
          PChar(ExtractFilePath(Application.ExeName) + DestFile), PChar(''),
          PChar(nil), SW_NORMAL)
      end;
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
