function varargout = cylinder(varargin)
% CYLINDER MATLAB code for cylinder.fig
%      CYLINDER, by itself, creates a new CYLINDER or raises the existing
%      singleton*.
%
%      H = CYLINDER returns the handle to a new CYLINDER or the handle to
%      the existing singleton*.
%
%      CYLINDER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CYLINDER.M with the given input arguments.
%
%      CYLINDER('Property','Value',...) creates a new CYLINDER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cylinder_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cylinder_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cylinder

% Last Modified by GUIDE v2.5 16-Jul-2017 10:57:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cylinder_OpeningFcn, ...
                   'gui_OutputFcn',  @cylinder_OutputFcn, ...
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


% --- Executes just before cylinder is made visible.
function cylinder_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cylinder (see VARARGIN)





[x1,theta] = meshgrid(-2:0.1:2 ,0:0.1*pi:2*pi);
r=2;
z=r*cos(theta);
y=r*sin(theta);

[phi,theta] = meshgrid(0:0.1*pi:pi ,0:0.1*pi:2*pi);
r=2;
a= cos(phi).*cos(theta).*r;
b= cos(phi).*sin(theta).*r;
x2=r*sin(phi)+2*ones(size(a));
direction = [0 1 3];
z=[z,a];
y=[y,b];
x1=[x1,x2];
x2=-1.*x2;
z=[z,a];
y=[y,b];
x1=[x1,x2];
z = cosd(90).*z + sind(90).*x1 ;
x1 = -sind(90).*z  + cosd(490).*x1;

h1=surf(z,y,x1);

%alpha(h2, 0.1);-
%rotate(h1,direction,90);

axis equal;            %# Make the scaling on the x, y, and z axes equal





% Choose default command line output for cylinder
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cylinder wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cylinder_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
