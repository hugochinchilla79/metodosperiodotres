function dy=g(t,y)
dy = 2*sin(2*t) - 2*y - 1;

%DESPEJAR ECUACION DIFERENCIAL EN TERMINOS DE DY Y USAR LA ECUACION TAL
%CUAL
%APROXIMADO
%[t, y] = ode23[@g, [intervalo de t], condicion inicial, debe ser un numero ]

%exacta = dsolve('Dy+2*y=2*sin(2*t)-1','y(pi/4)=0')

%error = norm(Y-y,inf)