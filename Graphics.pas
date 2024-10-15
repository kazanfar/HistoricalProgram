library Graphics;

interface

uses GraphABC;
var picarr : array of Picture;
var i := -1;//counter of the pictures

procedure ClickRomanRepublic(key : integer);
procedure RomanRepublic();
procedure ClickRomanEmpire(key : integer);
procedure RomanEmpire();
procedure ClickEastRomanEmpire(key : integer);
procedure EastRomanEmpire();
procedure ClickSeleucids(key : integer);
procedure Seleucids();
procedure ClickPicturesoftheGreekWarriors(key : integer);
procedure PicturesoftheGreekWarriors();
procedure ClickMapsoftheHellenisticworld(key : integer);
procedure MapsoftheHellenisticworld();
procedure ClickAntigonusEmpire(key : integer);
procedure AntigonusEmpire();
procedure ClickRussianEmpire(key : integer);
procedure RussianEmpire();
procedure ClickMedia(key : integer);
procedure Media();
procedure ClickAchemenidPersia(key : integer);
procedure AchemenidPersia();
procedure ClickParthia(key : integer);
procedure Parthia();
procedure ClickSassanidPersia(key : integer);
procedure SassanidPersia();
procedure ClickOttomanEmpire(key : integer);
procedure OttomanEmpire();
procedure CallforManual();

implementation

procedure ClickRomanRepublic(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 2 then i := 0;
    case i of
    0 :  begin
           window.Clear;
           redraw;
           window.SetSize(780,580);
           window.CenterOnScreen();
           window.Title := 'Plan of Rome';
           picarr[0].Draw(0,0);
         end;
    1 :  begin
           window.Clear;
           redraw;
           window.SetSize(1109,686);
           window.CenterOnScreen();
           window.Title := 'Roman Republic in 200 BC';
           picarr[1].Draw(0,0);
         end;
    2 :  begin
           window.Clear;
           redraw;
           window.SetSize(250,175);
           window.CenterOnScreen();
           window.Title := 'Largest Roman Republic';
           picarr[2].Draw(0,0);
         end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement';
  end;
  if key = VK_E then
    window.Close;
end;

procedure RomanRepublic();
begin
  picarr := new Picture[3];
  picarr[0] := new Picture('план Рима.jpg');
  picarr[1] := new Picture('рим200.jpg');
  picarr[2] := new Picture('LocationRomanRepublic.png');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Roman Republic';
  OnKeyDown := ClickRomanRepublic;
end;

procedure ClickRomanEmpire(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 1 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(995,700);
          window.CenterOnScreen();
          window.Title := 'Roman Empire';
          picarr[0].Draw(0,0);
          end;
    1 : begin
          window.Clear;
          redraw;
          window.SetSize(800,548);
          window.CenterOnScreen();
          window.Title := 'Provincies of the Roman Empire';
          picarr[1].Draw(0,0);
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement';
  end;
  if key = VK_E then
    window.Close;
end;

procedure RomanEmpire();
begin
  picarr := new Picture[2];
  picarr[0] := new Picture('империя Романа.gif');
  picarr[1] := new Picture('Римская империя.png');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Roman Empire';
  graphabc.OnKeyDown := ClickRomanEmpire;
end;

procedure ClickEastRomanEmpire(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 2 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(800,440);
          window.CenterOnScreen();
          window.Title := 'East Roman Empire at Justinian';
          picarr[0].Draw(0,0);
        end;
    1 : begin
          window.Clear;
          redraw;
          window.SetSize(800,370);
          window.CenterOnScreen();
          window.Title := 'East Roman Empire in 550 AD';
          picarr[1].Draw(0,0);
        end;
    2 : begin
          window.Clear;
          redraw;
          window.SetSize(650,690);
          window.CenterOnScreen();
          window.Title := 'East Roman Empire divisions';
          picarr[2].Draw(0,0);
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement';
  end;
  if key = VK_E then
    window.Close;
end;

procedure EastRomanEmpire();
begin
  picarr := new Picture[3];
  picarr[0] := new Picture('800px-Justinian_Byzanz.png');
  picarr[1] := new Picture('Byzantium550_ru.png');
  picarr[2] := new Picture('r5D2FMUcqb.gif');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'East Roman Empire';
  graphabc.OnKeyDown := ClickEastRomanEmpire;
end;

procedure ClickSeleucids(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 3 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(750,655);
          window.CenterOnScreen;
          window.Title := 'Battles of Antiochus III';
          picarr[0].Draw(0,0);
        end;
    1 : begin
          window.Clear;
          redraw;
          window.SetSize(750,432);
          window.CenterOnScreen;
          window.Title := 'Seleucid Empire, 200 BC';
          picarr[1].Draw(0,0);
        end;
    2 : begin
          window.Clear;
          redraw;
          window.SetSize(650,357);
          window.CenterOnScreen;
          window.Title := 'Seleucid Empire, 190 BC';
          picarr[2].Draw(0,0);
        end;
    3 : begin
          window.Clear;
          redraw;
          window.SetSize(750,357);
          window.CenterOnScreen;
          window.Title := 'Changing of the Seleucid boundaries';
          picarr[3].Draw(0,0);
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement'; 
  end;
  if key = VK_E then
    window.Close;
end;

procedure Seleucids();
begin
  picarr := new Picture[4];
  picarr[0] := new Picture('battle_of_antiochus_3.jpg');
  picarr[1] := new Picture('Seleucid-Empire_200bc.jpg');
  picarr[2] := new Picture('селевкиды190.gif');
  picarr[3] := new Picture('сужение территории государства селевкидов.gif');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Seleucids';
  graphabc.OnKeyDown := ClickSeleucids;
end;

procedure ClickPicturesoftheGreekWarriors(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 2 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(700,483);
          window.CenterOnScreen;
          window.Title := 'Alexander the Macedon';
          picarr[0].Draw(0,0);
        end;
    1 : begin
          window.Clear;
          redraw;
          window.SetSize(567,668);
          window.CenterOnScreen;
          window.Title := 'Greek-Baktrian and Galatian warriors';
          picarr[1].Draw(0,0);
        end;
    2 : begin
          window.Clear;
          redraw;
          window.SetSize(546,567);
          window.CenterOnScreen;
          window.Title := 'Seleucid warriors';
          picarr[2].Draw(0,0);
    
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement'; 
  end;
  if key = VK_E then
    window.Close;
end;

procedure PicturesoftheGreekWarriors();
begin
  picarr := new Picture[3];
  picarr[0] := new Picture('alexander_the_great.jpg');
  picarr[1] := new Picture('греко-бактрийские воины и галатский воин.jpg');
  picarr[2] := new Picture('селевкидские воины.jpg');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Pictures of the Greek warriors';
  graphabc.OnKeyDown := ClickPicturesoftheGreekWarriors;
end;

procedure ClickMapsoftheHellenisticworld(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 6 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(600,452);
          window.CenterOnScreen;
          window.Title := 'Hellenistic world in 240 BC';
          picarr[0].Draw(0,0);
        end;
    1 : begin
          window.Clear;
          redraw;
          window.SetSize(600,259);
          window.CenterOnScreen;
          window.Title := 'Greek colonisation';
          picarr[1].Draw(0,0);        
        end;
    2 : begin
          window.Clear;
          redraw;
          window.SetSize(750,360);
          window.CenterOnScreen;
          window.Title := 'After Alexander';
          picarr[2].Draw(0,0);
        end;
    3 : begin
          window.Clear;
          redraw;
          window.SetSize(595,401);
          window.CenterOnScreen;
          window.Title := 'Syria, Egypt, Macedonia';
          picarr[3].Draw(0,0);
        end;
    4 : begin
          window.Clear;
          redraw;
          window.SetSize(500,317);
          window.CenterOnScreen;
          window.Title := 'Hellenistic states';
          picarr[4].Draw(0,0);
        end;
    5 : begin
          window.Clear;
          redraw;
          window.SetSize(750,395);
          window.CenterOnScreen;
          picarr[5].Draw(0,0);
        end;
    6 : begin
          window.Clear;
          redraw;
          window.SetSize(750,478);
          window.CenterOnScreen;
          picarr[6].Draw(0,0);
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement';
  end;
  if key = VK_E then
    window.Close;
end;

procedure MapsoftheHellenisticworld();
begin
  picarr := new Picture[7];
  picarr[0] := new Picture('hellenistic.jpg');
  picarr[1] := new Picture('mapg.jpg');
  picarr[2] := new Picture('Раздел империи Македонского.png');
  picarr[3] := new Picture('Сирия, Египет, Македония.gif');
  picarr[4] := new Picture('эллинистические государства.jpg');
  picarr[5] := new Picture('эллинистические государства2.jpg');
  picarr[6] := new Picture('эллинистические государства3.jpg');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Maps of the Hellenistic world';
  graphabc.OnKeyDown := ClickMapsoftheHellenisticworld;
end;

procedure ClickAntigonusEmpire(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 0 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(687,439);
          window.CenterOnScreen;
          window.Title := 'Antigonus Empire';
          picarr[0].Draw(0,0);
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement';
  end;
  if key = VK_E then
    window.Close;
end;

procedure AntigonusEmpire();
begin
  picarr := new Picture[1];
  picarr[0] := new Picture('империя антигона.jpg');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Antigonus Empire';
  graphabc.OnKeyDown := ClickAntigonusEmpire;
end;

procedure ClickRussianEmpire(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 1 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(750,330);
          window.CenterOnScreen;
          window.Title := 'Russian Empire in 1914';
          picarr[0].Draw(0,0);
        end;
    1 : begin
          window.Clear;
          redraw;
          window.SetSize(619,437);
          window.CenterOnScreen;
          window.Title := 'Russian Empire';
          picarr[1].Draw(0,0);
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement';
  end;
  if key = VK_E then
    window.Close;
end;

procedure RussianEmpire();
begin
  picarr := new Picture[2];
  picarr[0] := new Picture('LocationRussianEmpire1914.png');
  picarr[1] := new Picture('russmap.gif');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Russian Empire';
  graphabc.OnKeyDown := ClickRussianEmpire; 
end;

procedure ClickMedia(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 1 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(800,444);
          window.CenterOnScreen;
          window.Title := 'Media';
          picarr[0].Draw(0,0);
        end;
    1 : begin
          window.Clear;
          redraw;
          window.SetSize(790,500);
          window.CenterOnScreen;
          window.Title := 'States before the Achemenids';
          picarr[1].Draw(0,0);
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement';
  end;
  if key = VK_E then
    window.Close;
end;

procedure Media();
begin
  picarr := new Picture[2];
  picarr[0] := new Picture('800px-Median_Empire.svg.png');
  picarr[1] := new Picture('государства до ахеменидов.jpg');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Media';
  graphabc.OnKeyDown := ClickMedia;
end;

procedure ClickAchemenidPersia(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 0 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(1000,535);
          window.CenterOnScreen;
          window.Title := 'Achemenid Persia';
          picarr[0].Draw(0,0);
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement';
  end;
  if key = VK_E then
    window.Close;
end;

procedure AchemenidPersia();
begin
  picarr := new Picture[1];
  picarr[0] := new Picture('персия ахеменидов.gif');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Achemenid Persia';
  graphabc.OnKeyDown := ClickAchemenidPersia;
end;

procedure ClickParthia(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 2 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(793,652);
          window.CenterOnScreen;
          window.Title := 'Parthia, 1 AD';
          picarr[0].Draw(0,0);
        end;
    1 : begin
          window.Clear;
          redraw;
          window.SetSize(650,358);
          window.CenterOnScreen;
          window.Title := 'Parthia, 100 AD';
          picarr[1].Draw(0,0);  
        end;
    2 : begin
          window.Clear;
          redraw;
          window.SetSize(545,351);
          window.CenterOnScreen;
          window.Title := 'The greatest extent';
          picarr[2].Draw(0,0);
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement';
  end;
  if key = VK_E then
    window.Close;
end;
  

procedure Parthia();
begin
  picarr := new Picture[3];
  picarr[0] := new Picture('Parthia_001ad.jpg');
  picarr[1] := new Picture('парфия - 100.gif');
  picarr[2] := new Picture('парфия - наибольшее расширение.jpg');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Parthia';
  graphabc.OnKeyDown := ClickParthia;
end;

procedure ClickSassanidPersia(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 0 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(250,165);
          window.CenterOnScreen;
          window.Title := 'Sassanids, 610 AD';
          picarr[0].Draw(0,0);
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement';
  end;
  if key = VK_E then
    window.Close;
end;

procedure SassanidPersia();
begin
  picarr := new Picture[1];
  picarr[0] := new Picture('Sassanid-empire-610CE.png');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Sassanid Persia';
  graphabc.OnKeyDown := ClickSassanidPersia;
end;

procedure ClickOttomanEmpire(key : integer);
begin
  i += 1;
  if key = VK_N then
  begin
    if i > 0 then i := 0;
    case i of
    0 : begin
          window.Clear;
          redraw;
          window.SetSize(300,240);
          window.CenterOnScreen;
          window.Title := 'Sassanids, 610 AD';
          picarr[0].Draw(0,0); 
        end;
    end;
  end;
  if key = VK_C then
  begin
    window.Clear;
    window.Title := 'Choose any statement';
  end;
  if key = VK_E then
    window.Close;
end;

procedure OttomanEmpire();
begin
  picarr := new Picture[1];
  picarr[0] := new Picture('Ottoman_small_animation.gif');
  window.SetSize(640,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Ottoman Empire';
  graphabc.OnKeyDown := ClickOttomanEmpire;
end;

procedure CallforManual();
begin
  window.SetSize(800,480);
  window.CenterOnScreen;
  window.Clear;
  window.Title := 'Manual';
  TextOut(40, window.Height div 3,'Click N for continue, click C for close, click E for exit. DONT CLOSE THIS WINDOW! JUST CHOOSE THE STATEMENT.');
end;

end.

