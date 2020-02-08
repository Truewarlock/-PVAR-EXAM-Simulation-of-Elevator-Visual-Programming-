unit Unit1;
//modelati o cladire cu trei etaje avand cabina de lift pe peretele lateral stanga
//simulati deplasaraea cabinei cu oprire la fiecare etaj si deschiderea usilor in timpul opririi

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
     procedure Timer1Timer(sender:Tobject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;

  deplasament,sus,a,b,c,faza:Integer;





implementation

 procedure TForm1.Timer1Timer(sender:Tobject);
    begin
      with Form1.Image1.Canvas do
        begin

         //fundal
 brush.color:=clskyblue;
 rectangle(-20,-20,2000,1000);
        //asfalt
 brush.color:=clgray;
 rectangle(-20,550,2000,1000);
  //soare
 brush.COlor:=clYellow;
 ellipse(850,150,900,200);

  //nume, prenume, examen
 pen.Color:=clRed;
 brush.color:=clwhite;
 rectangle(0,0,160,60);
 font.Size:=3;
 textout(5,5,'PATRONA VALENTIN MARIUS');
 textout(5,35,'              EXAMEN PVAR');
 pen.COlor:=clBlack;

 //BLOC
 deplasament:=200;
  //primul etaj
  brush.color:=clmoneygreen;
  rectangle(300+deplasament,400,800+deplasament,700);
  polygon([point(300+deplasament,400),point(200+deplasament,300),point(200+deplasament,600),point(300+deplasament,700)]);
  Brush.color:=clGray;
  polygon([point(260+deplasament,150+500),point(240+deplasament,140+500),point(240+deplasament,40+500),point(260+deplasament,50+500)]);
  brush.color:=clBlack;
  polygon([point(260+deplasament,150+500-a),point(240+deplasament,140+500-a),point(240+deplasament,40+500),point(260+deplasament,50+500)]);

  Brush.COlor:=ClBlue;
  rectangle(400+deplasament,500,550+deplasament,600);
  rectangle(400+deplasament+160,500,550+160+deplasament,600);
  //al doilea etaj
  brush.color:=clYellow;
  rectangle(300+deplasament,200,800+deplasament,400);
  polygon([point(300+deplasament,200),point(200+deplasament,100),point(200+deplasament,300),point(300+deplasament,400)]);
  brush.color:=clGray;
  polygon([point(260+deplasament,150+200),point(240+deplasament,140+200),point(240+deplasament,40+200),point(260+deplasament,50+200)]);
  brush.color:=clBlack;
  polygon([point(260+deplasament,150+200-b),point(240+deplasament,140+200-b),point(240+deplasament,40+200),point(260+deplasament,50+200)]);
  Brush.COlor:=ClBlue;
  rectangle(400+deplasament,280,550+deplasament,380);
  rectangle(400+deplasament+160,280,550+160+deplasament,380);
  //al treilea etaj
  brush.COlor:=clCream;
  rectangle(300+deplasament,0,800+deplasament,200);
  polygon([point(300+deplasament,0),point(300+deplasament,200),point(200+deplasament,100),point(200+deplasament,0)]);
  brush.color:=clGray;
  polygon([point(260+deplasament,150),point(240+deplasament,140),point(240+deplasament,40),point(260+deplasament,50)]);
  brush.color:=clBlack;
  polygon([point(260+deplasament,150-c),point(240+deplasament,140-c),point(240+deplasament,40),point(260+deplasament,50)]);
   Brush.COlor:=ClBlue;
  rectangle(400+deplasament,50,550+deplasament,80);
  rectangle(400+deplasament+160,50,550+160+deplasament,80);
  rectangle(400+deplasament,90,550+deplasament,120);
  rectangle(400+deplasament+160,90,550+160+deplasament,120);

  //lift
  Pen.COlor:=CLblue;
  Brush.Color:=clRed;
  polygon([point(300+deplasament,400+sus),point(200+deplasament,300+sus),point(150+deplasament,300+sus),point(250+deplasament,400+sus)]);
  Pen.Width:=10;
  Pen.COlor:=clRed;
  moveto(300+deplasament,700);
  LineTo(300+deplasament,0);
  moveto(200+deplasament,600);
  LineTo(200+deplasament,0);

  Pen.Width:=5;
  Pen.COlor:=ClBlue;
  moveTO(150+deplasament,300+sus);
  lineTO(150+deplasament,200+sus);
  lineTO(200+deplasament,100+sus);
  moveTO(250+deplasament,400+sus);
  lineTO(250+deplasament,300+sus);
  lineTO(300+deplasament,200+sus);
  pen.Width:=1;
   Pen.COlor:=ClBlack;
  Pen.Width:=1;
  Brush.COlor:=clGray;
  rectangle(295+deplasament,195+sus,305+deplasament,400+sus);
  rectangle(195+deplasament,95+sus,205+deplasament,300+sus);




  case faza of
  0:
  begin
  sus:=sus+1;
  if(sus>300) then faza:=1;
  end;

 1:
 begin
  a:=a+1;
  if(a>100) then faza:=2;
 end;

 2:
 begin
 a:=a-1;
  if(a=0) then faza:=3;

 end;
 3:
 begin
 sus:=sus-1;
 if(sus=0) then faza:=4;

 end;
 4:
 begin
  b:=b+1;
 if(b>100) then faza:=5;
 end;

 5:
 begin
  b:=b-1;
 if(b=0) then faza:=6
 end;
 6:
 begin
 sus:=sus-1;
 if (sus=-200) then faza:=7
 end;
 7:
 begin
 c:=c+1;
 if(c>100) then faza:=8;

 end;
 8:
 begin
 c:=c-1;
 if(c=0) then faza:=9
 end;
 9:
 begin
 sus:=sus+1;
 if (sus=0) then faza:=0;
 end;
   end;
         end;
         end;



{$R *.dfm}

end.
