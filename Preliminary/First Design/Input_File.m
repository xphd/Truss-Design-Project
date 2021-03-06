% EK301, Section C1, Group Bear, 4/7/2013
% Cong Liu, ID 7*
% Zeming Wu, ID 6*

% The definition of the connection marix C
C=[1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0;
1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0;
0,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0;
0,0,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0;
0,0,0,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0;
0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0;
0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1;
0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,1,0,0,0,0,0;
0,0,0,0,0,0,1,1,0,0,0,1,0,0,0,0,1,0,0,0,0;
0,0,0,0,0,0,0,1,1,0,0,0,1,0,0,0,0,1,1,0,0;
0,0,0,0,0,0,0,0,1,1,0,0,0,1,0,0,0,0,0,1,0;
0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,1];

%The definition of the reaction forces in the x-dirextion
Sx=[1,0,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0];

%The definition of the reaction forces in the y-dirextion
Sy=[0,1,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,1;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0;
    0,0,0];

% The definition of the vectors X and Y joint locations
X=[0:9:54 9:9:45];
Y=[zeros(1,7) 9 9 9 9 9];

% The definiton of the vector of applied external loads L
L=[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;10.6;0;0;0;0;0;0;0;0;];