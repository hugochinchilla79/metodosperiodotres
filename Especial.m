%            ECD 1° Orden 
%     1------------Exacta--------------------------------------------------
%          M(x,y)dx +N(x,y)dy=0
%
%         criterio de exactitud
%
%           dM(x,y)    dN(x,y)
%           ------ =   ------
%            dy          dx
%
%           con constante
%           
%  --->   f(x,y)= S M(x,y)dx + cy
%
%          f(x,y)= S N(x,y)dy + cx
%
%          d(x,y)
% --->    ---------  = N(x,y)
%           dy
%
%          d(x,y)
%         ---------  = M(x,y)
%            dx 
%
%          f(x,y) = c
%
%        sin  constante
%
%        f1(x,y)= S M(x,y)dx
%        f2(x,y))=S N(x,y)dx
%        f(x,y)=(Terminos escritos una sola vez tanto en f1 y f2)
%        f(x,y)= c
%
%      2---------------Variable Separable----------------------------------
%                En forma de diferenciales
%
%             f1(x)g1(y)dx  + f2(x)g2(y)dy = 0
%
%                                          1
%           Factor Integrante(F.I)=  ------------- 
%                                     g1(y)*f2(x) 
%
%        Multiplicar el factor integrante por la ED
%
%
%             F.I * [f1(x)g1(y)dx  + f2(x)g2(y)dy = 0]
%
%                      Integral
%
%                    f1(x)            g2(x)
%               S ---------dx    +  S ----------dy   = C
%                    f2(x)             g1(x)
%
%      
%     3--------------ED homogeneas-----------------------------------------
%
%             (X^2*arctan(X/Y) + XY)dx  +  (Y^2*cot(X/Y)+X^2)dy =0
%                |         |      |          |       |    |
%                |         |      |          |       |    |
%                2         0      2          2       0    2
%
%      (si N(x,y) es mas facil)      (si M(x,y) es mas facil)
%
%              y = ux                         x = vy
%
%       dy          du                     dx         dv
%       --  = u + x ---                    -- = v + y --
%       dx          dx                     dy         dy
%
%
%      dy     -((X^2*arctan(X/Y) + XY))     dx     -(Y^2*cot(X/Y)+X^2)
%      -- =  --------------------------    --- = ------------------------
%      dx         (Y^2*cot(X/Y)+X^2)        dy   ((X^2*arctan(X/Y) + XY))
%
%
%      sustituir y=ux                          sustituir x=vy
%
%       dy  -((X^2*arctan(X/ux) + X*ux))   dx    -(Y^2*cot(vy/Y)+vy^2)                 
%       --=-------------------------       -- =------------------------                      
%       dx    (ux^2*cot(X/ux)+X^2)         dy  ((vy^2*arctan(vy/Y) + vy*Y))             
%
%         Igualamos
%
%        dy   dy                           dx   dx
%        -- = --                           -- = --
%        dx   dx                           dy   dy
%
%     Resolvemos integrales
%
%      F(x,y)+ c= f(x,y)
%
%
%    4---------------ED lineal---------------------------------------------
%
%         dy
%         -- + p(x)*y = Q(x)             diferencial en y
%         dx
%
%        
%         dx
%         -- + P(y)*x = Q(y)             diferencial en x
%         dy
%
%
%         Dejar la ecuacion de forma
%
%          dx
%          -- + p(y)*x = Q(y)
%          dy
%
%        Encontrar el factor integrante con la misma variable
%
%
%                ^s p(y)dy
%        U(y)= e
%
%       Multiplicar ED * U(Y)
%
%             dy               
%       u(y)* -- + u(y)*p(y)x =Q(Y)*u(y) 
%             dx               
%      |                     |
%        |                 |
%           |            |
%              |  | | |
%
%                  |
%
%            d[u(y)* x] =Q(y)*U(y)*dy
%
%
%         U(y)*x =S Q(y)*U(y)*dy + C
%
%
%  5-------------------ED Bernulli-----------------------------------------
%
%
%          
%          dx                  ^n
%          -- + p(y)*x = Q(y)*X
%          dy
%
%                          ^-n
%      Multiplicamos por X
%
%
%      ^-n    dx         ^1-n         
%     x     * -- + p(y)*x   =    Q(y)  Ecuacion 1
%             dy
%
%
%                                        ^ 1-n
%      Derivar con respecto a y    u = x
%
%       
%       du          ^(-n)  dx 
%       -- =(1-n)*x       *--
%       dy                 dy
%
%       
%     despejar
%
%
%      du   1      ^(-n)   dx
%      --* ---- = x       *--       Ecuacion 2
%      dy  (1-n)           dy
%
%
%                 ^1-n
%   sustituimos x      por u en la ecuacion 1
%
%
%
%      ^-n    dx                 
%     x     * -- + p(y)*U  =    Q(y)  Ecuacion 1
%             dy
%
%
%    sustituimos ecuacion 2 en ecuacion 1
%
%
%      1    du
%    -----*---- + p(y)* u = Q(y) Ecuacion 3
%     1-n   dy
%
%    Multiplico la ecucion 3 por (1-n)
%
%
%       du
%     *---- + p(y)* u*(1-n) = Q(y)*(1-n)
%       dy
%
%   queda un p1(y) y un Q1(y) nuevos porque n es un numero
%
%
%       du
%     *---- + p1(y)* u = Q1(y)   Resolver por ECUACION DIFERENCIAL LINEAL
%       dy

