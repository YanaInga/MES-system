unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.Samples.Spin, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Grids, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series,
  VCLTee.GanttCh, VCLTee.TeeProcs, VCLTee.Chart, System.Generics.Collections, FileCtrl;

type
 TData = class
   public
    key : integer;
    data : String;
    constructor Create(key : integer); overload;
    constructor Create(key : integer; data : String); overload;
  end;
  TDraw = class
    public
    key : integer;
    color : TColor;
    constructor Create(key : integer);
  end;
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    Label4: TLabel;
    SpinEdit2: TSpinEdit;
    ImageList1: TImageList;
    Button1: TButton;
    SourcePanel: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    SourceGrid: TStringGrid;
    OpenDialog1: TOpenDialog;
    N2: TMenuItem;
    N3: TMenuItem;
    CalculationPanel: TPanel;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    Grid1: TStringGrid;
    N4: TMenuItem;
    Panel1: TPanel;
    Label5: TLabel;
    Panel4: TPanel;
    Label6: TLabel;
    Grid2: TStringGrid;
    Panel5: TPanel;
    Label7: TLabel;
    Panel6: TPanel;
    Label8: TLabel;
    Grid3: TStringGrid;
    Splitter1: TSplitter;
    Panel7: TPanel;
    Splitter2: TSplitter;
    Memo1: TMemo;
    Panel8: TPanel;
    Splitter3: TSplitter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label9: TLabel;
    Panel9: TPanel;
    Label10: TLabel;
    Grid2_2: TStringGrid;
    Panel10: TPanel;
    Label11: TLabel;
    Grid3_2: TStringGrid;
    Splitter4: TSplitter;
    TabSheet3: TTabSheet;
    Label12: TLabel;
    Panel11: TPanel;
    Label13: TLabel;
    Grid2_3: TStringGrid;
    Panel12: TPanel;
    Label14: TLabel;
    Grid3_3: TStringGrid;
    Splitter5: TSplitter;
    Label15: TLabel;
    SpinEdit3: TSpinEdit;
    Label16: TLabel;
    SpinEdit4: TSpinEdit;
    N5: TMenuItem;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Label17: TLabel;
    StringGrid1: TStringGrid;
    Label18: TLabel;
    StringGrid2: TStringGrid;
    Label19: TLabel;
    StringGrid3: TStringGrid;
    Label20: TLabel;
    StringGrid4: TStringGrid;
    ScrollBox1: TScrollBox;
    Label21: TLabel;
    StringGrid5: TStringGrid;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    Splitter6: TSplitter;
    TabSheet5: TTabSheet;
    Panel19: TPanel;
    Chart1: TChart;
    Series1: TGanttSeries;
    ComboBox3: TComboBox;
    Label22: TLabel;
    N6: TMenuItem;
    N7: TMenuItem;
    procedure ComboBox2Change(Sender: TObject);
    procedure VisabilityToolBar(Visible: bool);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure petrov();
    procedure generateP();
    procedure generateJ();
    procedure johnson();
    procedure sort(queue: integer; Grid2: TStringGrid);
    procedure sortO(var O: TList; typeO: Integer);
    procedure sortO3(var O: TList);
    function findbest(O: TList) : Integer;
    procedure drawJohnson(O: TList);
    procedure drawPetrov(Grid: TStringGrid);
    procedure CalculateFinishTime(queue: integer; Grid2: TStringGrid; Grid3: TStringGrid);
    procedure TabSheet5Show(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    procedure CalculateSum1Sum2Difference();
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;
  a: array of TData;
  drawJ : array of TGanttSeries;
  drawP : array of TGanttSeries;
  stankiWork: array of Integer;
  b: array of TDraw;
  oi, o1, o2, o3, o4, o5 : TList;
implementation

{$R *.dfm}
constructor TDraw.Create(key : integer);
begin
  self.key := key;
  self.color := RGB(Random(255),Random(255),Random(255));
end;
constructor TData.Create(key: Integer);
begin
  self.key := key;
  data := '';
end;
constructor TData.Create(key : Integer; data : String);
begin
  self.key := key;
  self.data := data;
end;
procedure TForm1.BitBtn1Click(Sender: TObject);
begin
SourcePanel.Visible := False;
 Splitter2.Visible := False;
 CalculationPanel.Align := alClient;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
CalculationPanel.Visible := False;
 Splitter2.Visible := False;
end;

procedure TForm1.Button1Click(Sender: TObject);
var data_name, data: String;
f : TextFile;
detail_index: integer;
sum, int: integer;
i, j : integer;
splitted: TArray<String>;
begin
  detail_index := 0;
if openDialog1.Execute then begin
    data_name := openDialog1.FileName;
    AssignFile(f, data_name);
    Reset(f);
    while (not EOF(f)) do begin
    Readln(f, data);
    splitted := data.Split([';']);
     if detail_index = 0 then begin
      if ComboBox1.ItemIndex = 0 then
      SourceGrid.RowCount := splitted[0].ToInteger + 1
      else SourceGrid.RowCount := splitted[0].ToInteger + 2;
      SourceGrid.ColCount := splitted[1].ToInteger + 1;
      for i := 1 to SourceGrid.RowCount do begin
       if ComboBox1.ItemIndex = 0 then
       SourceGrid.Cells[0, i] := 'Деталь ' + i.ToString
       else begin
       if i <> SourceGrid.RowCount - 1 then
       SourceGrid.Cells[0, i] := 'Станок ' + i.ToString
       else SourceGrid.Cells[0, i] := 'Cумма';
       end;
      end;
       for i := 1 to SourceGrid.ColCount do
       if ComboBox1.ItemIndex = 0 then
       SourceGrid.Cells[i, 0] := 'Станок ' + i.ToString
       else
        SourceGrid.Cells[i, 0] := 'Деталь ' + i.ToString;
     end else begin
     if ComboBox1.ItemIndex = 0 then
       for i := 0 to SourceGrid.ColCount - 1 do
        SourceGrid.Cells[i + 1, detail_index] := splitted[i]
     else
        for i := 0 to SourceGrid.ColCount - 2 do
        SourceGrid.Cells[i + 1, detail_index] := splitted[i];
     end;
     detail_index := detail_index + 1;
    end;
    CloseFile(f);
    N3.Enabled := True;
    ComboBox1.Enabled := False;
    if ComboBox1.ItemIndex = 1 then begin
      for i := 1 to SourceGrid.ColCount - 1 do begin
       sum := 0;
       for j := 1 to SourceGrid.RowCount - 2 do begin
        sum := sum + SourceGrid.Cells[i, j].ToInteger;
     end;
     SourceGrid.Cells[i, SourceGrid.RowCount - 1] := sum.ToString;
   end;

    end;
end;
end;
procedure TForm1.sort(queue: integer; Grid2: TStringGrid);
var
i,j, k : integer;
n1, n2, n, x : TData;
detail_index: integer;
List1 : TList;
splitted: TArray<String>;
key: integer;
name : string;
begin
if queue = 0 then begin
  key := Grid1.ColCount - 3;
  name := 'Сумма 1'
end;
if queue = 1 then begin
  key := Grid1.ColCount - 2;
  name := 'Сумма 2'
end;
if queue = 2 then begin
  key := Grid1.ColCount - 1;
  name := 'Разность'
end;
List1 := TList.Create;
for i := 0 to SourceGrid.RowCount - 2 do begin
n := TData.Create(Grid1.Cells[key, i + 1].ToInteger);
for j := 0 to Grid1.ColCount - 1 do begin
  n.data := n.data + Grid1.Cells[j, i + 1] + ';';
end;
List1.Add(n);
end;
if queue = 0 then
 for i := 0 to List1.Count  do begin
   for j := List1.Count - 1 downto i + 1 do begin
      n1 := List1[j-1];
      n2 := List1[j];
     if n1.key >= n2.key then begin
       x := n1;
       List1[j-1] := List1[j];
       List1[j] := x;
     end;
   end;
 end
 else
  for i := 0 to List1.Count  do begin
   for j := List1.Count - 1 downto i + 1 do begin
      n1 := List1[j-1];
      n2 := List1[j];
     if n1.key < n2.key then begin
       x := n1;
       List1[j-1] := List1[j];
       List1[j] := x;
     end;
   end;
  end;
  Grid2.ColCount := SourceGrid.ColCount + 1;
  Grid2.RowCount := SourceGrid.RowCount;
  for i := 1 to Grid2.ColCount do begin
        if i < Grid2.ColCount - 1 then
           Grid2.Cells[i, 0] := 'Станок ' + i.ToString
           else
            Grid2.Cells[i, 0] := name;
  end;
  for i := 1 to Grid2.RowCount - 1 do begin
     n := List1[i-1];
     splitted := n.data.Split([';']);
    for j := 0 to Grid2.ColCount - 2 do begin
      Grid2.Cells[j, i] := splitted[j];
    end;
    Grid2.Cells[Grid2.ColCount - 1, i] := n.key.ToString;
  end;
end;
procedure TForm1.CalculateFinishTime(queue: integer; Grid2: TStringGrid; Grid3: TStringGrid);
var detail_index: integer;
i, j, m1, m2 : integer;
begin
 detail_index := Grid2.Cells[1, 1].ToInteger;
 Grid3.Cells[1, 1] := detail_index.ToString;
 Grid3.ColCount := SourceGrid.ColCount;
 Grid3.RowCount := Grid2.RowCount;
 for i := 1 to Grid3.ColCount - 1 do begin
   Grid3.Cells[i, 0] := 'Станок ' + i.ToString;
   if i <> 1 then begin
    detail_index := Grid2.Cells[i, 1].ToInteger + detail_index;
    Grid3.Cells[i, 1] := detail_index.ToString;
   end;
 end;
 detail_index := Grid2.Cells[1, 1].ToInteger;
  for i := 1 to Grid3.RowCount - 1 do begin
   Grid3.Cells[0, i] := Grid2.Cells[0, i];
   if i <> 1 then begin
    detail_index := Grid2.Cells[1, i].ToInteger + detail_index;
    Grid3.Cells[1, i] := detail_index.ToString;
   end;
 end;
 for i := 2 to Grid3.ColCount - 1 do begin
   for j := 2 to Grid3.RowCount - 1 do begin
     detail_index := Grid2.Cells[i, j].ToInteger;
     m1 := Grid3.Cells[i, j - 1].ToInteger;
     m2 := Grid3.Cells[i - 1, j].ToInteger;
     if m1 > m2 then
      Grid3.Cells[i, j] := (m1 + detail_index).ToString
      else Grid3.Cells[i, j] := (m2 + detail_index).ToString;
   end;
 end;
 if queue = 0 then
  Memo1.Lines.Add('1 очередь. Длительность производственного цикла: ' + Grid3.Cells[Grid3.ColCount - 1, Grid3.RowCount - 1]);
  if queue = 1 then
  Memo1.Lines.Add('2 очередь. Длительность производственного цикла: ' + Grid3.Cells[Grid3.ColCount - 1, Grid3.RowCount - 1]);
  if queue = 2 then
  Memo1.Lines.Add('3 очередь. Длительность производственного цикла: ' + Grid3.Cells[Grid3.ColCount - 1, Grid3.RowCount - 1]);
end;

procedure TForm1.petrov();
var data_name, data: String;
f : TextFile;
detail_index: integer;
sum1, sum2, difference: integer;
i, j, b1, b2, b3 : integer;
splitted: TArray<String>;
begin
  Memo1.Lines.Add('Выполняется метод Петрова-Соколиныца');
  CalculateSum1Sum2Difference();
  sort(0, Grid2);
  CalculateFinishTime(0, Grid2, Grid3);
  sort(1, Grid2_2);
  CalculateFinishTime(1, Grid2_2, Grid3_2);
  sort(2, Grid2_3);
  CalculateFinishTime(2, Grid2_3, Grid3_3);
  drawPetrov(SourceGrid);
  Memo1.Lines.Add('Длительность исходного производственного цикла:' + Chart1.BottomAxis.IEndPos.ToString);
  b1 := Grid3.Cells[Grid3.ColCount - 1, Grid3.RowCount - 1].ToInteger;
  b2 := Grid3_2.Cells[Grid3_2.ColCount - 1, Grid3_2.RowCount - 1].ToInteger;
  b3 := Grid3_3.Cells[Grid3_3.ColCount - 1, Grid3_3.RowCount - 1].ToInteger;
  if b1 < b2 then begin
  if b1 < b3 then
      Memo1.Lines.Add('Лучшая производительность у очереди 1')
  else Memo1.Lines.Add('Лучшая производительность у очереди 3');
  end
  else begin
    if b2 < b3 then
       Memo1.Lines.Add('Лучшая производительность у очереди 2')
    else Memo1.Lines.Add('Лучшая производительность у очереди 3');
  end;
 end;
procedure TForm1.drawPetrov(Grid: TStringGrid);
var i, j, stanki, details, start, finish, worktime, index : integer;
detailsName, stankiName : String;
begin
  details := Grid.RowCount - 1;
  stanki := Grid.ColCount - 2;
  if Combobox3.ItemIndex = 0 then begin
    stanki := Grid.ColCount - 1;
    details := Grid.RowCount - 2;
  end;
  setlength(drawP, details);
  setlength(b, details);
  setlength(stankiWork, stanki);
  chart1.ClearChart;
  chart1.AutoSize := True;
  chart1.View3D := false;
  chart1.BottomAxis.Minimum := 0.0;
  chart1.AllowPanning := pmBoth;
  for i := 0 to details - 1 do begin
    drawP[i] := TGanttSeries.Create(self);
    drawP[i].ParentChart := Chart1;
    b[i] := TDraw.Create(0);
    detailsName := Grid.Cells[0, i + 1];
    drawP[i].XValues.DateTime := False;
    drawP[i].Legend.Text := detailsName;
    drawP[i].SeriesColor := b[i].color;
    drawP[i].Marks.Style := smsLegend;
   // draw[i].Marks.Visible := true;
  end;
  for i := 0 to stanki - 1 do begin
    stankiWork[i] := 0;
  end;
  for j := 0 to details - 1 do begin
   detailsName := Grid.Cells[0, j + 1]; //какая деталь идет первой
   index := SourceGrid.Cols[0].IndexOf(detailsName);
   for i := 0 to stanki - 1 do begin
      workTime := SourceGrid.Cells[i + 1, index].ToInteger; //время работы на i станке j детали
      stankiName := SourceGrid.Cells[i + 1, 0];
      if i = 0 then begin
        finish := stankiWork[i] + worktime;
        drawP[j].AddGanttColor(stankiWork[i], finish, stanki - 1 - i, stankiName, b[j].color);
        stankiWork[i] := finish;
      end else
      if stankiWork[i] < stankiWork[i-1] then begin
          start := stankiWork[i] + (stankiWork[i-1] - stankiWork[i]);
         finish := stankiWork[i] + workTime + (stankiWork[i-1] - stankiWork[i]);
         drawP[j].AddGanttColor(start, finish, stanki - 1 - i, stankiName, b[j].color);
         stankiWork[i] := finish;
      end else begin
         finish := stankiWork[i] + workTime;
         drawP[j].AddGanttColor(stankiWork[i], finish, stanki - 1 - i, stankiName, b[j].color);
         stankiWork[i] := finish;
      end;
    end;
  end;
  Chart1.BottomAxis.IEndPos := stankiWork[stanki - 1];
end;

procedure  TForm1.drawJohnson(O: TList);
var i, j, int, sum, finish, start : Integer;
n: TData;
name : String;
stanki, workTime, nameIndex : integer;
list : TList;
tmp1,tmp2 : Integer;
color : TColor;
begin
  chart1.ClearChart;
  chart1.AutoSize := True;
  chart1.View3D := false;
  chart1.BottomAxis.Minimum := 0.0;
  chart1.AllowPanning := pmBoth;
  stanki := SourceGrid.RowCount - 2;
  setlength(drawJ, O.Count);
  setlength(b, O.Count);
  for i := 0 to O.Count - 1 do begin
    drawJ[i] := TGanttSeries.Create(self);
    drawJ[i].ParentChart := Chart1;
    b[i] := TDraw.Create(0);
    n:= o[i];
    drawJ[i].XValues.DateTime := False;
    drawJ[i].Legend.Text := n.data;
    drawJ[i].SeriesColor := b[i].color;
    drawJ[i].Marks.Style := smsLegend;
   // draw[i].Marks.Visible := true;

  end;
  for i := 0 to stanki - 1 do begin
    a[i].key := 0;
  end;
  for j := 0 to O.Count - 1 do begin
   n := o[j]; //деталь
   nameIndex := SourceGrid.Rows[0].IndexOf(n.data); //какая деталь идет первой
   for i := 0 to stanki - 1 do begin
      workTime := SourceGrid.Cells[nameIndex, i + 1].ToInteger; //время работы на i станке j детали
      if i = 0 then begin
        finish := a[i].key + worktime;
        drawJ[j].AddGanttColor(a[i].key, finish, stanki - 1 - i, a[i].data, b[j].color);
        a[i].key := finish;
      end else
      if a[i].key < a[i-1].key then begin
         start := a[i].key + (a[i-1].key - a[i].key);
         finish := a[i].key + workTime + (a[i-1].key - a[i].key);
         drawJ[j].AddGanttColor(start, finish, stanki - 1 - i, a[i].data, b[j].color);
         a[i].key := finish;
      end else begin
         finish := a[i].key + workTime;
         drawJ[j].AddGanttColor(a[i].key, finish, stanki - 1 - i, a[i].data, b[j].color);
         a[i].key := finish;
      end;
    end;
  end;
end;
procedure TForm1.generateP();
var i, j, int : Integer;
begin
  SourceGrid.RowCount := SpinEdit2.Value + 1;
  SourceGrid.ColCount := SpinEdit1.Value + 1;
  for i := 1 to SourceGrid.RowCount - 1 do
       SourceGrid.Cells[0, i] := 'Деталь ' + i.ToString;
       for i := 1 to SourceGrid.ColCount - 1 do
       SourceGrid.Cells[i, 0] := 'Станок ' + i.ToString;
  for i := 1 to SourceGrid.ColCount - 1 do begin
   for j := 1 to SourceGrid.RowCount - 1 do begin
      int := SpinEdit3.Value + Random(SpinEdit4.Value + 1);
      SourceGrid.Cells[i, j] := int.ToString;
   end;
   end;
end;
procedure TForm1.generateJ();
var i, j, int, sum : Integer;
begin
  SourceGrid.RowCount := SpinEdit1.Value + 2;
  SourceGrid.ColCount := SpinEdit2.Value + 1;
  for i := 1 to SourceGrid.ColCount - 1 do
       SourceGrid.Cells[i, 0] := 'Деталь ' + i.ToString;
       for i := 1 to SourceGrid.RowCount - 2 do
       SourceGrid.Cells[0, i] := 'Станок ' + i.ToString;
  SourceGrid.Cells[0, SourceGrid.RowCount - 1] := 'Сумма';
  for i := 1 to SourceGrid.ColCount - 1 do begin
  sum := 0;
   for j := 1 to SourceGrid.RowCount - 2 do begin
      int := SpinEdit3.Value + Random(SpinEdit4.Value + 1);
      SourceGrid.Cells[i, j] := int.ToString;
      sum := sum + int;
   end;
   SourceGrid.Cells[i, SourceGrid.RowCount - 1] := sum.ToString;
   end;
end;
procedure TForm1.sortO(var O: TList; typeO: Integer);
var i, j, int : Integer;
x, n1, n2:TData;
begin
if typeO = 0 then

   for i := 0 to O.Count  do begin
   for j := O.Count - 1 downto i + 1 do begin
      n1 := O[j-1];
      n2 := O[j];
     if n1.key >= n2.key then begin
       x := n1;
       O[j-1] := O[j];
       O[j] := x;
     end;
   end;
   end
   else
   for i := 0 to O.Count  do begin
   for j := O.Count - 1 downto i + 1 do begin
      n1 := O[j-1];
      n2 := O[j];
     if n1.key < n2.key then begin
       x := n1;
       O[j-1] := O[j];
       O[j] := x;
     end;
   end;
   end;
end;
procedure TForm1.sortO3(var O: TList);
var i, j, int, max : Integer;
n: TData;
details : TStringList;
maxName, name : String;
begin
 max := 0;
 details := TStringList.Create;
while details.Count <> SourceGrid.ColCount - 1 do begin
 for i := 1 to SourceGrid.RowCount - 2 do begin
   for j := 1 to SourceGrid.ColCount - 1 do begin
      int := SourceGrid.Cells[j, i].ToInteger;
      name := SourceGrid.Cells[j, 0];
      if (int >= max) and (details.IndexOf(name) = -1) then begin
        max := int;
        maxName := name;
      end;
   end;
 end;
 details.Add(maxName);
 n := TData.Create(max, maxName);
 O.Add(n);
 max := 0;
end;

end;
procedure TForm1.TabSheet5Show(Sender: TObject);
begin
if Combobox1.ItemIndex = 1 then begin
  ComboBox3.Clear;
  ComboBox3.Items.Add('Исходные данные');
  ComboBox3.Items.Add('Обобщение 1');
  ComboBox3.Items.Add('Обобщение 2');
  ComboBox3.Items.Add('Обобщение 3');
  ComboBox3.Items.Add('Обобщение 4');
  ComboBox3.Items.Add('Обобщение 5');
  ComboBox3.ItemIndex := 0;
end else begin
  ComboBox3.Clear;
  ComboBox3.Items.Add('Исходные данные');
  ComboBox3.Items.Add('Сумма 1');
  ComboBox3.Items.Add('Сумма 2');
  ComboBox3.Items.Add('Разность');
  ComboBox3.ItemIndex := 0;
end;

end;

procedure TForm1.johnson();
var i, j, int, sum, besttime : Integer;
n1, n2, x, n: TData;
name : String;
worktime : Array[0..4] of Integer;
begin
  Memo1.Lines.Add('Выполняется метод Джонсона');
  oi := TList.Create;
  for i := 1 to SourceGrid.ColCount - 1 do begin
   n := TData.Create(SourceGrid.Cells[i, 1].ToInteger, SourceGrid.Cells[i, 0]);
   oi.Add(n);
  end;
  o1 := TList.Create;
  for i := 1 to SourceGrid.ColCount - 1 do begin
    n := TData.Create(SourceGrid.Cells[i, 1].ToInteger, SourceGrid.Cells[i, 0]);
    o1.Add(n);
   end;
   sortO(o1, 0);
   StringGrid1.ColCount := o1.Count;
   for i := 0 to StringGrid1.ColCount - 1 do begin
     n := o1[i];
     StringGrid1.Cells[i, 0] := n.data;
     StringGrid1.Cells[i, 1] := n.key.ToString;
   end;
   o2 := TList.Create;
   for i := 1 to SourceGrid.ColCount - 1 do begin
    n := TData.Create(SourceGrid.Cells[i, SourceGrid.RowCount - 2].ToInteger, SourceGrid.Cells[i, 0]);
    o2.Add(n);
   end;
   sortO(o2, 1);
   StringGrid2.ColCount := o2.Count;
   for i := 0 to StringGrid2.ColCount - 1 do begin
     n := o2[i];
     StringGrid2.Cells[i, 0] := n.data;
     StringGrid2.Cells[i, 1] := n.key.ToString;
   end;
   o3 := TList.Create;
   sortO3(o3);
   StringGrid3.ColCount := o3.Count;
    for i := 0 to StringGrid3.ColCount - 1 do begin
     n := o3[i];
     StringGrid3.Cells[i, 0] := n.data;
     StringGrid3.Cells[i, 1] := n.key.ToString;
   end;
   o4 := TList.Create;
   for i := 1 to SourceGrid.ColCount - 1 do begin
    n := TData.Create(SourceGrid.Cells[i, SourceGrid.RowCount - 1].ToInteger, SourceGrid.Cells[i, 0]);
    o4.Add(n);
   end;
   sortO(o4, 1);
   StringGrid4.ColCount := o4.Count;
   for i := 0 to StringGrid4.ColCount - 1 do begin
     n := o4[i];
     StringGrid4.Cells[i, 0] := n.data;
     StringGrid4.Cells[i, 1] := n.key.ToString;
   end;
   o5 := TList.Create;
   for i := 1 to SourceGrid.ColCount - 1  do begin
      sum:= 0;
      name := SourceGrid.Cells[i, 0];
      int := StringGrid1.Rows[0].IndexOf(name) + 1;
      sum := sum + int;
      int := StringGrid2.Rows[0].IndexOf(name) + 1;
      sum := sum + int;
      int := StringGrid3.Rows[0].IndexOf(name) + 1;
      sum := sum + int;
      int := StringGrid4.Rows[0].IndexOf(name) + 1;
      sum := sum + int;
      n := TData.Create(sum, name);
      o5.Add(n);
   end;
   sortO(o5, 0);
   StringGrid5.ColCount := o5.Count;
   for i := 0 to StringGrid5.ColCount - 1 do begin
     n := o5[i];
     StringGrid5.Cells[i, 0] := n.data;
     StringGrid5.Cells[i, 1] := n.key.ToString;
   end;
   besttime := findbest(oi);
   Memo1.Lines.Add('Время окончания работы станков в исходном варианте: ' + besttime.ToString);
   for i := 0 to 4 do begin
     case i of
     0: worktime[0] := findbest(o1);
     1: worktime[1] := findbest(o2);
     2: worktime[2] := findbest(o3);
     3: worktime[3] := findbest(o4);
     4: worktime[4] := findbest(o5);
     end;
     Memo1.Lines.Add('Время окончания работы станков в алгоритме - ' + (i + 1).ToString + ': ' + worktime[i].ToString);
     end;
     drawJohnson(oi);
end;

function TForm1.findbest(O: TList) : Integer;
var i, j, int, sum : Integer;
n: TData;
name : String;
stanki, workTime, nameIndex : integer;
list : TList;
begin
  stanki := SourceGrid.RowCount - 2;
  setlength(a, stanki);
  for i := 0 to stanki - 1 do begin
    a[i] := TData.Create(0, 'Станок ' + (i+1).ToString);
  end;
 for j := 0 to O.Count - 1 do begin
   n := o[j];
   nameIndex := SourceGrid.Rows[0].IndexOf(n.data);
   for i := 0 to stanki - 1 do begin
      workTime := SourceGrid.Cells[nameIndex, i + 1].ToInteger;
      if i = 0 then begin
        a[i].key := a[i].key + worktime;
      end else
      if a[i].key < a[i-1].key then begin
         a[i].key := a[i].key + workTime + (a[i-1].key - a[i].key);
      end else begin
         a[i].key := a[i].key + workTime;
      end;
    end;
  end;
  worktime := 0;
  for i := 0 to stanki - 1 do
    if a[i].key >= worktime then begin
    worktime := a[i].key;
    end;
  Result := worktime;
end;



procedure TForm1.ComboBox2Change(Sender: TObject);
begin
 if ComboBox2.ItemIndex = 0 then begin
  Button1.Visible := False;
  Label3.Visible := True;
  SpinEdit1.Visible := True;
  Label4.Visible := True;
  SpinEdit2.Visible := True;
  Label15.Visible := True;
  SpinEdit3.Visible := True;
  Label16.Visible := True;
  SpinEdit4.Visible := True;
  N3.Enabled := True;
  ComboBox1.Enabled := True;
 end
 else
    VisabilityToolBar(False);
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
if Combobox1.ItemIndex = 1 then
  case Combobox3.ItemIndex of
  0: drawJohnson(oi);
  1: drawJohnson(o1);
  2: drawJohnson(o2);
  3: drawJohnson(o3);
  4: drawJohnson(o4);
  5: drawJohnson(o5);
  end
  else
  case Combobox3.ItemIndex of
  0: drawPetrov(sourcegrid);
  1: drawPetrov(Grid2);
  2: drawPetrov(Grid2_2);
  3: drawPetrov(Grid2_3);
  end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
SourcePanel.Visible := True;
if CalculationPanel.Visible then begin
  CalculationPanel.Align := alright;
 Splitter2.Visible := True;
 CalculationPanel.Width := form1.Width div 2;
end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
 Memo1.Clear;
 CalculationPanel.Visible := True;
 if SourcePanel.Visible = True then
   Splitter2.Visible := True;
 if ComboBox1.ItemIndex = 0 then begin
  if combobox2.ItemIndex = 0 then
   generateP();
 Panel8.Visible := True;
Panel13.Visible := False;
 petrov()
 end
 else begin
   Panel8.Visible := False;
   Panel13.Visible := True;
   if combobox2.ItemIndex = 0 then
   generateJ();
 johnson();
 end;
 ComboBox1.Enabled := True;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
CalculationPanel.Visible := True;
if sourcepanel.Visible = true then begin
CalculationPanel.Align := alright;
 Splitter2.Visible := True;
 CalculationPanel.Width := form1.Width div 2;
end
else CalculationPanel.Align := alClient;
end;

procedure TForm1.N6Click(Sender: TObject);
var i, j, col, row: Integer;
chosenDirectory, fileName, text : string;
f : TextFile;
begin
  if combobox1.ItemIndex = 0 then begin //petrov
     row := SourceGrid.RowCount - 1;
  end else begin
     row := SourceGrid.RowCount - 2;
  end;
  col := SourceGrid.ColCount - 1;
  if SelectDirectory('Выберите каталог', 'C:\Users\HP\Documents', chosenDirectory) then begin
  fileName := chosenDirectory + '\' + ComboBox1.Text + '_data.txt';
  try
      AssignFile(f, fileName);
      Rewrite(f);
      WriteLn(f, row.ToString + ';' + col.ToString);
      for i := 1 to row do begin
        text := '';
        for j := 1 to col - 1 do begin
           text := text + SourceGrid.Cells[j, i] + ';';
        end;
           text := text + SourceGrid.Cells[col, i];
           if i <> row then
            WriteLn(f, text)
            else Write(f, text);
        end;
  finally
      CloseFile(f);
      showmessage('Данные успешно были сохранены');
  end;
  end;
end;

procedure TForm1.CalculateSum1Sum2Difference();
var
  Local_i, detail_index, i, j, sum1, sum2, difference: Integer;
begin
  Grid1.ColCount := SourceGrid.ColCount + 3;
  Grid1.RowCount := SourceGrid.RowCount;
  for Local_i := 1 to Grid1.ColCount do
  begin
    if Local_i < Grid1.ColCount - 3 then
      Grid1.Cells[Local_i, 0] := 'Станок ' + Local_i.ToString
    else
    begin
      if Local_i = Grid1.ColCount - 3 then
        Grid1.Cells[Local_i, 0] := 'Сумма 1';
      if Local_i = Grid1.ColCount - 2 then
        Grid1.Cells[Local_i, 0] := 'Сумма 2';
      if Local_i = Grid1.ColCount - 1 then
        Grid1.Cells[Local_i, 0] := 'Разность';
    end;
  end;
    detail_index := 1;
  for i := 1 to Grid1.RowCount - 1 do begin
  sum1 := 0;
  sum2 := 0;
  difference := 0;
    for j := 0 to Grid1.ColCount - 4 do begin
         if j = 0 then
           Grid1.Cells[j, i] := 'Деталь ' + i.ToString
           else begin
             Grid1.Cells[j, i] := SourceGrid.Cells[j, i];
             if j <> Grid1.ColCount - 4 then
               sum1 := sum1 + Grid1.Cells[j, i].ToInteger
               else
               difference := difference + Grid1.Cells[j, i].ToInteger;
             if j <> 1  then
               sum2 := sum2 + Grid1.Cells[j, i].ToInteger
               else difference := - Grid1.Cells[j, i].ToInteger;

           end;
    end;
    Grid1.Cells[Grid1.ColCount - 3, i] := sum1.ToString;
    Grid1.Cells[Grid1.ColCount - 2, i] := sum2.ToString;
    Grid1.Cells[Grid1.ColCount - 1, i] := difference.ToString;
    detail_index := detail_index + 1;
  end;
end;

procedure TForm1.N7Click(Sender: TObject);
var chosenDirectory, fileName : string;
begin
if SelectDirectory('Выберите каталог', 'C:\Users\HP\Documents', chosenDirectory) then begin
  fileName := chosenDirectory + '\' + ComboBox3.Text + '_Gantt_Diagram.bmp';
  try
      Chart1.SaveToBitmapFile(FileName);
  finally
      showmessage('Диаграмма успешно была сохранена');
  end;

end;
end;

procedure TForm1.VisabilityToolBar(Visible: bool);
begin
  Label3.Visible := Visible;
  SpinEdit1.Visible := Visible;
  Label4.Visible := Visible;
  SpinEdit2.Visible := Visible;
  Label15.Visible := Visible;
  SpinEdit3.Visible := Visible;
  Label16.Visible := Visible;
  SpinEdit4.Visible := Visible;
  Button1.Visible := not Visible;
  N3.Enabled := False;
end;

end.
