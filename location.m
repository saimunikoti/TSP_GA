% optimal path to be followed by amazon delivery man to serve n customers in a day 
% Assumptions: 1.Locations in a city is assumed to be sectors
%              2.We know the exact locations and pincode of each sector

function varargout = location(varargin)

% LOCATION MATLAB code for location.fig
%      LOCATION, by itself, creates a new LOCATION or raises the existing
%      singleton*.
%
%      H = LOCATION returns the handle to a new LOCATION or the handle to
%      the existing singleton*.
%
%      LOCATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LOCATION.M with the given input arguments.
%
%      LOCATION('Property','Value',...) creates a new LOCATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before location_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to location_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help location

% Last Modified by GUIDE v2.5 20-Mar-2017 16:33:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @location_OpeningFcn, ...
                   'gui_OutputFcn',  @location_OutputFcn, ...
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


% --- Executes just before location is made visible.
function location_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to location (see VARARGIN)

% Choose default command line output for location
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes location wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = location_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
% if (get(hobject,'value')==get(hobject,'max'))
%     x(1,1)=1;
% end



% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
% if (get(hobject,'value')==get(hobject,'max'))
%     x(2,1)=1;
% end


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3
% if (get(hobject,'value')==get(hobject,'max'))
%     x(3,1)=1;
% end


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5
% if (get(hobject,'value')==get(hobject,'max'))
%     x(4,1)=1;
% end


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4
% if (get(hobject,'value')==get(hobject,'max'))
%     x(5,1)=1;
% end


% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6
% if (get(hobject,'value')==get(hobject,'max'))
%     x(6,1)=1;
% end


% --- Executes on button press in checkbox11.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox11
% if (get(hobject,'value')==get(hobject,'max'))
%     x(7,1)=1;
% end


% --- Executes on button press in checkbox10.
function checkbox8_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox10
% if (get(hobject,'value')==get(hobject,'max'))
%     x(8,1)=1;
% end


% --- Executes on button press in checkbox9.
function checkbox9_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox9
% if (get(hobject,'value')==get(hobject,'max'))
%     x(9,1)=1;
% end


% --- Executes on button press in checkbox8.
function checkbox10_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox8
% if (get(hobject,'value')==get(hobject,'max'))
%     x(10,1)=1;
% end
% 

% --- Executes on button press in checkbox7.
function checkbox11_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7
% if (get(hobject,'value')==get(hobject,'max'))
%     x(11,1)=1;
% end


% --- Executes on button press in checkbox12.
function checkbox12_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox12
% if (get(hobject,'value')==get(hobject,'max'))
%     x(12,1)=1;
% end


% --- Executes on button press in checkbox13.
function checkbox13_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox13
% if (get(hobject,'value')==get(hobject,'max'))
%     x(13,1)=1;
% end


% --- Executes on button press in checkbox14.
function checkbox14_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox14
% if (get(hobject,'value')==get(hobject,'max'))
%     x(14,1)=1;
% end


% --- Executes on button press in checkbox15.
function checkbox15_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox15
% if (get(hobject,'value')==get(hobject,'max'))
%     x(15,1)=1;
% end


% --- Executes on button press in checkbox16.
function checkbox16_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox16
% if (get(hobject,'value')==get(hobject,'max'))
%     x(16,1)=1;
% end


% --- Executes on button press in checkbox17.
function checkbox17_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox17
% if (get(hobject,'value')==get(hobject,'max'))
%     x(17,1)=1;
% end


% --- Executes on button press in checkbox18.
function checkbox18_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox18
% if (get(hobject,'value')==get(hobject,'max'))
%     x(18,1)=1;
% end


% --- Executes on button press in checkbox20.
function checkbox19_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox20
% if (get(hobject,'value')==get(hobject,'max'))
%     x(19,1)=1;
% end


% --- Executes on button press in checkbox19.
function checkbox20_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox19
% if (get(hobject,'value')==get(hobject,'max'))
%     x(20,1)=1;
% end


% --- Executes on button press in checkbox21.
function checkbox21_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox21
% if (get(hobject,'value')==get(hobject,'max'))
%     x(21,1)=1;
% end


% --- Executes on button press in checkbox26.
function checkbox22_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox26
% if (get(hobject,'value')==get(hobject,'max'))
%     x(22,1)=1;
% end


% --- Executes on button press in checkbox25.
function checkbox23_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox25
% if (get(hobject,'value')==get(hobject,'max'))
%     x(23,1)=1;
% end
% 

% --- Executes on button press in checkbox24.
function checkbox24_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox24
% if (get(hobject,'value')==get(hobject,'max'))
%     x(24,1)=1;
% end


% --- Executes on button press in checkbox23.
function checkbox25_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox23
% if (get(hobject,'value')==get(hobject,'max'))
%     x(25,1)=1;
% end


% --- Executes on button press in checkbox22.
function checkbox26_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox22
% if (get(hobject,'value')==get(hobject,'max'))
%     x(26,1)=1;
% end


% --- Executes on button press in checkbox27.
function checkbox27_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox27
% if (get(hobject,'value')==get(hobject,'max'))
%     x(27,1)=1;
% end


% --- Executes on button press in checkbox28.
function checkbox28_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox28
% if (get(hobject,'value')==get(hobject,'max'))
%     x(28,1)=1;
% end


% --- Executes on button press in checkbox29.
function checkbox29_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox29
% if (get(hobject,'value')==get(hobject,'max'))
%     x(29,1)=1;
% end


% --- Executes on button press in checkbox30.
function checkbox30_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox30
% if (get(hobject,'value')==get(hobject,'max'))
%     x(30,1)=1;
% end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

disp('inside push button');
% pin=evalin('base','pin')
cla reset;

z=[get(handles.checkbox1,'value')   % z will store the value of checkbox for 
   get(handles.checkbox2,'value')   % different locations(sectors)
   get(handles.checkbox3,'value')
   get(handles.checkbox4,'value')
   get(handles.checkbox5,'value')
   get(handles.checkbox6,'value')
   get(handles.checkbox7,'value')
   get(handles.checkbox8,'value')
   get(handles.checkbox9,'value')
   get(handles.checkbox10,'value')
   get(handles.checkbox11,'value')
   get(handles.checkbox12,'value')
   get(handles.checkbox13,'value')
   get(handles.checkbox14,'value')
   get(handles.checkbox15,'value')
   get(handles.checkbox16,'value')
   get(handles.checkbox17,'value')
   get(handles.checkbox18,'value')
   get(handles.checkbox19,'value')
   get(handles.checkbox20,'value')
   get(handles.checkbox21,'value')
   get(handles.checkbox22,'value')
   get(handles.checkbox23,'value')
   get(handles.checkbox24,'value')
   get(handles.checkbox25,'value')
   get(handles.checkbox26,'value')
   get(handles.checkbox27,'value')
   get(handles.checkbox28,'value')
   get(handles.checkbox29,'value')
   get(handles.checkbox30,'value')];
   
   pin=[3.8993 2.3342 3.8137 5.3307 2.0157 1.0546 6.6812 1.8728 5.2434 5.5253 ....
     5.5876 2.2331 0.5509 1.6850 2.8196 3.8713 0.6654 5.2807 5.9032 0.9386....
     8.6750 8.4622 7.8818 8.9766 5.7544 7.1867 7.8912 3.6735 0.8766 9.9938;....
     2.4938 5.2128 2.8099 6.3765 4.6255 3.5384 4.7029 0.2966 3.8398 9.4324 1.0232 7.6205...
     6.4811 5.1565 6.4964 4.1106 3.7957 4.5337 9.6714 0.5820 6.9569 5.9978 3.6045 1.2750...
     7.2102 7.1111 4.9127 7.8573 4.1936 5.8061];   % defined coordinates of various sectors in a city

m=0;
for i=1:30;
    x(i,1)=z(i);              % x=coordinate matrix of all sectors
    x(i,2)=pin(1,i);   
    x(i,3)=pin(2,i);
     if (x(i,1)==1)
        m=m+1;
        y(m)=i;               % y store user input sectors
        d(m,1)=i;
        d(m,2:3)=x(i,2:3);    % d stores the coordinate of selected sectors 
       
    end
end
n=m;

for i=1:40                    % a stores the different possible routes
    ind=randperm(n);
    for j=1:n 
    a(i,j)=y(ind(j));
    end
end

for i=1:n             % dist stores the distance between the selected sectors
    for j=1:n
        dist(i,j)=sqrt((x(y(i),2)-x(y(j),2))^2+(x(y(i),3)-x(y(j),3))^2);
    end
end

for i=1:40           % total distance of each route is stored in last column
    s=0;
    for j=1:n-1
        for k=1:n
            for l=1:n
            if y(k)==a(i,j)&&y(l)==a(i,j+1)
              s=s+dist(k,l);
            end
            end
        end
    end
    a(i,n+1)=s;
end
q=0.8*40;                       % q=crossover probability
a=sortrows(a,n+1);              % fitness function is sorted in ascending order 
  
for gen=1:10                    % for different generation
    cla reset;
    scatter(d(:,2),d(:,3));
    hold on
for i=1:n 
text(d(i,2)+0.1,d(i,3)+0.1,cellstr(num2str(d(i,1))));    
end
    index=randperm(q);
    for i=1:(q/2)               % generation of child from each coloumn 
        parent_1=a(index(2*i-1),1:n)
        parent_2=a(index(2*i),1:n)
        cross_pos=ceil(rand*(n-1));
        t=0;r=0;
        for k=1:n               % crossover is done in such a way that genes are not 
            p=0;w=0;            % repeating in each chromosome(child)
            for s=1:cross_pos
                if parent_2(k)~=parent_1(s)
                   p=p+1;
                end
                if parent_1(k)~=parent_2(s)
                   w=w+1;
                end
      
            end
        
            if p==cross_pos
               t=t+1;
               v(t)=parent_2(k);
            end
            if w==cross_pos
               r=r+1;
               u(r)=parent_1(k);
            end
            
        end
    
        child_1=[parent_1(1:cross_pos) v(1:n-cross_pos)];
        child_2=[parent_2(1:cross_pos) u(1:n-cross_pos)];
        a(40+2*i-1,1:n)=child_1;
        a(40+2*i,1:n)=child_2;
    end
    
    a(:,n+1)=a(:,1);   % for close route starting and end point is connected
  
    for i=1:72         % calculates fitness(distance)for each route
        s=0;
        for j=1:n
            for k=1:n  % search from y matrix 
                for l=1:n
                    if y(k)==a(i,j)&& y(l)==a(i,j+1)
                       s=s+dist(k,l);
                    end 
                end
            end
        end
        a(i,n+2)=s;
    end

    a=sortrows(a,n+2);  
    a=a(1:40,:);       % matrix a is trimmed back to its original size
    
    uu=zeros(1,n+1);       
    vv=zeros(1,n+1);
    for i=1:n              % for plotting the route        
         for j=1:n
            if a(1,i)==y(1,j)
               uu(1,i)=x(y(j),2);
               vv(1,i)=x(y(j),3);
              %                text(uu(1,i)+0.4,vv(1,i)+0.6,cellstr(num2str(a(1,i))));
            end
         end
    end
uu(1,n+1)=uu(1,1);
vv(1,n+1)=vv(1,1);
% text(d(i,1)+0.4,d(i,2)+0.6,cellstr(num2str(y(i))));
plot(uu,vv);
pause(0.8);


end

% uu=zeros(1,n+1);       
% vv=zeros(1,n+1);
% for i=1:n              % for plotting the route        
%     for j=1:n
%         if a(1,i)==y(1,j)
%            uu(1,i)=x(y(j),2);
%            vv(1,i)=x(y(j),3);
%         end
%     end
% end
% uu(1,n+1)=uu(1,1);
% vv(1,n+1)=vv(1,1);
% plot(uu,vv);
% pause(5.0);

% Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
close(location);
location;

      
   
   
   
   

 
  
   
   
   
  
        
          
            
    
    
  
    
 


   

    
     

   
   
  
        
          
            
    
    
  
    
 


   

    
     
