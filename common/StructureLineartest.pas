unit StructureLineartest;

interface

uses Structure;


implementation

uses MaskUtils;


var
filetypeheader:Tfiletype;
owner:Towner;
header:Theader;

targetdata:TTargetData;

usertext:Tusertext;

runs:TRuns;

point:TPoint;

deviations:Tdeviations;

twonumbers:Ttwonumbers;

threenumbers:Tthreenumbers;

enviroment:TEnviroment;

i:byte;
runcountloop:Smallint;
begin
 filetypeheader:=rtl;
 owner:=toLinear;
 header.fileType:=filetypeheader;
 header.owner:=owner;
 header.versionNo:='V20.02.01';

 with targetdata do
 begin
 filetype:='ISO';
 targetcount:=15;
 flags:=0021;
 end;

 SetLength(targetdata.targets,targetdata.targetcount);
for i:=low(targetdata.targets) to high(targetdata.targets) do
begin
targetdata.targets[i]:=-280+i*50;
end;

with usertext do
begin
machine:='16К20';
serialNo:='123';
Date:='10-12-2015';
by:='Самейщев А.В.';
axis:='z';
location:='ТОЗ';
TITLE:='Измерение продольной оси';
end;

runs.runcount:=2;
runcountloop:=runs.runcount;

//SetLength(deviations,targetdata.targetcount*runs.runcount,3);

{  setLength(deviations, runs.runcount, targetdata.targetcount);
for runcountloop:=0 to runs.runcount-1 do
for targetdata.targets:=0 to targetdata.targetcount-1 do
begin
deviations[runs.runcount,targetdata.target].targetnumber:=target;
deviations[runs.runcount,targetdata.target].deviation:=random*20-10;
end;  }

with enviroment do
begin
with airtemp do
begin
number1:=26.234373;
number2:=26.281248;
number3:=0;
end;
with airpress do
begin  
number1:=101.140000;
number2:=101.160000 ;
number3:=2;
end;
with airhumid do
begin
number1:=37.378903;
number2:=37.653946;
end;
with mattemp1 do
begin
number1:=24.562498;
number2:=24.570311;
number3:=0;
end;
with mattemp2 do
begin
number1:=-10.000000;
number2:=-10.000000;
number3:=0;
end;
with mattemp3 do
begin
number1:=-10.000000;
number2:=-10.000000;
number3:=0;
end;
 with envfactor do
 begin
 number1:=0.31639452;
 number2:=0.31639449;
 end;
 with expcoeff do
 begin
 number1:=11.700000;
 number2:=11.700000;
 number3:=0;
 end;
datetime:="2014-10-08 10:53:42014-10-08 10:56:49";
with finaldata do
begin
number1:=1;
number2:=57;
end;
end;
end.
