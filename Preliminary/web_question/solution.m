%Paste everything on a script and run it, then get the solution.
% The definition of the connection marix C
C=[1,1,0,0,0,0,0,0,0,0,0,0,0;
    0,1,1,1,0,0,0,0,0,0,0,0,0;
    0,0,0,1,1,1,0,0,0,0,0,0,0;
    1,0,1,0,1,0,1,1,0,0,0,0,0;
    0,0,0,0,0,1,1,0,1,1,0,0,0;
    0,0,0,0,0,0,0,1,1,0,1,1,0;
    0,0,0,0,0,0,0,0,0,1,1,0,1;
    0,0,0,0,0,0,0,0,0,0,0,1,1];
 
%The definition of the reaction forces in the x-dirextion
Sx=[1,0,0;0,0,0;0,0,0;0,0,0;0,0,0;0,0,0;0,0,0;0,0,0];
 
%The definition of the reaction forces in the y-dirextion
Sy=[0,1,0;0,0,0;0,0,0;0,0,0;0,0,0;0,0,0;0,0,0;0,0,1];
 
% The definition of the vectors X and Y joint locations
X = [0 0 4 4 8 8 12 12];
Y = [0 4 8 4 8 4 4 0];
 
% The definiton of the vector of applied external loads L
L=zeros(16,1);
L(12)=25;

%One to get matrix A
[r,cl]=size(C); 
A_x=zeros(r,cl); 
length=zeros(1,cl);
for j=1:cl
    p=C(:,j)';
    l=find(p==1);
    a=l(1);
    b=l(2);
    R=norm([X(a),Y(a)]-[X(b),Y(b)]);
    A_x(a,j)=(X(b)-X(a))/R;
    A_x(b,j)=(X(a)-X(b))/R;    
    length(j)=R;
end
    
A_y=zeros(r,cl);
for j=1:cl
    p=C(:,j)';
    l=find(p==1);
    a=l(1);
    b=l(2);
    R=norm([X(a),Y(a)]-[X(b),Y(b)]);
    A_y(a,j)=(Y(b)-Y(a))/R;
    A_y(b,j)=(Y(a)-Y(b))/R;
end
A=[A_x,Sx;A_y,Sy];

%Find the forces on each member and reaction force on pin and roller
T=A\L;
 
for i=1:numel(T)
T(i)=str2double(sprintf('%.3f',T(i)));
end
 
%disp('EK301, Section C1, Group Bear, 4/7/2013')
%disp('Cong Liu, ID 7*')
%disp('Zeming Wu, ID 6*')
%fprintf('DATE: %s\n',date)
disp('This is the solution for the problem assigned on the web site')
Load=L(L~=0);
fprintf('Load: %.2f N\n',Load)
disp('Member forces in Newtons')
[r,c]=size(A);
for i=1:(c-3)
    if  T(i)==0
        fprintf('T%d: %.3f \n',i,T(i))
    elseif T(i)>0
        fprintf('T%d: %.3f (T)\n',i,T(i))
    elseif T(i)<0
        fprintf('T%d: %.3f (C)\n',i,-T(i))        
    end
end
 
disp('Reaction forces in Newtons:')
fprintf('Ax1: %.2f\nAy1: %.2f\nHy2: %.2f\n',T(end-2),T(end-1),T(end))
 
%totallen=sum(length);
%fee=10*r/2+totallen;
%fprintf('Cost of truss: $%.0f\n',fee)
%fprintf('Theoretical max load/cost ratio in N/$: %.4f\n',Load/fee)
