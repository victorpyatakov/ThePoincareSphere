function varargout = blohasfera(varargin)
% BLOHASFERA MATLAB code for blohasfera.fig
%      BLOHASFERA, by itself, creates a new BLOHASFERA or raises the existing
%      singleton*.
%      
%      H = BLOHASFERA returns the handle to a new BLOHASFERA or the handle to
%      the existing singleton*.
%
%      BLOHASFERA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BLOHASFERA.M with the given input arguments.
%
%      BLOHASFERA('Property','Value',...) creates a new BLOHASFERA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before blohasfera_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to blohasfera_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
%      created by Victor Pyatakov 24.12.2018

% Edit the above text to modify the response to help blohasfera

% Last Modified by GUIDE v2.5 24-Dec-2018 03:11:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @blohasfera_OpeningFcn, ...
                   'gui_OutputFcn',  @blohasfera_OutputFcn, ...
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


% --- Executes just before blohasfera is made visible.
function blohasfera_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to blohasfera (see VARARGIN)

% Choose default command line output for blohasfera
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
 beginwork(handles);
%  axis([-1.5 1.5 -1.5 1.5 -1.5 1.5])
% X=[0 0];
% Y=[0 0];
% Z=[0 1];
%  plot3(X,Y,Z,'r','LineWidth', 7)





 set(hObject,'toolbar','figure');


% UIWAIT makes blohasfera wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = blohasfera_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function Theta_editText_Callback(hObject, eventdata, handles)
% hObject    handle to Theta_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes during object creation, after setting all properties.
function Theta_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%отображение сферы и надписей
function beginwork(handles)
n= 100;   %  n обычно вводится с клавиатуры ввод числа n по запросу в командном окне
t1=pi*(-n:5:n)/n;
t2=(pi/2)*(-n:5:n)'/n;     % транспонированный вектор
X=cos(t2)*cos(t1);
Y=cos(t2)*sin(t1);
E=ones(size(t1));   % матрица единиц размерности вектора t1
Z=sin(t2)*E;

plot3(X,Y,Z,'black');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% взгляд на сферу
view([40,50,25]) 
 grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 text(0, 0,1.15, '|0>','FontName', 'TimesET', 'FontSize', 18);
 text(0, 0,-1.15, '|1>','FontName', 'TimesET', 'FontSize', 18);
 hold on
 
 % строим ось z
 X=[0 0];
Y=[0 0];
Z=[-1.4 1.4];
 plot3(X,Y,Z,'y','LineWidth', 2)
 text(0, 0,1.5, 'Z','FontName', 'TimesET', 'FontSize', 20,'Color','y');
 % строим ось x
 
 X=[-1.4 1.4];
Y=[0 0];
Z=[0 0];
 plot3(X,Y,Z,'g','LineWidth', 2)
 text(1.5, 0,0, 'X','FontName', 'TimesET', 'FontSize', 20,'Color','g');
 % строим ось y
 
 X=[ 0 0];
Y=[-1.4 1.4];
Z=[0 0];
 plot3(X,Y,Z,'b','LineWidth', 2)
 text(0, 1.5,0, 'Y','FontName', 'TimesET', 'FontSize', 20,'Color','b');
 



function phi_editText_Callback(hObject, eventdata, handles)
% hObject    handle to phi_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes during object creation, after setting all properties.
function phi_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





% --- Executes on button press in pushbutton_Adamar.
function pushbutton_Adamar_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Adamar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
H=[1  1; 1 -1]*(sqrt(2))^-1;
theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);



a=cos(theta/2);
b=exp(1i*phi)*sin(theta/2);
psi=[a;b];
%подействуем на psi  оператором  H
v=H*psi;
%рассчитаем  фазы экспонент phase1 и phase2   и dphase=dphase2-dphase1 получившегося кубита
phase1=angle(v(1));
phase2=angle(v(2));
dphase=phase2-phase1;
%запишем амплитуды кубита в стандартной форме a|0>+b*exp(i*dfi)|1>
a=abs(v(1));
b=abs(v(2));
%посчитаем угол abs(teta2)  и угол abs(fi2)
teta2=2*acos(a);
fi2=dphase;
%нарисуем вектор
 forTheta(hObject,handles,teta2);
forPhi(hObject,handles,fi2);

theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);

z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
 z=Yslov(hObject,handles,z);
 x=Yslov(hObject,handles,x);
 y=Yslov(hObject,handles,y);
 
 set(handles.XTxt,'String',x);
 set(handles.YTxt,'String',y);
 set(handles.ZTxt,'String',z);
 
 a=cos(theta/2);
 b=exp(1i*phi)*sin(theta/2);
 
 a=Yslov(hObject,handles,a);
 b=Yslov(hObject,handles,b);
 set(handles.textApha,'String',a);
 set(handles.textBeta,'String',b);


% --- Executes on button press in pushbutton_X.
function pushbutton_X_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=[0 1;1 0];
% phi=get(handles.slider_phi,'Value');
% theta=get(handles.slider_Theta,'Value');
theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);
a=cos(theta/2);
b=exp(1i*phi)*sin(theta/2);
psi=[a;b];
%подействуем на psi  оператором  H
v=X*psi;
%рассчитаем  фазы экспонент phase1 и phase2   и dphase=dphase2-dphase1 получившегося кубита
phase1=angle(v(1));
phase2=angle(v(2));
dphase=phase2-phase1;
%запишем амплитуды кубита в стандартной форме a|0>+b*exp(i*dfi)|1>
a=abs(v(1));
b=abs(v(2));
%посчитаем угол abs(teta2)  и угол abs(fi2)
teta2=2*acos(a);
fi2=dphase;
%нарисуем вектор

forTheta(hObject,handles,teta2);
forPhi(hObject,handles,fi2);
theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);

z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
 z=Yslov(hObject,handles,z);
 x=Yslov(hObject,handles,x);
 y=Yslov(hObject,handles,y);
 
 set(handles.XTxt,'String',x);
 set(handles.YTxt,'String',y);
 set(handles.ZTxt,'String',z);
 
 a=cos(theta/2);
 b=exp(1i*phi)*sin(theta/2);
 
 a=Yslov(hObject,handles,a);
 b=Yslov(hObject,handles,b);
 set(handles.textApha,'String',a);
 set(handles.textBeta,'String',b);

% --- Executes on button press in pushbutton_Y.
function pushbutton_Y_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Y=[0  -1i; 1i 0];
% phi=get(handles.slider_phi,'Value');
% theta=get(handles.slider_Theta,'Value');
theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);
a=cos(theta/2);
b=exp(1i*phi)*sin(theta/2);
psi=[a;b];
%подействуем на psi  оператором  H
v=Y*psi;
%рассчитаем  фазы экспонент phase1 и phase2   и dphase=dphase2-dphase1 получившегося кубита
phase1=angle(v(1));
phase2=angle(v(2));
dphase=phase2-phase1;
%запишем амплитуды кубита в стандартной форме a|0>+b*exp(i*dfi)|1>
a=abs(v(1));
b=abs(v(2));
%посчитаем угол abs(teta2)  и угол abs(fi2)
teta2=2*acos(a);
fi2=dphase;
%нарисуем вектор
forTheta(hObject,handles,teta2);
forPhi(hObject,handles,fi2);

theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);

z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
 z=Yslov(hObject,handles,z);
 x=Yslov(hObject,handles,x);
 y=Yslov(hObject,handles,y);
 
 set(handles.XTxt,'String',x);
 set(handles.YTxt,'String',y);
 set(handles.ZTxt,'String',z);
 
 a=cos(theta/2);
 b=exp(1i*phi)*sin(theta/2);
 
 a=Yslov(hObject,handles,a);
 b=Yslov(hObject,handles,b);
 set(handles.textApha,'String',a);
 set(handles.textBeta,'String',b);

% --- Executes on button press in pushbutton_Z.
function pushbutton_Z_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Z=[1 0; 0 -1];
% phi=get(handles.slider_phi,'Value');
% theta=get(handles.slider_Theta,'Value');
theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);
a=cos(theta/2);
b=exp(1i*phi)*sin(theta/2);
psi=[a;b];
%подействуем на psi  оператором  H
v=Z*psi;
%рассчитаем  фазы экспонент phase1 и phase2   и dphase=dphase2-dphase1 получившегося кубита
phase1=angle(v(1));
phase2=angle(v(2));
dphase=phase2-phase1;
%запишем амплитуды кубита в стандартной форме a|0>+b*exp(i*dfi)|1>
a=abs(v(1));
b=abs(v(2));
%посчитаем угол abs(teta2)  и угол abs(fi2)
teta2=2*acos(a);
fi2=dphase;
%нарисуем вектор
forTheta(hObject,handles,teta2);
forPhi(hObject,handles,fi2);
theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);

z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
 z=Yslov(hObject,handles,z);
 x=Yslov(hObject,handles,x);
 y=Yslov(hObject,handles,y);
 
 set(handles.XTxt,'String',x);
 set(handles.YTxt,'String',y);
 set(handles.ZTxt,'String',z);
 
 a=cos(theta/2);
 b=exp(1i*phi)*sin(theta/2);
 
 a=Yslov(hObject,handles,a);
 b=Yslov(hObject,handles,b);
 set(handles.textApha,'String',a);
 set(handles.textBeta,'String',b);

% --- Executes on button press in pushbutton_I.
function pushbutton_I_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=[1 0;0 1];
theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);
% phi=get(handles.slider_phi,'Value');
% theta=get(handles.slider_Theta,'Value');
a=cos(theta/2);
b=exp(1i*phi)*sin(theta/2);
psi=[a;b];
%подействуем на psi  оператором  H
v=I*psi;
%рассчитаем  фазы экспонент phase1 и phase2   и dphase=dphase2-dphase1 получившегося кубита
phase1=angle(v(1));
phase2=angle(v(2));
dphase=phase2-phase1;
%запишем амплитуды кубита в стандартной форме a|0>+b*exp(i*dfi)|1>
a=abs(v(1));
b=abs(v(2));
%посчитаем угол abs(teta2)  и угол abs(fi2)
teta2=2*acos(a);
fi2=dphase;
%нарисуем вектор
forTheta(hObject,handles,teta2);
forPhi(hObject,handles,fi2);
theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);

z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
 z=Yslov(hObject,handles,z);
 x=Yslov(hObject,handles,x);
 y=Yslov(hObject,handles,y);
 
 set(handles.XTxt,'String',x);
 set(handles.YTxt,'String',y);
 set(handles.ZTxt,'String',z);
 
 a=cos(theta/2);
 b=exp(1i*phi)*sin(theta/2);
 
 a=Yslov(hObject,handles,a);
 b=Yslov(hObject,handles,b);
 set(handles.textApha,'String',a);
 set(handles.textBeta,'String',b);
  
function forTheta(hObject,handles,teta2)% построение угла тета
    
theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta1=str2double(theta);
phi=str2double(phi);


  if abs(teta2)>theta1
    
    for i=theta1:0.1570:abs(teta2)
     
           %%%%%%%%%%%%% 
    cla(handles.axes1,'reset');
 guidata(hObject, handles);


 beginwork(handles);
guidata(hObject, handles);
  
set(handles.Theta_editText,'String',i);
%    set(handles.slider_Theta,'Value',i);

 theta=i;
% phi=get(handles.slider_phi,'Value');
z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
X=[0 x];
Y=[0 y];
Z=[0 z];
 plot3(X,Y,Z,'r','LineWidth', 7)
  pause(0.0001);
    end
else
    
     for i=theta1:-0.1570:abs(teta2)
             %%%%%%%%%%%%% 
    cla(handles.axes1,'reset');
 guidata(hObject, handles);


 beginwork(handles);
guidata(hObject, handles);
  
set(handles.Theta_editText,'String',i);
% %    set(handles.slider_Theta,'Value',i);

 theta=i;

z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
X=[0 x];
Y=[0 y];
Z=[0 z];
 plot3(X,Y,Z,'r','LineWidth', 7)
  pause(0.0001);
     end
     
  end
  % достраиваем вектор
 pause(0.0001);
  cla(handles.axes1,'reset');
 guidata(hObject, handles);
 
if abs(teta2)<0.1&&abs(teta2)>0
    teta2=0;
else
    teta2=abs(teta2);
end

 beginwork(handles);
guidata(hObject, handles);
set(handles.Theta_editText,'String',teta2);
% set(handles.slider_Theta,'Value',teta2);
theta=teta2;

z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
X=[0 x];
Y=[0 y];
Z=[0 z];
 plot3(X,Y,Z,'r','LineWidth', 7)

function forPhi(hObject,handles,fi2)% построение угла фи
        
theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi1=str2double(phi);

        if abs(fi2)>phi1
            for j=phi1:0.3141:abs(fi2)
                   %%%%%%%%%%%%% 
    cla(handles.axes1,'reset');
 guidata(hObject, handles);


 beginwork(handles);
guidata(hObject, handles);
  
set(handles.phi_editText,'String',j);
%    set(handles.slider_phi,'Value',j);

%  theta=get(handles.slider_Theta,'Value');
phi=j;
z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
X=[0 x];
Y=[0 y];
Z=[0 z];
 plot3(X,Y,Z,'r','LineWidth', 7)
  pause(0.0001);
            end
        else
            for j=phi1:-0.3141:abs(fi2)
                  cla(handles.axes1,'reset');
 guidata(hObject, handles);


 beginwork(handles);
guidata(hObject, handles);
  
set(handles.phi_editText,'String',j);
%    set(handles.slider_phi,'Value',j);

%  theta=get(handles.slider_Theta,'Value');
phi=j;
z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
X=[0 x];
Y=[0 y];
Z=[0 z];
 plot3(X,Y,Z,'r','LineWidth', 7)
  pause(0.0001);  
            end
        end
        
         % достраиваем вектор
 pause(0.0001);
  cla(handles.axes1,'reset');
 guidata(hObject, handles);
 
if abs(fi2)<0.1&& abs(fi2)>0
    fi2=0;
else
    fi2=abs(fi2);
end

 beginwork(handles);
guidata(hObject, handles);

set(handles.phi_editText,'String',fi2);
% set(handles.slider_phi,'Value',fi2);
% theta=get(handles.slider_Theta,'Value');
phi=fi2;
z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
X=[0 x];
Y=[0 y];
Z=[0 z];
 plot3(X,Y,Z,'r','LineWidth', 7)


% --- Executes on button press in Spravka.
function Spravka_Callback(hObject, eventdata, handles)
% hObject    handle to Spravka (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% helpdlg('File is out of date', 'Preprocessor')
open('Пояснительная записка к виртуальной лабораторной работе.pdf')


 


% --- Executes on button press in PlotVec.
function PlotVec_Callback(hObject, eventdata, handles)
% hObject    handle to PlotVec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
 set(handles.XTxt,'Visible','on');
 set(handles.YTxt,'Visible','on');
 set(handles.ZTxt,'Visible','on');
  set(handles.textX,'Visible','on');
 set(handles.textY,'Visible','on');
 set(handles.textZ,'Visible','on');
 set(handles.OutDec,'Visible','on');
 
 set(handles. AdamTxt,'Visible','on');
 set(handles.PaulyTxt,'Visible','on');
 set(handles.EdinTxt,'Visible','on');
 set(handles.pushbutton_Adamar,'Visible','on');
 set(handles. pushbutton_X,'Visible','on');
 set(handles. pushbutton_Y,'Visible','on');
 set(handles. pushbutton_Z,'Visible','on');
 set(handles. pushbutton_I,'Visible','on');
  set(handles.text34,'Visible','on');
  
   set(handles. RotationTxt,'Visible','on');
    set(handles.OpenRotation,'Visible','on');
 



cla(handles.axes1,'reset');
beginwork(handles);
theta=get(handles.Theta_editText,'String');
theta=str2num(theta);

phi=get(handles.phi_editText,'String');
phi=str2num(phi);

z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
X=[0 x];
Y=[0 y];
Z=[0 z];
 plot3(X,Y,Z,'r','LineWidth', 7)
 
 set(handles.XTxt,'String',x);
 set(handles.YTxt,'String',y);
 set(handles.ZTxt,'String',z);
 
 a=cos(theta/2);
 b=exp(1i*phi)*sin(theta/2);
 set(handles.textApha,'String',a);
 set(handles.textBeta,'String',b);

 
 
 
 
 



% --- Executes on button press in ClrBtm.
function ClrBtm_Callback(hObject, eventdata, handles)
% hObject    handle to ClrBtm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1,'reset');
beginwork(handles);
 
 set(handles.XTxt,'Visible','off');
 set(handles.YTxt,'Visible','off');
 set(handles.ZTxt,'Visible','off');
  set(handles.textX,'Visible','off');
 set(handles.textY,'Visible','off');
 set(handles.textZ,'Visible','off');
  set(handles.OutDec,'Visible','off');
  
 set(handles.Theta_editText,'String',0);
 set(handles.phi_editText,'String',0);
 
 a= get(handles.textAl,'String');
 b= get(handles.textB,'String');
 set(handles.textApha,'String',a);
 set(handles.textBeta,'String',b);

  set(handles. AdamTxt,'Visible','off');
 set(handles.PaulyTxt,'Visible','off');
 set(handles.EdinTxt,'Visible','off');
 set(handles.pushbutton_Adamar,'Visible','off');
 set(handles. pushbutton_X,'Visible','off');
 set(handles. pushbutton_Y,'Visible','off');
 set(handles. pushbutton_Z,'Visible','off');
 set(handles. pushbutton_I,'Visible','off');
  set(handles.text34,'Visible','off');
  set(handles. RotationTxt,'Visible','off');
  set(handles.OpenRotation,'Visible','off');
  
   set(handles.text36,'Visible','off');
 set(handles.text37,'Visible','off');
 set(handles.text38,'Visible','off');
  set(handles.text39,'Visible','off');
 set(handles.text40,'Visible','off');
  set(handles.text41,'Visible','off');
  set(handles.text42,'Visible','off');
 set(handles.text43,'Visible','off');
 
 set(handles.edtThetaX,'Visible','off');
 set(handles.edtThetaY,'Visible','off');
  set(handles.edtThetaZ,'Visible','off');
   set(handles.edtThetaX,'String',0);
 set(handles.edtThetaY,'String',0);
  set(handles.edtThetaZ,'String',0);
 
 set(handles. RxBtm,'Visible','off');
 set(handles.RyBtm,'Visible','off');
 set(handles.RzBtm,'Visible','off');


% --- Executes on button press in OpenRotation.
function OpenRotation_Callback(hObject, eventdata, handles)
% hObject    handle to OpenRotation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 set(handles.text36,'Visible','on');
 set(handles.text37,'Visible','on');
 set(handles.text38,'Visible','on');
  set(handles.text39,'Visible','on');
 set(handles.text40,'Visible','on');
   set(handles.text41,'Visible','on');
  set(handles.text42,'Visible','on');
 set(handles.text43,'Visible','on');
 
 set(handles.edtThetaX,'Visible','on');
 set(handles.edtThetaY,'Visible','on');
  set(handles.edtThetaZ,'Visible','on');
 
 set(handles. RxBtm,'Visible','on');
 set(handles.RyBtm,'Visible','on');
 set(handles.RzBtm,'Visible','on');




function edtThetaX_Callback(hObject, eventdata, handles)
% hObject    handle to edtThetaX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtThetaX as text
%        str2double(get(hObject,'String')) returns contents of edtThetaX as a double


% --- Executes during object creation, after setting all properties.
function edtThetaX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtThetaX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtThetaY_Callback(hObject, eventdata, handles)
% hObject    handle to edtThetaY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtThetaY as text
%        str2double(get(hObject,'String')) returns contents of edtThetaY as a double


% --- Executes during object creation, after setting all properties.
function edtThetaY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtThetaY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtThetaZ_Callback(hObject, eventdata, handles)
% hObject    handle to edtThetaZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtThetaZ as text
%        str2double(get(hObject,'String')) returns contents of edtThetaZ as a double


% --- Executes during object creation, after setting all properties.
function edtThetaZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtThetaZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in RxBtm.
function RxBtm_Callback(hObject, eventdata, handles)
% hObject    handle to RxBtm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);

tetax=get(handles.edtThetaX,'String');
tetax=str2double(tetax);
Rx=[cos(tetax/2)  -1i*sin(tetax/2);  -1i*sin(tetax/2)   cos(tetax/2)];

a=cos(theta/2);
b=exp(1i*phi)*sin(theta/2);
psi=[a;b];
%подействуем на psi  оператором  H
v=Rx*psi;
%рассчитаем  фазы экспонент phase1 и phase2   и dphase=dphase2-dphase1 получившегося кубита
phase1=angle(v(1));
phase2=angle(v(2));
dphase=phase2-phase1;
%запишем амплитуды кубита в стандартной форме a|0>+b*exp(i*dfi)|1>
a=abs(v(1));
b=abs(v(2));
%посчитаем угол abs(teta2)  и угол abs(fi2)
teta2=2*acos(a);
fi2=dphase;
%нарисуем вектор
 forTheta(hObject,handles,teta2);
forPhi(hObject,handles,fi2);

theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);

z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
 z=Yslov(hObject,handles,z);
 x=Yslov(hObject,handles,x);
 y=Yslov(hObject,handles,y);
 
 set(handles.XTxt,'String',x);
 set(handles.YTxt,'String',y);
 set(handles.ZTxt,'String',z);
 
 a=cos(theta/2);
 b=exp(1i*phi)*sin(theta/2);
 
 a=Yslov(hObject,handles,a);
 b=Yslov(hObject,handles,b);
 set(handles.textApha,'String',a);
 set(handles.textBeta,'String',b);

% --- Executes on button press in RyBtm.
function RyBtm_Callback(hObject, eventdata, handles)
% hObject    handle to RyBtm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);

tetay=get(handles.edtThetaY,'String');
tetay=str2double(tetay);
Ry=[cos(tetay/2)  -sin(tetay/2);  sin(tetay/2)   cos(tetay/2)];


a=cos(theta/2);
b=exp(1i*phi)*sin(theta/2);
psi=[a;b];
%подействуем на psi  оператором  H
v=Ry*psi;
%рассчитаем  фазы экспонент phase1 и phase2   и dphase=dphase2-dphase1 получившегося кубита
phase1=angle(v(1));
phase2=angle(v(2));
dphase=phase2-phase1;
%запишем амплитуды кубита в стандартной форме a|0>+b*exp(i*dfi)|1>
a=abs(v(1));
b=abs(v(2));
%посчитаем угол abs(teta2)  и угол abs(fi2)
teta2=2*acos(a);
fi2=dphase;
%нарисуем вектор
 forTheta(hObject,handles,teta2);
forPhi(hObject,handles,fi2);

theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);

z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);
 z=Yslov(hObject,handles,z);
 x=Yslov(hObject,handles,x);
 y=Yslov(hObject,handles,y);
 
 set(handles.XTxt,'String',x);
 set(handles.YTxt,'String',y);
 set(handles.ZTxt,'String',z);
 
 a=cos(theta/2);
 b=exp(1i*phi)*sin(theta/2);
 
 a=Yslov(hObject,handles,a);
 b=Yslov(hObject,handles,b);
 set(handles.textApha,'String',a);
 set(handles.textBeta,'String',b);

% --- Executes on button press in RzBtm.
function RzBtm_Callback(hObject, eventdata, handles)
% hObject    handle to RzBtm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);

tetaz=get(handles.edtThetaZ,'String');
tetaz=str2double(tetaz);
Rz=[exp(-1i*tetaz/2)   0 ;  0   exp(1i*tetaz/2)];



a=cos(theta/2);
b=exp(1i*phi)*sin(theta/2);
psi=[a;b];
%подействуем на psi  оператором  H
v=Rz*psi;
%рассчитаем  фазы экспонент phase1 и phase2   и dphase=dphase2-dphase1 получившегося кубита
phase1=angle(v(1));
phase2=angle(v(2));
dphase=phase2-phase1;
%запишем амплитуды кубита в стандартной форме a|0>+b*exp(i*dfi)|1>
a=abs(v(1));
b=abs(v(2));
%посчитаем угол abs(teta2)  и угол abs(fi2)
teta2=2*acos(a);
fi2=dphase;
%нарисуем вектор
 forTheta(hObject,handles,teta2);
forPhi(hObject,handles,fi2);

theta=get(handles.Theta_editText,'String');
phi=get(handles.phi_editText,'String');
theta=str2double(theta);
phi=str2double(phi);

z=cos(theta);
x=sin(theta)*cos(phi);
y=sin(theta)*sin(phi);

 z=Yslov(hObject,handles,z);
 x=Yslov(hObject,handles,x);
 y=Yslov(hObject,handles,y);
 
 set(handles.XTxt,'String',x);
 set(handles.YTxt,'String',y);
 set(handles.ZTxt,'String',z);
 
 a=cos(theta/2);
 b=exp(1i*phi)*sin(theta/2);
 
 a=Yslov(hObject,handles,a);
 b=Yslov(hObject,handles,b);
 set(handles.textApha,'String',a);
 set(handles.textBeta,'String',b);

 
function teta2 = Yslov(hObject,handles,teta2)% построение угла тета
      
if abs(teta2)<0.1&&abs(teta2)>0
    teta2=0;
else
    teta2=abs(teta2);
end
