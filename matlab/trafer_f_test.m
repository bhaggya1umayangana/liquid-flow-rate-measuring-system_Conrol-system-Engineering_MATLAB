%{
%%usibg transfer funtion with propertional controller characteristic eqution%%%%%
num=[-22.9444];       %numerator coifficient
den=[1 10 10.621 30];   %Denominatior coifficient
h=tf(num,den);      %get the transfer funtion 
simplify(h) % symplifiy the TF
%figure(1)
step(h)
figure(2)
bode(h)
%}

