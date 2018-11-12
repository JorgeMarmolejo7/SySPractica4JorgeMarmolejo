function[]=f()
figure(12)
t=0:0.1:5;
x1=@(t) ((-1*t)+1).*(t>=0 & t<=1)+(t-1).*(t>1&t<=2);
x2=@(t) 1.*(t>=0&t<=1);
fplot(x1,[0,3],'r')
grid on
title('x1(t)')
xlabel('t')
ylabel('f(t)')
axis([-2 2 -3 3])
figure(13)
fplot(x2,[0,3],'r')
grid on
title('x2(t)')
xlabel('t')
ylabel('f(t)')
axis([-2 2 -2 2])
convconm1(x1,x2)