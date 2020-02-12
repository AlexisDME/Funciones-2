%Maldonado Esquivel Alexis Daniel 4AV4

F1=[1,-3,-1,3]
F2=[1,-6,12,8]
F3=[1,-8,20,-16]
F4=[1,-5,7,-3]
F5=[1,-2]
F6=[1,-1]
%% Ejrecicio 1
disp('Ejercicio 1')

disp('Raices')
r1=roots(F1)

r2=roots(F2)

r3=roots(F3)

r4=roots(F4)

f1=poly(r1);
f2=poly(r2);
f3=poly(r3);
f4=poly(r4);

disp('b) A partir de las raices obtener la expresion')
Fun1=poly2sym(f1)
Fun2=poly2sym(f2)
Fun3=poly2sym(f3)
fun4=poly2sym(f4)
%Cuando realizamos las funciones observamos que a partir de las funciones
%se cambian las variables aforma simbolica lo cual nos deja representada de
%forma correcta segun su sustitucion y desarrollo.

disp('c) Operaciones')

%Para F5 en la suma ajustamos el tamaño del vector para poder realizar la
%operacion
F_5=[0,0,1,-2]
s=(3*F_5)+(F2)-(2*F3)
d=deconv(F4,F6)
d2=deconv((conv(F1,F2)),F5)
%% Ejercicio 2
disp('Inciso a) Integrar y derivar')
Fx=poly2sym(s)
Fx1=poly2sym(d)
Fx2=poly2sym(d2)

Derivada_1=diff(Fx)
Integral_1=int(Fx)

Derivada_2=diff(Fx1)
Integral_2=int(Fx1)

Derivada_3=diff(Fx2)
Integral_3=int(Fx2)

disp('Evaluacion de las integrales y derivadas si x=1')

Evaluacion_D1=subs(Derivada_1,1)
Evaluacion_I1=subs(Integral_1,1)

Evaluacion_D2=subs(Derivada_2,1)
Evaluacion_I2=subs(Integral_2,1)

Evaluacion_D3=subs(Derivada_3,1)
Evaluacion_I3=subs(Integral_3,1)

%Al observar los resultados obtenidos en las evaluacion de las derevidas e
%integrales las comprobe con la calculadora realizando lo que se pide y
%observamos que los resultados eran los correctos para la formulacion de
%problemas

%% Ejercicio 3

A1=[0,0,1];
B1=[1,3,2];
A2=[2,5,3,2];
B2=[1,6,11,6];
A3=[0,1,0];
B3=[1,3,2];
A4=[0,0,0,5,10];
B4=[1,4,3,0,0];

disp('Inciso a) Fracciones parciales')

[R1,P1,K1]=residue(A1,B1)
[R2,P2,K2]=residue(A2,B2)
[R3,P3,K3]=residue(A3,B3)
[R4,P4,K4]=residue(A4,B4)

disp('Funcion pzmap')
H = tf([0,0,1],[1,3,2]);
pzmap(H)
grid on
H2 = tf([2,5,3,2],[1,6,11,6]);
pzmap(H2)
grid on
H3 = tf([0,1,0],[1,3,2]);
pzmap(H3)
grid on
H4 = tf([0,0,0,5,10],[1,4,3,0,0]);
pzmap(H4)
grid on
%pzmap (sys) crea una gráfica de polo cero del sistema 
%dinamico dentro del sistema de tiempo continuo o discreto. x 
%y o indica los polos y ceros respectivamente


