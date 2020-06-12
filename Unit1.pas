unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListView, FMX.TabControl;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    ListView1: TListView;
    ListView2: TListView;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ListView1ButtonClick(const Sender: TObject; const AItem: TListItem; const AObject: TListItemSimpleControl);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TabControl1.GotoVisibleTab(1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TabControl1.TabIndex := 2;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  TabControl1.TabIndex := 0;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  LVI: TListViewItem;
  i: integer;
begin
  TabControl1.TabIndex := 0;
  ListView1.Items.Clear;
  for i := 0 to 50 do
  begin
    LVI := ListView1.Items.Add;
    LVI.Data['Text1'] := Button1.Text;
    LVI.Data['TextButton2'] := i.ToString;
  end;
  ListView2.Items.Clear;
  for i := 0 to 50 do
  begin
    LVI := ListView2.Items.Add;
    LVI.Data['Text1'] := Button2.Text;
    LVI.Data['TextButton2'] := i.ToString;
  end;
end;

procedure TForm1.ListView1ButtonClick(const Sender: TObject; const AItem: TListItem; const AObject: TListItemSimpleControl);
begin
  Form1.Caption := (Sender as TListView).Items[AItem.Index].Data['TextButton2'].ToString;
end;

end.
