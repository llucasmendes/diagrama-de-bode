function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 14-Feb-2014 18:53:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

global f;
global n;
global c;
global z;
global K;
global p;

f = zeros(8,1);
n = zeros(8,1);
c = zeros(8,1);
z = ones(8,1);
K = 1;
p = cell(8,1);

% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in dcc1.
function dcc1_Callback(hObject, eventdata, handles)
% hObject    handle to dcc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dcc1

global c;

c(1) = get(hObject,'Value');

if c(1)
    set(handles.n1, 'string', '2', 'enable', 'off');
    set(handles.z1, 'enable', 'on');
else
    set(handles.n1, 'string', '0', 'enable', 'on');
    set(handles.z1, 'string', '1', 'enable', 'off');
end

function w1_Callback(hObject, eventdata, handles)
% hObject    handle to w1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w1 as text
%        str2double(get(hObject,'String')) returns contents of w1 as a double

global f;

f(1) = str2double(get(hObject,'String'));


% --- Executes during object creation, after setting all properties.
function w1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dcc2.
function dcc2_Callback(hObject, eventdata, handles)
% hObject    handle to dcc2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dcc2

global c;

c(2) = get(hObject,'Value');

if c(2)
    set(handles.n2, 'string', '2', 'enable', 'off');
    set(handles.z2, 'enable', 'on');
else
    set(handles.n2, 'string', '0', 'enable', 'on');
    set(handles.z2, 'string', '1', 'enable', 'off');
end

function w3_Callback(hObject, eventdata, handles)
% hObject    handle to w3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w3 as text
%        str2double(get(hObject,'String')) returns contents of w3 as a double

global f;

f(3) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function w3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dcc3.
function dcc3_Callback(hObject, eventdata, handles)
% hObject    handle to dcc3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dcc3

global c;

c(3) = get(hObject,'Value');

if c(3)
    set(handles.n3, 'string', '2', 'enable', 'off');
    set(handles.z3, 'enable', 'on');
else
    set(handles.n3, 'string', '0', 'enable', 'on');
    set(handles.z3, 'string', '1', 'enable', 'off');
end

function z3_Callback(hObject, eventdata, handles)
% hObject    handle to z3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z3 as text
%        str2double(get(hObject,'String')) returns contents of z3 as a double

global z;

z(3) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function z3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w4_Callback(hObject, eventdata, handles)
% hObject    handle to w4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w4 as text
%        str2double(get(hObject,'String')) returns contents of w4 as a double

global f;

f(4) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function w4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dcc4.
function dcc4_Callback(hObject, eventdata, handles)
% hObject    handle to dcc4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dcc4

global c;

c(4) = get(hObject,'Value');

if c(4)
    set(handles.n4, 'string', '2', 'enable', 'off');
    set(handles.z4, 'enable', 'on');
else
    set(handles.n4, 'string', '0', 'enable', 'on');
    set(handles.z4, 'string', '1', 'enable', 'off');
end

function z4_Callback(hObject, eventdata, handles)
% hObject    handle to z4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z4 as text
%        str2double(get(hObject,'String')) returns contents of z4 as a double

global z;

z(4) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function z4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function z1_Callback(hObject, eventdata, handles)
% hObject    handle to z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z1 as text
%        str2double(get(hObject,'String')) returns contents of z1 as a double

global z;

z(1) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function z1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w2_Callback(hObject, eventdata, handles)
% hObject    handle to w2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w2 as text
%        str2double(get(hObject,'String')) returns contents of w2 as a double

global f;

f(2) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function w2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function z2_Callback(hObject, eventdata, handles)
% hObject    handle to z2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z2 as text
%        str2double(get(hObject,'String')) returns contents of z2 as a double

global z;

z(2) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function z2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w7_Callback(hObject, eventdata, handles)
% hObject    handle to w7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w7 as text
%        str2double(get(hObject,'String')) returns contents of w7 as a double

global f;

f(7) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function w7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dcc7.
function dcc7_Callback(hObject, eventdata, handles)
% hObject    handle to dcc7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dcc7

global c;

c(7) = get(hObject,'Value');

if c(7)
    set(handles.n7, 'string', '2', 'enable', 'off');
    set(handles.z7, 'enable', 'on');
else
    set(handles.n7, 'string', '0', 'enable', 'on');
    set(handles.z7, 'string', '1', 'enable', 'off');
end

function z7_Callback(hObject, eventdata, handles)
% hObject    handle to z7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z7 as text
%        str2double(get(hObject,'String')) returns contents of z7 as a double

global z;

z(7) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function z7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w8_Callback(hObject, eventdata, handles)
% hObject    handle to w8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w8 as text
%        str2double(get(hObject,'String')) returns contents of w8 as a double

global f;

f(8) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function w8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dcc8.
function dcc8_Callback(hObject, eventdata, handles)
% hObject    handle to dcc8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dcc8

global c;

c(8) = get(hObject,'Value');

if c(8)
    set(handles.n8, 'string', '2', 'enable', 'off');
    set(handles.z8, 'enable', 'on');
else
    set(handles.n8, 'string', '0', 'enable', 'on');
    set(handles.z8, 'string', '1', 'enable', 'off');
end

function z8_Callback(hObject, eventdata, handles)
% hObject    handle to z8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z8 as text
%        str2double(get(hObject,'String')) returns contents of z8 as a double

global z;

z(8) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function z8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w5_Callback(hObject, eventdata, handles)
% hObject    handle to w5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w5 as text
%        str2double(get(hObject,'String')) returns contents of w5 as a double

global f;

f(5) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function w5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dcc5.
function dcc5_Callback(hObject, eventdata, handles)
% hObject    handle to dcc5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dcc5

global c;

c(5) = get(hObject,'Value');

if c(5)
    set(handles.n5, 'string', '2', 'enable', 'off');
    set(handles.z5, 'enable', 'on');
else
    set(handles.n5, 'string', '0', 'enable', 'on');
    set(handles.z5, 'string', '1', 'enable', 'off');
end

function z5_Callback(hObject, eventdata, handles)
% hObject    handle to z5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z5 as text
%        str2double(get(hObject,'String')) returns contents of z5 as a double

global z;

z(5) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function z5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w6_Callback(hObject, eventdata, handles)
% hObject    handle to w6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w6 as text
%        str2double(get(hObject,'String')) returns contents of w6 as a double

global f;

f(6) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function w6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dcc6.
function dcc6_Callback(hObject, eventdata, handles)
% hObject    handle to dcc6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dcc6

global c;

c(6) = get(hObject,'Value');

if c(6)
    set(handles.n6, 'string', '2', 'enable', 'off');
    set(handles.z6, 'enable', 'on');
else
    set(handles.n6, 'string', '0', 'enable', 'on');
    set(handles.z6, 'string', '1', 'enable', 'off');
end

function z6_Callback(hObject, eventdata, handles)
% hObject    handle to z6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z6 as text
%        str2double(get(hObject,'String')) returns contents of z6 as a double

global z;

z(6) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function z6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n1_Callback(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n1 as text
%        str2double(get(hObject,'String')) returns contents of n1 as a double

global n;

n(1) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function n1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n2_Callback(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n2 as text
%        str2double(get(hObject,'String')) returns contents of n2 as a double

global n;

n(2) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function n2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n3_Callback(hObject, eventdata, handles)
% hObject    handle to n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n3 as text
%        str2double(get(hObject,'String')) returns contents of n3 as a double

global n;

n(3) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function n3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n4_Callback(hObject, eventdata, handles)
% hObject    handle to n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n4 as text
%        str2double(get(hObject,'String')) returns contents of n4 as a double

global n;

n(4) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function n4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n5_Callback(hObject, eventdata, handles)
% hObject    handle to n5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n5 as text
%        str2double(get(hObject,'String')) returns contents of n5 as a double

global n;

n(5) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function n5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n6_Callback(hObject, eventdata, handles)
% hObject    handle to n6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n6 as text
%        str2double(get(hObject,'String')) returns contents of n6 as a double

global n;

n(6) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function n6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n7_Callback(hObject, eventdata, handles)
% hObject    handle to n7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n7 as text
%        str2double(get(hObject,'String')) returns contents of n7 as a double

global n;

n(7) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function n7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n8_Callback(hObject, eventdata, handles)
% hObject    handle to n8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n8 as text
%        str2double(get(hObject,'String')) returns contents of n8 as a double

global n;

n(8) = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function n8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in criar.
function criar_Callback(hObject, eventdata, handles)
% hObject    handle to criar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global f; % Matriz de frequências
global n; % Matriz de graus
global c; % Matriz de complexos conjugados
global z; % Matriz de zetas
global K; % Valor de K
global p; % Células de polinômios

% Criação dos polinômios

for i=1:8
    if c(i)
        p{i} = [1 2*z(i)*f(i) f(i)^2];
    else
        switch n(i)
            case 0
                p{i} = [1];
            case 1
                p{i} = [1 f(i)];
            otherwise
                j = n(i)-1;
                temp = [1 f(i)];
                p{i} = temp;
                while (j)
                    p{i} = conv(p{i},temp);
                    j = j-1;
                end
        end
    end
end

num = K*conv(conv(conv(p{1},p{2}),p{3}),p{4});
den = conv(conv(conv(p{5},p{6}),p{7}),p{8});

H = tf(num, den) % Montagem de H(s)

% Obtenção dos ganhos, fases e frequências

if get(handles.deltaw,'Value')
    wi = str2double(get(handles.wmin,'String'));
    wf = str2double(get(handles.wmax,'String'));
    if get(handles.feqhz,'Value')
        w = {2*pi*wi,2*pi*wf};
    else
        w = {wi,wf};
    end
    [ganho, fase, w] = bode(H,w);
    w = reshape(w,[],1);
else
    [ganho, fase, w] = bode(H);
end

ganhodb = 20*log10(ganho);

ganhodb = reshape(ganhodb,[],1);
fase = reshape(fase,[],1);

if get(handles.feqhz,'Value')
    w = w/(2*pi);
end

% Início do tratamento da fase para abranger
% apenas valores de -180° a +180°

fase = rem(fase,360);

for i=1:(length(fase))
    if (fase(i) > -180) & (fase(i) <= 180)
        continue;
    else
        switch sign(fase(i))
            case 1
                fase(i) = -180 + rem(fase(i),180);
            case -1
                fase(i) = 180 + rem(fase(i),180);
        end
    end
end

% Plot dos diagramas

pontosy = reshape(linspace(-180,+180,9),[],1);
unidade = get(get(handles.unidade,'SelectedObject'),'String');

axes(handles.axes1);
semilogx(w,ganhodb);
axis([min(w) max(w) min(ganhodb)-5 max(ganhodb)+5]);
set(handles.unidade1,'String',unidade);
set(handles.axes1,'XGrid','on','YGrid','on');

axes(handles.axes2);
semilogx(w,fase,'-r');
axis([min(w) max(w) -180 +180]);
set(handles.unidade2,'String',unidade);
set(handles.axes2,'XGrid','on','YGrid','on','YTick',pontosy);



function valor_k_Callback(hObject, eventdata, handles)
% hObject    handle to valor_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valor_k as text
%        str2double(get(hObject,'String')) returns contents of valor_k as a double

global K;

K = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function valor_k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valor_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in deltaw.
function deltaw_Callback(hObject, eventdata, handles)
% hObject    handle to deltaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of deltaw

if get(hObject,'Value');
    set(handles.wmin, 'enable', 'on');
    set(handles.wmax, 'enable', 'on');
else
    set(handles.wmin, 'enable', 'off');
    set(handles.wmax, 'enable', 'off');
end

function wmin_Callback(hObject, eventdata, handles)
% hObject    handle to wmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wmin as text
%        str2double(get(hObject,'String')) returns contents of wmin as a double


% --- Executes during object creation, after setting all properties.
function wmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wmax_Callback(hObject, eventdata, handles)
% hObject    handle to wmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wmax as text
%        str2double(get(hObject,'String')) returns contents of wmax as a double


% --- Executes during object creation, after setting all properties.
function wmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when unidade is resized.
function unidade_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to unidade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected object is changed in unidade.
function unidade_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in unidade 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
