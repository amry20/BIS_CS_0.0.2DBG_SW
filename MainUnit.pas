unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinManager, ComCtrls, Buttons, sSpeedButton, ToolWin, sToolBar,
  Menus, acAlphaImageList, ImgList, sStatusBar, ExtCtrls, sPanel, StdCtrls,
  sBitBtn, sSkinProvider, sLabel, BMDThread, CPort;

type
  TForm1 = class(TForm)
    sSkinManager1: TsSkinManager;
    sToolBar1: TsToolBar;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    sSpeedButton3: TsSpeedButton;
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    C1: TMenuItem;
    L1: TMenuItem;
    H1: TMenuItem;
    sCharImageList1: TsCharImageList;
    sVirtualImageList1: TsVirtualImageList;
    MainPanel: TsPanel;
    sStatusBar1: TsStatusBar;
    ToolButton3: TToolButton;
    sSpeedButton4: TsSpeedButton;
    ToolButton4: TToolButton;
    sSpeedButton5: TsSpeedButton;
    ToolButton5: TToolButton;
    sSpeedButton6: TsSpeedButton;
    ToolButton6: TToolButton;
    sSpeedButton7: TsSpeedButton;
    ToolButton7: TToolButton;
    sSpeedButton8: TsSpeedButton;
    sSplitView1: TsSplitView;
    StatusViewBtn: TMenuItem;
    sPanel1: TsPanel;
    ToolButton8: TToolButton;
    ComPort1: TComPort;
    BMDThread1: TBMDThread;
    sImgLabel1: TsImgLabel;
    sLabel1: TsLabel;
    LabelDevice: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    sLabel10: TsLabel;
    sLabel11: TsLabel;
    sLabel12: TsLabel;
    LabelWaveform: TsLabel;
    LabelFreqNow: TsLabel;
    LabelCurrent: TsLabel;
    LabelInitialFreq: TsLabel;
    LabelFinalFreq: TsLabel;
    LabelZReal: TsLabel;
    LabelZImaginer: TsLabel;
    LabelImpedance: TsLabel;
    LabelPhase: TsLabel;
    LabelResistance: TsLabel;
    LabelCapacitance: TsLabel;
    procedure StatusViewBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.StatusViewBtnClick(Sender: TObject);
begin
  if (sSplitView1.Opened) then
  begin
    sSplitView1.Close;
    mainPanel.Anchors := [akLeft,akTop,akBottom];
    mainPanel.Left := 0;
    MainPanel.Width := MainPanel.Width + 200;
    mainPanel.Anchors := [akLeft,akTop,akBottom,akRight];
    StatusViewBtn.Checked := false;
  end
  else begin
    sSplitView1.Open;
    mainPanel.Anchors := [akLeft,akTop,akBottom];
    MainPanel.Width := MainPanel.Width - 200;
    mainPanel.Left := 200;
    mainPanel.Anchors := [akLeft,akTop,akBottom,akRight];
    StatusViewBtn.Checked := true;
  end;
end;

end.
