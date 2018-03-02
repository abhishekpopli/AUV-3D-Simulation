
function varargout = abhishek(varargin)
% ABHISHEK MATLAB code for abhishek.fig
%      ABHISHEK, by itself, creates a new ABHISHEK or raises the existing
%      singleton*.
%
%      H = ABHISHEK returns the handle to a new ABHISHEK or the handle to
%      the existing singleton*.
%
%      ABHISHEK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ABHISHEK.M with the given input arguments.
%
%      ABHISHEK('Property','Value',...) creates a new ABHISHEK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before abhishek_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to abhishek_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help abhishek

% Last Modified by GUIDE v2.5 17-Jul-2017 19:36:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @abhishek_OpeningFcn, ...
                   'gui_OutputFcn',  @abhishek_OutputFcn, ...
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


% --- Executes just before abhishek is made visible.
function abhishek_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to abhishek (see VARARGIN)

% Choose default command line output for abhishek
handles.output = hObject;
handles.angle = 0;
mainfun(hObject,handles);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes abhishek wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = abhishek_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function mainfun(hObject,handles)


handles.output = hObject;
angle = handles.angle;
[x1,theta] = meshgrid(0:0.2:4 ,0:0.02*pi:2*pi);
r=0.35;
z=r*cos(theta);
y=r*sin(theta);
[x,theta] = meshgrid(0:0.02:0.75 ,0:0.02*pi:2*pi);

r1 = 0.35*(1-((x-0.75)./0.75).^2).^(1/2);
a1= r1.*cos(theta);
b1=r1.*sin(theta);
%surf(a,b,z)

z=[z,a1];
y=[y,b1];
x1=[x1+0.75,x];
 z=[z,a1];
 y=[y,b1];
x1=[x1,-x+5.5];
  
x2 = cosd(angle).*x1 + sind(angle).*z ;
z1 = -sind(angle).*x1  + cosd(angle).*z;
surf(x2,y,-z1)
xlabel('x')
ylabel('y')
zlabel('z')
axis equal;
guidata(hObject, handles);

% --- Executes on slider movement.
function slider_Callback(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.angle = get(handles.slider,'value')*360;
mainfun(hObject,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
