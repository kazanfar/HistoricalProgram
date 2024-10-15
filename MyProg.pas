uses FormsABC;

{$reference 'Graphics.dll'}

var
  f1 := new FlowBreak(40);
  tl1 := new TextLabel('Roman world');
  f2 := new FlowBreak(10);
  cb1 := new ComboBox;
  f8 := new FlowBreak(50);
  tl2 := new TextLabel('Hellenistic world');
  f3 := new FlowBreak(10);
  cb2 := new ComboBox;
  f9 := new FlowBreak(50);
  tl3 := new TextLabel('Russian world');
  f4 := new FlowBreak(10);
  cb3 := new ComboBox;
  f10 := new FlowBreak(50);
  tl4 := new TextLabel('Persian world');
  f5 := new FlowBreak(10);
  cb4 := new ComboBox;
  f11 := new FlowBreak(50);
  tl5 := new TextLabel('Turkish world');
  f6 := new FlowBreak(10);
  cb5 := new ComboBox;
  f12 := new FlowBreak(50);
  b1 := new Button('Choose one statement');
  f13 := new FlowBreak(30);
  b2 := new Button('Call for manual');
  tb : TextBox;

procedure InitComboBoxes;
begin
  cb1.Items.Add('None chosen');
  cb1.Items.Add('Roman Republic');
  cb1.Items.Add('Roman Empire');
  cb1.Items.Add('East Roman Empire');
  cb2.Items.Add('None chosen');
  cb2.Items.Add('Seleucids');
  cb2.Items.Add('Pictures of the Greek warriors');
  cb2.Items.Add('Maps of the Hellenistic world');
  cb2.Items.Add('Antigonus Empire');
  cb3.Items.Add('None chosen');
  cb3.Items.Add('Russian Empire');
  cb4.Items.Add('None chosen');
  cb4.Items.Add('Media');
  cb4.Items.Add('Achemenid Persia');
  cb4.Items.Add('Parthia');
  cb4.Items.Add('Sassanid Persia');
  cb5.Items.Add('None chosen');
  cb5.Items.Add('Ottoman Empire');
end;

function Predicate (params a : array of integer) : boolean;
begin
  result := true;
  var counter := 0;
  for var i := 0 to a.Length - 1 do
  begin  
    result := (a[i] < 1) and result;
    if a[i] >= 1 then
      counter += 1;
  end;
  if counter > 1 then
    result := true;
end;

procedure Cleeeek;
begin
  var yeah : array of integer := (cb1.SelectedIndex,cb2.SelectedIndex,cb3.SelectedIndex,cb4.SelectedIndex,cb5.SelectedIndex);
  if Predicate(yeah) then
    tb.AddLine('Please, choose only one statement')
  else
  begin  
    if yeah[0] = 1 then
      Graphics.RomanRepublic();
    if yeah[0] = 2 then
      Graphics.RomanEmpire();
    if yeah[0] = 3 then
      Graphics.EastRomanEmpire();
    if yeah[1] = 1 then
      Graphics.Seleucids();
    if yeah[1] = 2 then
      Graphics.PicturesoftheGreekWarriors();
    if yeah[1] = 3 then
      Graphics.MapsoftheHellenisticworld();
    if yeah[1] = 4 then
      Graphics.AntigonusEmpire();
    if yeah[2] = 1 then
      Graphics.RussianEmpire();
    if yeah[3] = 1 then
      Graphics.Media();
    if yeah[3] = 2 then
      Graphics.AchemenidPersia();
    if yeah[3] = 3 then
      Graphics.Parthia();      
    if yeah[3] = 4 then
      Graphics.SassanidPersia();
    if yeah[4] = 1 then
      Graphics.OttomanEmpire();
  end;
end;

procedure Cleeeek2;
begin
  Graphics.CallforManual;
end;

procedure InitMain;
begin
  mainform.Maximize;
  mainform.Title := 'Historical program';
  mainpanel.Dock := dockstyle.Left;
  mainpanel.Width := mainpanel.Width div 2;
  parentcontrol := mainform;
  tb := new TextBox;
  tb.Dock := dockstyle.Fill;
  InitComboBoxes;
  b1.Click += Cleeeek;
  b2.Click += Cleeeek2;
end;

begin
  InitMain;
end.