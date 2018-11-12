%% Introduccion
%En esta practica mostraremos como se comportan la convolucion y la
%correlacion de dos señales, y la representacion grafica que esta conlleva.

%% Ejercicio 4 PR06
%Tomando las señales x0=u(t)-2u(t-2)+u(t-4) y x1=u(t)-2u(t-3)+u(t-4) y realizando la correlacion de ambas funciones con el siguiente codigo podemos obtener las graficas

figure(1) 
subplot(1,4,1)
syms t
x0=@(t) heaviside(t)-(2.*heaviside(t-2))+heaviside(t-4);
fplot(x0,[-10,10],'r')
grid on
title('x0(t)')
axis([-10 10,-5 5]);
subplot(1,4,2)
x1=@(t) heaviside(t)-(2.*heaviside(t-3))+heaviside(t-4);
fplot(x1,[-10,10],'r')
grid on
title('x1(t)')
axis([-10 10,-5 5]);
%haciendo a x1(-t) en x2
x2=@(t) heaviside(-t)-(2.*heaviside(-t-3))+heaviside(-t-4);
%Haciendo la correlacion de las funciones, podemos observar que la primera
%grafica representa como se estan haciendo convolucion la una a la orta y
%por debajo de esta se puede observara el resultado de la correlacion de
%las funciones.
CORRELACION(x0,x2);

