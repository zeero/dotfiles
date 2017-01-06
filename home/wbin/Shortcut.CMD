@if(0)==(0) ECHO OFF
CScript.exe //NoLogo //E:JScript "%~f0" %*
GOTO :EOF
@end
// Shortcut.JS V1.02 (C) yoshioka.teruo@nifty.com 2008-11-26
// Shortcut.JS creates/shows shortcut/internet shortcut.
// Usage: Shortcut [/t:TargetPath] [/a:Arguments] [/w:WorkingDirectory] [/s:WindowStyle] [/k:HotKey] [/i:IconLocation] [/d:Description] name.{lnk|url}
var TargetPath;
var Arguments;
var WorkingDirectory;
var WindowStyle;
var HotKey;
var IconLocation;
var Description;
f1:for(var k=0;k<WScript.Arguments.Count();k++){
  switch(WScript.Arguments.Item(k).substr(0,3).toLowerCase()){
  case "/t:":
    TargetPath=WScript.Arguments.Item(k).substr(3);
    break;
  case "/a:":
    Arguments=WScript.Arguments.Item(k).substr(3);
    Arguments=Arguments.replace(/`/g,'"');
    break;
  case "/w:":
    WorkingDirectory=WScript.Arguments.Item(k).substr(3);
    break;
  case "/s:":
    WindowStyle=WScript.Arguments.Item(k).substr(3);
    WindowStyle=parseInt(WindowStyle);
    if(isNaN(WindowStyle)){
      WScript.Echo("Invalid Window Style - " + WScript.Arguments.Item(k));
      WScript.Quit();
    }
    break;
  case "/k:":
    HotKey=WScript.Arguments.Item(k).substr(3);
    break;
  case "/i:":
    IconLocation=WScript.Arguments.Item(k).substr(3);
    break;
  case "/d:":
    Description=WScript.Arguments.Item(k).substr(3);
    break;
  default:
    break f1;
  }
}
if(k==WScript.Arguments.Count()){
  WScript.Echo("Usage: Shortcut [/t:TargetPath] [/a:Arguments] [/w:WorkingDirectory] [/s:WindowStyle] [/k:HotKey] [/i:IconLocation] [/d:Description] name.{lnk|url}");
  WScript.Quit();
}
var FullName=WScript.Arguments.Item(k);
if(FullName.substr(FullName.length-4).toLowerCase()==".url"){
  var fso=new ActiveXObject("Scripting.FileSystemObject");
  var FullName=fso.GetAbsolutePathName(FullName);
  var Shell=new ActiveXObject("Shell.Application");
  if(!fso.FileExists(FullName)) fso.CreateTextFile(FullName);
  var FolderName=fso.GetParentFolderName(FullName);
  var FileName=fso.GetFileName(FullName);
  var Folder=Shell.NameSpace(FolderName);
  var FolderItem=Folder.Items().Item(FileName);
  var Link=FolderItem.GetLink;
  if(k){
    if(TargetPath!=undefined) Link.Path=TargetPath;
    if(WorkingDirectory!=undefined) Link.WorkingDirectory=WorkingDirectory;
    if(WindowStyle!=undefined) Link.ShowCommand=WindowStyle;
    if(HotKey!=undefined) Link.HotKey=HotKey;
    if(IconLocation!=undefined) Link.SetIconLocation(IconLocation.split(",")[0],parseInt(IconLocation.split(",")[1]));
    if(Description!=undefined) Link.Description=Description;
    Link.Save();
  }else{
    WScript.Echo(new Array(
    "FullName\t " + FolderItem.Path,
    "TargetPath\t " + Link.Path,
    "WorkingDirectory " + Link.WorkingDirectory,
    "ShowCommand\t " + Link.ShowCommand,
    "Hotkey\t\t " + Link.Hotkey,
    "IconLocation\t " + GetIconLocation() + "," + Link.GetIconLocation(""),
    "Description\t " + Link.Description).join("\n"));
  }
}else{
  var wShell=new ActiveXObject("WScript.Shell");
  var Link=wShell.CreateShortcut(FullName);
  if(k){
    if(TargetPath!=undefined) Link.TargetPath=TargetPath;
    if(Arguments!=undefined) Link.Arguments=Arguments;
    if(WorkingDirectory!=undefined) Link.WorkingDirectory=WorkingDirectory;
    if(WindowStyle!=undefined) Link.WindowStyle=WindowStyle;
    if(HotKey!=undefined) Link.HotKey=HotKey;
    if(IconLocation!=undefined) Link.IconLocation=IconLocation;
    if(Description!=undefined) Link.Description=Description;
    Link.Save();
  }else{
    WScript.Echo(new Array(
    "FullName\t " + Link.FullName,
    "TargetPath\t " + Link.TargetPath,
    "Arguments\t " + Link.Arguments,
    "WorkingDirectory " + Link.WorkingDirectory,
    "WindowStyle\t " + Link.WindowStyle,
    "Hotkey\t\t " + Link.Hotkey,
    "IconLocation\t " + Link.IconLocation,
    "Description\t " + Link.Description).join("\n"));
  }
}
function GetIconLocation(){
  var r=fso.OpenTextFile(FolderItem.Path).ReadAll().match(/IconFile=([^\r]*)/im);
  return r?r[1]:"";
}
