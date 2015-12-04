//***************************************************************************
//
//       名称：DuiActiveX.pas
//       工具：RAD Studio XE6
//       日期：2015/12/2
//       作者：ying32
//       QQ  ：1444386932
//       E-mail：1444386932@qq.com
//       版权所有 (C) 2015-2015 ying32 All Rights Reserved
//
//       注：这个单元是使用自动转换后手动建立的
//***************************************************************************
unit DuiActiveX;

interface

uses
  Windows,
  ActiveX,
  Duilib;

type

  CActiveXUI = class(CControlUI)
  private
    function GetClisd: TCLSID;
    function GetModuleName: CDuiString;
    procedure SetModuleName(pstrText: LPCTSTR);
    function GetHostWindow: HWND;
    function IsDelayCreate: Boolean;
    procedure SetDelayCreate(bDelayCreate: Boolean = True);
  public
    class function CppCreate: CActiveXUI;
    procedure CppDestroy;
    function GetClass: LPCTSTR;
    function GetInterface(pstrName: LPCTSTR): Pointer;
    function CreateControl(const clsid: TCLSID): Boolean; overload;
    function CreateControl(pstrCLSID: LPCTSTR): Boolean; overload;
    function GetControl(const iid: TIID; ppRet: PPointer): HRESULT;
    procedure SetVisible(bVisible: Boolean = True);
    procedure SetInternVisible(bVisible: Boolean = True);
    procedure SetPos(rc: TRect; bNeedInvalidate: Boolean = True);
    procedure Move(szOffset: TSize; bNeedInvalidate: Boolean = True);
    procedure DoPaint(hDC: HDC; var rcPaint: TRect);
    procedure SetAttribute(pstrName: LPCTSTR; pstrValue: LPCTSTR);
  private
    function _GetModuleName: string;
    procedure _SetModuleName(const Value: string);
  public
    property Clisd: TCLSID read GetClisd;
    property DelayCreate: Boolean read IsDelayCreate write SetDelayCreate;
    property HostWindow: HWND read GetHostWindow;
    property ModuleName: string read _GetModuleName write _SetModuleName;
  end;


//================================CActiveXUI============================

function Delphi_ActiveXUI_CppCreate: CActiveXUI; cdecl;
procedure Delphi_ActiveXUI_CppDestroy(Handle: CActiveXUI); cdecl;
function Delphi_ActiveXUI_GetClass(Handle: CActiveXUI): LPCTSTR; cdecl;
function Delphi_ActiveXUI_GetInterface(Handle: CActiveXUI; pstrName: LPCTSTR): Pointer; cdecl;
function Delphi_ActiveXUI_GetHostWindow(Handle: CActiveXUI): HWND; cdecl;
function Delphi_ActiveXUI_IsDelayCreate(Handle: CActiveXUI): Boolean; cdecl;
procedure Delphi_ActiveXUI_SetDelayCreate(Handle: CActiveXUI; bDelayCreate: Boolean); cdecl;
function Delphi_ActiveXUI_CreateControl_01(Handle: CActiveXUI; const clsid: TCLSID): Boolean; cdecl;
function Delphi_ActiveXUI_CreateControl_02(Handle: CActiveXUI; pstrCLSID: LPCTSTR): Boolean; cdecl;
function Delphi_ActiveXUI_GetControl(Handle: CActiveXUI; const iid: TIID; ppRet: PPointer): HRESULT; cdecl;
procedure Delphi_ActiveXUI_GetClisd(Handle: CActiveXUI; var Result: TCLSID); cdecl;
function Delphi_ActiveXUI_GetModuleName(Handle: CActiveXUI): CDuiString; cdecl;
procedure Delphi_ActiveXUI_SetModuleName(Handle: CActiveXUI; pstrText: LPCTSTR); cdecl;
procedure Delphi_ActiveXUI_SetVisible(Handle: CActiveXUI; bVisible: Boolean); cdecl;
procedure Delphi_ActiveXUI_SetInternVisible(Handle: CActiveXUI; bVisible: Boolean); cdecl;
procedure Delphi_ActiveXUI_SetPos(Handle: CActiveXUI; rc: TRect; bNeedInvalidate: Boolean); cdecl;
procedure Delphi_ActiveXUI_Move(Handle: CActiveXUI; szOffset: TSize; bNeedInvalidate: Boolean); cdecl;
procedure Delphi_ActiveXUI_DoPaint(Handle: CActiveXUI; hDC: HDC; var rcPaint: TRect); cdecl;
procedure Delphi_ActiveXUI_SetAttribute(Handle: CActiveXUI; pstrName: LPCTSTR; pstrValue: LPCTSTR); cdecl;

implementation


{ CActiveXUI }

class function CActiveXUI.CppCreate: CActiveXUI;
begin
  Result := Delphi_ActiveXUI_CppCreate;
end;

procedure CActiveXUI.CppDestroy;
begin
  Delphi_ActiveXUI_CppDestroy(Self);
end;

function CActiveXUI.GetClass: LPCTSTR;
begin
  Result := Delphi_ActiveXUI_GetClass(Self);
end;

function CActiveXUI.GetInterface(pstrName: LPCTSTR): Pointer;
begin
  Result := Delphi_ActiveXUI_GetInterface(Self, pstrName);
end;

function CActiveXUI.GetHostWindow: HWND;
begin
  Result := Delphi_ActiveXUI_GetHostWindow(Self);
end;

function CActiveXUI.IsDelayCreate: Boolean;
begin
  Result := Delphi_ActiveXUI_IsDelayCreate(Self);
end;

procedure CActiveXUI.SetDelayCreate(bDelayCreate: Boolean);
begin
  Delphi_ActiveXUI_SetDelayCreate(Self, bDelayCreate);
end;

function CActiveXUI.CreateControl(const clsid: TCLSID): Boolean;
begin
  Result := Delphi_ActiveXUI_CreateControl_01(Self, clsid);
end;

function CActiveXUI.CreateControl(pstrCLSID: LPCTSTR): Boolean;
begin
  Result := Delphi_ActiveXUI_CreateControl_02(Self, pstrCLSID);
end;

function CActiveXUI.GetControl(const iid: TIID; ppRet: PPointer): HRESULT;
begin
  Result := Delphi_ActiveXUI_GetControl(Self, iid, ppRet);
end;

function CActiveXUI.GetClisd: TCLSID;
begin
  Delphi_ActiveXUI_GetClisd(Self, Result);
end;

function CActiveXUI.GetModuleName: CDuiString;
begin
  Result := Delphi_ActiveXUI_GetModuleName(Self);
end;

procedure CActiveXUI.SetModuleName(pstrText: LPCTSTR);
begin
  Delphi_ActiveXUI_SetModuleName(Self, pstrText);
end;

procedure CActiveXUI.SetVisible(bVisible: Boolean);
begin
  Delphi_ActiveXUI_SetVisible(Self, bVisible);
end;

function CActiveXUI._GetModuleName: string;
begin
  Result := GetModuleName;
end;

procedure CActiveXUI._SetModuleName(const Value: string);
begin
  SetModuleName(PChar(Value));
end;

procedure CActiveXUI.SetInternVisible(bVisible: Boolean);
begin
  Delphi_ActiveXUI_SetInternVisible(Self, bVisible);
end;

procedure CActiveXUI.SetPos(rc: TRect; bNeedInvalidate: Boolean);
begin
  Delphi_ActiveXUI_SetPos(Self, rc, bNeedInvalidate);
end;

procedure CActiveXUI.Move(szOffset: TSize; bNeedInvalidate: Boolean);
begin
  Delphi_ActiveXUI_Move(Self, szOffset, bNeedInvalidate);
end;

procedure CActiveXUI.DoPaint(hDC: HDC; var rcPaint: TRect);
begin
  Delphi_ActiveXUI_DoPaint(Self, hDC, rcPaint);
end;

procedure CActiveXUI.SetAttribute(pstrName: LPCTSTR; pstrValue: LPCTSTR);
begin
  Delphi_ActiveXUI_SetAttribute(Self, pstrName, pstrValue);
end;




//================================CActiveXUI============================

function Delphi_ActiveXUI_CppCreate; external DuiLibdll name 'Delphi_ActiveXUI_CppCreate';
procedure Delphi_ActiveXUI_CppDestroy; external DuiLibdll name 'Delphi_ActiveXUI_CppDestroy';
function Delphi_ActiveXUI_GetClass; external DuiLibdll name 'Delphi_ActiveXUI_GetClass';
function Delphi_ActiveXUI_GetInterface; external DuiLibdll name 'Delphi_ActiveXUI_GetInterface';
function Delphi_ActiveXUI_GetHostWindow; external DuiLibdll name 'Delphi_ActiveXUI_GetHostWindow';
function Delphi_ActiveXUI_IsDelayCreate; external DuiLibdll name 'Delphi_ActiveXUI_IsDelayCreate';
procedure Delphi_ActiveXUI_SetDelayCreate; external DuiLibdll name 'Delphi_ActiveXUI_SetDelayCreate';
function Delphi_ActiveXUI_CreateControl_01; external DuiLibdll name 'Delphi_ActiveXUI_CreateControl_01';
function Delphi_ActiveXUI_CreateControl_02; external DuiLibdll name 'Delphi_ActiveXUI_CreateControl_02';
function Delphi_ActiveXUI_GetControl; external DuiLibdll name 'Delphi_ActiveXUI_GetControl';
procedure Delphi_ActiveXUI_GetClisd; external DuiLibdll name 'Delphi_ActiveXUI_GetClisd';
function Delphi_ActiveXUI_GetModuleName; external DuiLibdll name 'Delphi_ActiveXUI_GetModuleName';
procedure Delphi_ActiveXUI_SetModuleName; external DuiLibdll name 'Delphi_ActiveXUI_SetModuleName';
procedure Delphi_ActiveXUI_SetVisible; external DuiLibdll name 'Delphi_ActiveXUI_SetVisible';
procedure Delphi_ActiveXUI_SetInternVisible; external DuiLibdll name 'Delphi_ActiveXUI_SetInternVisible';
procedure Delphi_ActiveXUI_SetPos; external DuiLibdll name 'Delphi_ActiveXUI_SetPos';
procedure Delphi_ActiveXUI_Move; external DuiLibdll name 'Delphi_ActiveXUI_Move';
procedure Delphi_ActiveXUI_DoPaint; external DuiLibdll name 'Delphi_ActiveXUI_DoPaint';
procedure Delphi_ActiveXUI_SetAttribute; external DuiLibdll name 'Delphi_ActiveXUI_SetAttribute';



end.
