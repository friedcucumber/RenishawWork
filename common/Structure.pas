unit Structure;

interface
  type
      Tfiletype=(rtl,rta,rtx,stx,stz);
  Towner=(toLinear, toAngle, toDynamic, toStraight);
  Theader=record
    fileType:TFileType;
    owner:Towner;
    versionNo:string[20];
  end;
  TTargetData=record
    filetype:string;
    targetcount:Smallint;
    targets:array of real;
    flags:integer;
  end;
Tusertext=record
    machine:string;
    serialNo:string[30];
    Date:string[40];
    by:string;
    axis:string;
    location:string;
    TITLE:string;
  end;
  TRuns=record
    runcount:smallint;
  end;
 TPoint=record
     targetnumber:smallint;
     deviation:real;
   end;
  Tdeviations=array of array of Tpoint;
  
  Ttwonumbers=record
    number1:real;
   number2:real; 
  end;
  Tthreenumbers=record
    number1:real;
   number2:real;
   number3:byte;
  end;
TEnviroment=record
airtemp:Tthreenumbers;
airpress:Tthreenumbers;
airhumd:Ttwonumbers;
mattemp1:Tthreenumbers;
mattemp2:Tthreenumbers;
mattemp3:Tthreenumbers;
envfactor:Ttwonumbers;
expcoeff:Tthreenumbers;
datetime:string;
finaldata:byte;
end;
  Tresult=record
    header:Theader;
    targetDate:TTargetData;
    usertext:Tusertext;
    runs:TRuns;
    Deviations:TDeviations;
    Enviroment:TEnviroment;
  end;
implementation

end.
 