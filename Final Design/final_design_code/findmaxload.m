T1=T(1:end-3);


CT=abs(T1(T1<0));
CT=CT';


maxload=1215.75./(length(T1<0).^2);

diff=CT-maxload;

num=(diff==max(diff));

Newload=(L(L~=0))'*maxload(num)/CT(num)