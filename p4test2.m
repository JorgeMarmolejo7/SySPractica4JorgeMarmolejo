function[]=f()
figure(14)
t=0:0.1:3;
%x1=(t1<1).*(t1)+(t1>=1).*(1);
%x2=(t<=1).*0+(t>=1).*1+(t>3).*0;
x1=@(t) (t).*(t>=0&t<=1) + 1.*(t>1&t<2);
x2=@(t) 1.*(t>=1&t<=3);
fplot(x1,[0,3],'r')
grid on
title('x1(t)')
xlabel('t')
ylabel('f(t)')
axis([0 3 -3 3])
figure(15)
fplot(x2,[0,3],'r')
grid on
title('x2(t)')
xlabel('t')
ylabel('f(t)')
axis([0 3 0 3])
convconm2(x1,x2)