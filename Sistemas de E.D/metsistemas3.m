%MÉTODO PARA SISTEMAS DE TRES ECUACIONES DIFERENCIALES

%Utilizar anulador para resolver las ecuaciones

% - Introduzca la ecuación diferencial 1      : 'Dx=(-4*x)-(2*y)+cos(t)+4*sin(t)'
% - Introduzca la ecuación diferencial 2      : 'Dy=(3*x)+y-(3*sin(t))'
% - Introduzca la ecuación diferencial 3      :
% - Introduzca la condición x(a)=b            : 'x(0)=0'
% - Introduzca la condición y(a)=b            : 'y(0)=-1'
% - Introduzca la condición z(a)=b            :
% - Introduzca la variable                    : 't'
% - Introduzca la función de trabajo 1        : (-4*x)-(2*y)+cos(t)+4*sin(t)
% - Introduzca la función de trabajo 2        : (3*x)+y-(3*sin(t))
% - Introduzca la función de trabajo 3        :
% - Introduzca la condición inicial 1         : 0
% - Introduzca la condición inicial 2         : -1
% - Introduzca la condición inicial 3         :
% - Introduzca el valor de a                  : 0
% - Introduzca el valor de b                  : 0.3
% - Introduzca el tamaño de paso h            : 1/10

fprintf('\n');
clear all
clc
fprintf('                   -----------------------------------------------------\n')
fprintf('                   MÉTODO PARA SISTEMAS DE TRES ECUACIONES DIFERENCIALES\n')
fprintf('                   -----------------------------------------------------\n')
fprintf('\n');
syms t x y z
d=input('- Introduzca la ecuación diferencial 1      : ');
d2=input('- Introduzca la ecuación diferencial 2      : ');
d3=input('- Introduzca la ecuación diferencial 3      : ');
n=input('- Introduzca la condición x(a)=b            : ');
n2=input('- Introduzca la condición y(a)=b            : ');
n3=input('- Introduzca la condición z(a)=b            : ');
l=input('- Introduzca la variable                    : ');
f1=input('- Introduzca la función de trabajo 1        : ');
f2=input('- Introduzca la función de trabajo 2        : ');
f3=input('- Introduzca la función de trabajo 3        : ');
xa=input('- Introduzca la condición inicial 1         : ');
ya=input('- Introduzca la condición inicial 2         : ');
za=input('- Introduzca la condición inicial 3         : ');
a=input('- Introduzca el valor de a                  : ');
b=input('- Introduzca el valor de b                  : ');
h=input('- Introduzca el tamaño de paso h            : ');

fprintf('\n\n');

[Ec1,Ec2,Ec3]=dsolve(d,d2,d3,n,n2,n3,l);

fprintf(' - La solución de la ecuación diferencial es : \n\n');

pretty(Ec1);

fprintf('\n\n\n');

fprintf(' - La solución de la ecuación diferencial 2 es : \n\n');

pretty(Ec2);

fprintf('\n\n\n');

fprintf(' - La solución de la ecuación diferencial 3 es : \n\n');

pretty(Ec3);

fprintf('\n\n\n');

ti=a;
n=(b-a)/h;
f=f1;
fb=f2;
fc=f3;
u(1)=xa;
w(1)=ya;
j(1)=za;
q(1)=a;
v(1)=a;
v1(1)=a;
v2(1)=a;
rp=0;
c=0;
g=0;
e=1;

for i=0:(n-1)
   fprintf(' - Iteración: %1.0f\n\n',e);
   
   ti
   
   k11=h*subs(f,{t,x,y,z},{ti,u(i+1),w(i+1),j(i+1)});
   k12=h*subs(fb,{t,x,y,z},{ti,u(i+1),w(i+1),j(i+1)});
   k13=h*subs(fc,{t,x,y,z},{ti,u(i+1),w(i+1),j(i+1)});
   
   k21=h*subs(f,{t,x,y,z},{(ti+(h/2)),(u(i+1)+((k11)/2)),(w(i+1)+((k12)/2)),(j(i+1)+((k13)/2))});
   k22=h*subs(fb,{t,x,y,z},{(ti+(h/2)),(u(i+1)+((k11)/2)),(w(i+1)+((k12)/2)),(j(i+1)+((k13)/2))});
   k23=h*subs(fc,{t,x,y,z},{(ti+(h/2)),(u(i+1)+((k11)/2)),(w(i+1)+((k12)/2)),(j(i+1)+((k13)/2))});
   
   k31=h*subs(f,{t,x,y,z},{(ti+(h/2)),(u(i+1)+((k21)/2)),(w(i+1)+((k22)/2)),(j(i+1)+((k23)/2))});
   k32=h*subs(fb,{t,x,y,z},{(ti+(h/2)),(u(i+1)+((k21)/2)),(w(i+1)+((k22)/2)),(j(i+1)+((k23)/2))});
   k33=h*subs(fc,{t,x,y,z},{(ti+(h/2)),(u(i+1)+((k21)/2)),(w(i+1)+((k22)/2)),(j(i+1)+((k23)/2))});
   
   k41=h*subs(f,{t,x,y,z},{(ti+h),(u(i+1)+(k31)),(w(i+1)+(k32)),(j(i+1)+(k33))});
   k42=h*subs(fb,{t,x,y,z},{(ti+h),(u(i+1)+(k31)),(w(i+1)+(k32)),(j(i+1)+(k33))});
   k43=h*subs(fc,{t,x,y,z},{(ti+h),(u(i+1)+(k31)),(w(i+1)+(k32)),(j(i+1)+(k33))});

   u(i+2)=u(i+1)+((1/6)*(k11+(2*k21)+(2*k31)+k41));
   w(i+2)=w(i+1)+((1/6)*(k12+(2*k22)+(2*k32)+k42));
   j(i+2)=j(i+1)+((1/6)*(k13+(2*k23)+(2*k33)+k43));
   
   fprintf(' K11= %2.8f\n K12= %2.8f\n K13= %2.8f\n\n',numeric(k11),numeric(k12),numeric(k13));
   fprintf(' K21= %2.8f\n K22= %2.8f\n K23= %2.8f\n\n',numeric(k21),numeric(k22),numeric(k23));
   fprintf(' K31= %2.8f\n K32= %2.8f\n K33= %2.8f\n\n',numeric(k31),numeric(k32),numeric(k33));
   fprintf(' K41= %2.8f\n K42= %2.8f\n K43= %2.8f\n\n',numeric(k41),numeric(k42),numeric(k43));

   ti=ti+h;
   e=e+1;
end
 

rp=0;
for p=a:h:b
   rp=1+rp;
   v1(rp)=subs(Ec2,p);
end

rp=0;
for p=a:h:b
   rp=1+rp;
   v2(rp)=subs(Ec3,p);
end

%Este for se usa para contabilizar las iteraciones
for s=c:1:(rp-1)
   g=1+g;
   k(g)=(g-1);
end

fprintf('\n\n');
fprintf('           i                 ti'); 
[k'   q']   
fprintf('\n\n');
fprintf('           ui+1                 x(t)');
[u'   v'] 
fprintf('\n\n');
fprintf('           wi+1                 y(t)');
[w'   v1'] 
fprintf('\n\n');
fprintf('           wi+1                 z(t)');
[j'   v2'] 

