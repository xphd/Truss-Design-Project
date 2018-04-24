%This script is used to find matrix A
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