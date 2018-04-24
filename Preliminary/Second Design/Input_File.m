% EK301, Section C1, Group Bear, 4/7/2013
% Cong Liu, ID 7*
% Zeming Wu, ID 6*

% The definition of the connection marix C
C=[1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0;
0,1,1,1,0,0,1,0,0,0,0,0,0,0,0,0,0;
0,0,0,1,1,1,0,1,0,0,0,0,0,0,0,0,0;
0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0;
0,0,0,0,0,1,1,0,1,0,1,1,0,0,0,0,0;
0,0,0,0,0,0,0,0,0,1,1,0,1,1,0,0,0;
0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,1,0;
0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1;
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1];

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
0,0,0];

%The definition of the reaction forces in the y-dirextion
Sy=[0,1,0;
0,0,0;
0,0,0;
0,0,0;
0,0,0;
0,0,0;
0,0,0;
0,0,0;
0,0,0;
0,0,1];

% The definition of the vectors X and Y joint locations
X = [0	0	13.5	13.5	27	 27	   40.5	   40.5	   54	54];
Y = [0	8	 8	     16	    24	 16 	16	      8	    8	0];

% The definiton of the vector of applied external loads L
L = zeros(20,1);
L(16) = 4.91;