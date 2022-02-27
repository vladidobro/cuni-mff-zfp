#!/usr/bin/octave -qf
L=5;
H=45;
vx=load('vx');
n=8;
d=(H-L)/n;
offset=L/n;
hist=zeros(n,2);
for i = 1:n
hist(i,1)=L+(i-0.5)*d;
endfor
for i = vx'
hist(floor((i-L)/d)+1,2)+=1;
endfor
hist
save hist hist