function[jVal,gradient]=cF1(theta)
x=[1 2 6;1 3 8;1 4 10];
y=[1;2;3];
m=3;
hx=x*theta;
error=(hx)-y;
sqrerror=(error).^2
jVal=sum(sqrerror)/2*m
gradient=[0 0 0]
psi=(error)'*x;
gradient=psi/m

