
D=input('Input coefficients of characteristic equation,i.e:[an an-1 an-2 ... a0]= ');
l=length (D);
disp('                                        ')
disp('----------------------------------------')
disp('Roots of characteristic equation is:')
roots(D)
%%=======================Program Begin==========================
% --------------------Begin of Bulding array--------------------------------
if mod(l,2)==0
    m=zeros(l,l/2);
    [cols,rows]=size(m);
    for i=1:rows
        m(1,i)=D(1,(2*i)-1);
        m(2,i)=D(1,(2*i));
    end
else
    m=zeros(l,(l+1)/2);
    [cols,rows]=size(m);
    for i=1:rows
        m(1,i)=D(1,(2*i)-1);
    end
    for i=1:((l-1)/2)
        m(2,i)=D(1,(2*i));
    end
end
for j=3:cols
    
    if m(j-1,1)==0
        m(j-1,1)=0.001;
    end
    
    for i=1:rows-1
        m(j,i)=(-1/m(j-1,1))*det([m(j-2,1) m(j-2,i+1);m(j-1,1) m(j-1,i+1)]);
    end
end
disp('--------The Routh-Hurwitz array is:--------'),m
% --------------------End of Bulding array--------------------------------
% Checking for sign change
Temp=sign(m);a=0;
for j=1:cols
    a=a+Temp(j,1);
end
if a==cols
    disp('          ----> System is Stable <----')
else
    disp('          ----> System is Unstable <----')
end