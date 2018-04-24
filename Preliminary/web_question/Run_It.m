Input_File
find_A

T=A\L;

for i=1:numel(T)
T(i)=str2double(sprintf('%.3f',T(i)));
end

disp('EK301, Section C1, Group Bear, 4/7/2013')
disp('Cong Liu, ID 75856171')
disp('Zeming Wu, ID 61003163')
fprintf('DATE: %s\n',date)
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