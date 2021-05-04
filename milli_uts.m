function varargout = milli_uts(varargin)
% MILLI_UTS MATLAB code for milli_uts.fig
%      MILLI_UTS, by itself, creates a new MILLI_UTS or raises the existing
%      singleton*.
%
%      H = MILLI_UTS returns the handle to a new MILLI_UTS or the handle to
%      the existing singleton*.
%
%      MILLI_UTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MILLI_UTS.M with the given input arguments.
%
%      MILLI_UTS('Property','Value',...) creates a new MILLI_UTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before milli_uts_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to milli_uts_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help milli_uts

% Last Modified by GUIDE v2.5 04-May-2021 18:58:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @milli_uts_OpeningFcn, ...
                   'gui_OutputFcn',  @milli_uts_OutputFcn, ...
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


% --- Executes just before milli_uts is made visible.
function milli_uts_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to milli_uts (see VARARGIN)

% Choose default command line output for milli_uts
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes milli_uts wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = milli_uts_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.jpg','*.png'});
img = imread([pathname, filename]);

axes(handles.axes1);
imshow(img);

R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

Red = cat(3,R,G*0,B*0);
Green = cat(3,R*0,G,B*0);
Blue = cat(3,R*0,G*0,B);

axes(handles.axes2);
imshow(Red);

axes(handles.axes3);
imshow(Green);

axes(handles.axes4);
imshow(Blue);