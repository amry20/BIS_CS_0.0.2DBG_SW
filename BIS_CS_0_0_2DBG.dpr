program BIS_CS_0_0_2DBG;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  MeasurementSettingsUnit in 'MeasurementSettingsUnit.pas' {MeasurementSettingsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TMeasurementSettingsForm, MeasurementSettingsForm);
  Application.Run;
end.
