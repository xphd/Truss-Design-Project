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
X = [0	0	4	4	8	 8	  12  12];
Y = [0	4	8	4	8    4    4    0];

% The definiton of the vector of applied external loads L
L=zeros(16,1);
L(12)=25;