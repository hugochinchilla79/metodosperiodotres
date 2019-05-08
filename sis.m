%EJEMPLO DE ARCHIVO M PARA RESOLVER SISTEMAS DE ECUACIONES DIFERENCIALES%


%PARAMETROS t: serian los valores en t a evaluar, usualmente es un vector
%espaciado uniformemente 

%PARAMETROS w: Soluciones de ecuaciones 
function p=sis(t,w)
p = zeros(size(w));
p = [-4 -2; 3 1]*w+[ cos(t) + 4*sin(t) ; -3*sin(t)];
% EL PRIMER CORCHETE SERIA LOS COEFICIENTES DE VARIABLES %
% w SON LAS SOLUCIONES DEL SISTEMA DE ECUACIONES Y(a) = algo x(a) = algo (debe ser en orden) 
% EL SEGUNDO CORCHETE SERIA EL RESTO DE LA FUNCION, PUEDE SER INCLUSO 0. 

% -- PARA SISTEMAS DE ECUACIONES CONSIDERAR ASI:  --------------------

%%[t, xy] = ode45(@sis,[ valores de t ],[ 0 ; -1 ])
%[X Y] = dsolve('Dx=-4*x - 2*y + cos(t) + 4*sin(t)', 'Dy = 3*x + y - 3*sin(t)', 'x(0)=0', 'y(0)=-1' );

%Exacta = [ double(subs(X,t))       double(subs(Y,t)) ];

%error = [norm(Exacta(:,1)-xy(:,1),inf)   norm(Exacta(:,2)-xy(:,2),inf)  ]


% ------- PARA ECUACIONES DIFERENCIALES DE ORDEN SUPERIOR ------------

%[t yuv] = ode45(@sis,t,[1;2;1]);

% exacta_y = dsolve('D3y + 2*D2y - Dy - 2*y = exp(t)', 'y(0)=1', 'Dy(0)=2', 'D2y(0)=0')

%Y = subs(exacta_y,t)

%error = norm(Y-yuv(:,1),inf)
