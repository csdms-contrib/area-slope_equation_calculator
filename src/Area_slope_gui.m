function varargout = Area_slope_gui(varargin)
% AREA_SLOPE_GUI M-file for Area_slope_gui.fig
%      AREA_SLOPE_GUI, by itself, creates a new AREA_SLOPE_GUI or raises the existing
%      singleton*.
%
%      H = AREA_SLOPE_GUI returns the handle to a new AREA_SLOPE_GUI or the handle to
%      the existing singleton*.
%
%      AREA_SLOPE_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AREA_SLOPE_GUI.M with the given input arguments.
%
%      AREA_SLOPE_GUI('Property','Value',...) creates a new AREA_SLOPE_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Area_slope_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Area_slope_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Area_slope_gui

% Last Modified by GUIDE v2.5 29-Aug-2009 10:27:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Area_slope_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @Area_slope_gui_OutputFcn, ...
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


% --- Executes just before Area_slope_gui is made visible.
function Area_slope_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Area_slope_gui (see VARARGIN)

% Choose default command line output for Area_slope_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Area_slope_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Area_slope_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on key press with focus on figure1 or any of its controls.
function figure1_WindowKeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over text4.
function text4_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function flowdir_edit_Callback(hObject, eventdata, handles)
% hObject    handle to flowdir_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of flowdir_edit as text
%        str2double(get(hObject,'String')) returns contents of flowdir_edit as a double
set(handles.flowdir_edit, 'String', 'rrrrrr');

% --- Executes during object creation, after setting all properties.
function flowdir_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to flowdir_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function area_edit_text_Callback(hObject, eventdata, handles)
% hObject    handle to area_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_edit_text as text
%        str2double(get(hObject,'String')) returns contents of area_edit_text as a double


% --- Executes during object creation, after setting all properties.
function area_edit_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function slope_edit_Callback(hObject, eventdata, handles)
% hObject    handle to slope_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slope_edit as text
%        str2double(get(hObject,'String')) returns contents of slope_edit as a double


% --- Executes during object creation, after setting all properties.
function slope_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slope_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.txt','Select the Flow Direction file');
Flow_file=[PathName,FileName];
set(handles.flowdir_edit,'String',Flow_file);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.txt','Select the Area file');
Area_file=[PathName,FileName];
set(handles.area_edit_text,'String',Area_file);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.txt','Select the Slope file');
Slope_file=[PathName,FileName];
set(handles.slope_edit,'String',Slope_file);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%[FileName,PathName] = uigetfile('*.txt','Save Alpha File');
[FileName,PathName] = uiputfile('*.txt','Save Alpha File');
Alpha_file=[PathName,FileName];
set(handles.alpha_edit,'String',Alpha_file);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uiputfile('*.txt','Save Constant File');
Cons_file=[PathName,FileName];
set(handles.cons_edit,'String',Cons_file);


function alpha_edit_Callback(hObject, eventdata, handles)
% hObject    handle to alpha_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha_edit as text
%        str2double(get(hObject,'String')) returns contents of alpha_edit as a double


% --- Executes during object creation, after setting all properties.
function alpha_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cons_edit_Callback(hObject, eventdata, handles)
% hObject    handle to cons_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cons_edit as text
%        str2double(get(hObject,'String')) returns contents of cons_edit as a double


% --- Executes during object creation, after setting all properties.
function cons_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cons_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate_button.
function calculate_button_Callback(hObject, eventdata, handles)
% hObject    handle to calculate_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
m=msgbox('Calculating','Calculating','warn');
Area_slope_calc_fgui_ArcGIS(get(handles.flowdir_edit,'string'),...
get(handles.area_edit_text,'string'),get(handles.slope_edit,'string'),...
get(handles.alpha_edit,'string'),get(handles.cons_edit,'string'));
delete (m); 
msgbox('Alpha and Constant files successfully generated','End');
