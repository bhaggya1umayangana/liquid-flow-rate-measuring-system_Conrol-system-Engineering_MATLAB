
%%%%% using G(s)H(s) %%%%%%
%%%-------------------------------------%%%%%%
num=[2.5654 0];       %numerator coifficient
den=[1 10 33.5654 30];   %Denominatior coifficient
h=tf(num,den);      %get the transfer funtion 
simplify(h) % symplifiy the TF
figure(1)
step(h)
figure(2)
margin(h)     % get the frqequency and phase plot
figure(3)
rlocus(h)



                       
