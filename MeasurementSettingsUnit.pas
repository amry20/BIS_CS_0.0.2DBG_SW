unit MeasurementSettingsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, sSkinManager, ExtCtrls, sPanel, StdCtrls,
  sButton, sEdit, sLabel, Buttons, sBitBtn, sCheckBox;

type
  TMeasurementSettingsForm = class(TForm)
    sPanel1: TsPanel;
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    sPanel2: TsPanel;
    sImgLabel1: TsImgLabel;
    sEdit1: TsEdit;
    sButton1: TsButton;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sImgLabel2: TsImgLabel;
    VPeakEdit: TsEdit;
    sLabel1: TsLabel;
    sImgLabel3: TsImgLabel;
    ISelect1: TsCheckBox;
    ISelect2: TsCheckBox;
    ISelect3: TsCheckBox;
    ISelect4: TsCheckBox;
    sLabel2: TsLabel;
    Gain1Edit: TsEdit;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    Gain2Edit: TsEdit;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    Gain3Edit: TsEdit;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    Gain4Edit: TsEdit;
    sLabel9: TsLabel;
    sEdit2: TsEdit;
    sLabel10: TsLabel;
    sLabel11: TsLabel;
    sLabel12: TsLabel;
    sEdit3: TsEdit;
    sLabel13: TsLabel;
    sLabel14: TsLabel;
    sEdit4: TsEdit;
    sLabel15: TsLabel;
    sLabel16: TsLabel;
    sEdit5: TsEdit;
    sLabel17: TsLabel;
    procedure FormCreate(Sender: TObject);
    procedure Gain1EditChange(Sender: TObject);
    procedure Gain2EditChange(Sender: TObject);
    procedure Gain3EditChange(Sender: TObject);
    procedure Gain4EditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeasurementSettingsForm: TMeasurementSettingsForm;

implementation

uses MainUnit;

{$R *.dfm}

procedure TMeasurementSettingsForm.FormCreate(Sender: TObject);
begin
  MeasurementSettingsForm.Parent := MainForm.MainPanel;
  MeasurementSettingsForm.Left := 1;
  MeasurementSettingsForm.Top :=1;
end;

procedure TMeasurementSettingsForm.Gain1EditChange(Sender: TObject);
var
  IVal:Single;
begin
  if (Gain1Edit.Text <>'') then
  begin
    IVal := (strtofloat(VpeakEdit.Text) / 1000) / (strtofloat(Gain1Edit.Text)/1000);
    IVal := IVal;
    ISelect1.Caption := formatfloat('0.0',IVal) +'uA';
  end;
end;

procedure TMeasurementSettingsForm.Gain2EditChange(Sender: TObject);
var
  IVal:Single;
begin
  if (Gain2Edit.Text <>'') then
  begin
    IVal := (strtofloat(VpeakEdit.Text) / 1000) / (strtofloat(Gain2Edit.Text)/1000);
    IVal := IVal;
    ISelect2.Caption := formatfloat('0.0',IVal) +'uA';
  end;
end;

procedure TMeasurementSettingsForm.Gain3EditChange(Sender: TObject);
var
  IVal:Single;
begin
  if (Gain3Edit.Text <>'') then
  begin
    IVal := (strtofloat(VpeakEdit.Text) / 1000) / (strtofloat(Gain3Edit.Text)/1000);
    IVal := IVal;
    ISelect3.Caption := formatfloat('0.0',IVal) +'uA';
  end;
end;

procedure TMeasurementSettingsForm.Gain4EditChange(Sender: TObject);
var
  IVal:Single;
begin
  if (Gain4Edit.Text <>'') then
  begin
    IVal := (strtofloat(VpeakEdit.Text) / 1000) / (strtofloat(Gain4Edit.Text)/1000);
    IVal := IVal;
    ISelect4.Caption := formatfloat('0.0',IVal) +'uA';
  end;
end;

end.
