unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinManager, ComCtrls, Buttons, sSpeedButton, ToolWin, sToolBar,
  Menus, acAlphaImageList, ImgList, sStatusBar, ExtCtrls, sPanel, StdCtrls,
  sBitBtn, sSkinProvider, sLabel, BMDThread, CPort;

type
  TMainForm = class(TForm)
    sSkinManager1: TsSkinManager;
    sToolBar1: TsToolBar;
    sSpeedButton1: TsSpeedButton;
    OpenPortBtn: TsSpeedButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ConnectBtn: TsSpeedButton;
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    C1: TMenuItem;
    L1: TMenuItem;
    H1: TMenuItem;
    sCharImageList1: TsCharImageList;
    sVirtualImageList1: TsVirtualImageList;
    MainPanel: TsPanel;
    StatusBar: TsStatusBar;
    ToolButton3: TToolButton;
    DisconnectBtn: TsSpeedButton;
    ToolButton4: TToolButton;
    sSpeedButton5: TsSpeedButton;
    ToolButton5: TToolButton;
    sSpeedButton6: TsSpeedButton;
    ToolButton6: TToolButton;
    sSpeedButton7: TsSpeedButton;
    ToolButton7: TToolButton;
    ToolboxBtn: TsSpeedButton;
    sSplitView1: TsSplitView;
    StatusViewBtn: TMenuItem;
    sPanel1: TsPanel;
    ToolButton8: TToolButton;
    SerialPort: TComPort;
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
    TimerTimestamp: TTimer;
    OpenPortMenu: TMenuItem;
    ConnectMenu: TMenuItem;
    DisconnectMenu: TMenuItem;
    procedure StatusViewBtnClick(Sender: TObject);
    procedure OpenPortBtnClick(Sender: TObject);
    procedure TimerTimestampTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OpenConnection;
    procedure OpenPortMenuClick(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure DisconnectBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  PortOK:Boolean = false;

implementation

uses MeasurementSettingsUnit;

{$R *.dfm}

procedure TMainForm.StatusViewBtnClick(Sender: TObject);
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
Procedure TMainForm.OpenConnection;
begin
  SerialPort.ShowSetupDialog;
  if (SerialPort.Port <>'') and (SerialPort.Port <>'COM') then
  begin
    try
      SerialPort.Open;
      if (SerialPort.Connected) then
      begin
        PortOK := true;
        OpenPortBtn.Enabled := false;
        ConnectBtn.Enabled := true;
        DisconnectBtn.Enabled := true;
        OpenPortMenu.Enabled := false;
        ConnectMenu.Enabled := true;
        DisconnectMenu.Enabled := true;
      end else
      begin
        PortOK := false;
        OpenPortBtn.Enabled := true;
        ConnectBtn.Enabled := false;
        DisconnectBtn.Enabled := false;
        OpenPortMenu.Enabled := true;
        ConnectMenu.Enabled := false;
        DisconnectMenu.Enabled := false;
      end;
    except
      on E : Exception do
      begin
        StatusBar.Panels[1].Text :='Connection: Error!';
        PortOK := false;
        OpenPortBtn.Enabled := true;
        ConnectBtn.Enabled := false;
        DisconnectBtn.Enabled := false;
        OpenPortMenu.Enabled := true;
        ConnectMenu.Enabled := false;
        DisconnectMenu.Enabled := false;
        MessageDlg('Cannot connect to the device, please check your connection or device configuration!',mtError,[mbOK],0);
      end;
    end;
  end else
  begin
    PortOK := false;
    OpenPortBtn.Enabled := true;
    ConnectBtn.Enabled := false;
    DisconnectBtn.Enabled := false;
    StatusBar.Panels[1].Text :='Connection: Error!';
    MessageDlg('Please select correct port!',mtError,[mbOK],0);
  end;
end;
procedure TMainForm.OpenPortBtnClick(Sender: TObject);
begin
  OpenConnection;
end;

procedure TMainForm.TimerTimestampTimer(Sender: TObject);
begin
StatusBar.Panels[0].Text := formatdatetime('YYYY/MM/DD HH:MM:SS',now);
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  StatusBar.Panels[0].Text := formatdatetime('YYYY/MM/DD HH:MM:SS',now);
end;

procedure TMainForm.OpenPortMenuClick(Sender: TObject);
begin
  OpenConnection;
end;

procedure TMainForm.sSpeedButton5Click(Sender: TObject);
begin
  MeasurementSettingsForm.Show;
end;

procedure TMainForm.DisconnectBtnClick(Sender: TObject);
begin
  SerialPort.Close;
  PortOK := false;
  OpenPortBtn.Enabled := true;
  ConnectBtn.Enabled := false;
  DisconnectBtn.Enabled := false;
  OpenPortMenu.Enabled := true;
  ConnectMenu.Enabled := false;
  DisconnectMenu.Enabled := false;
end;

end.
