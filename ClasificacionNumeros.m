
% Octave Script
% Title			    :Clasificación de los números
% Description		:Script para recordar conceptos de números
% Author		    :Ing. Horacio RoVe (lacho_t) 
% Date		    	:20210401
% Version		    :1
% Usage			    :octave>cd /path/
% 		        	:octave>ClasificacionNumeros
% 		        	:Requiere aplicación octave, usar su línea de comandos 
%               :https://octaveintro.readthedocs.io/en/latest/index.html
% Notes         :Este es un Script realizado para poder identificar la clasificación de los números y tener en cuenta algunos ejemplos de como poder identificarlos.

clear
c_numeros_Naturales = 'ℕ = {1, 2, 3, .... n} si n > 0';
c_numeros_Enteros = 'ℤ = { -n..., -2, -1, 0, 1, 2,..n }';
c_numero_Racionales = 'ℚ = { m/n dónde m,n ∈ ℝ, n ≠ 0 }';
c_numero_Irracionales = 'I = {√n que no puede ser expresada como ℚ, todas  las raíces que no son exactas}';
c_numero_Reales = 'ℝ = { I, ℚ, ℤ, ℕ }';

disp 'Nuestras variables son'
  a = 32
  b = 55
  c = 12
% Propiedades de los números, sean a,b,c,d,e ∈ ℝ

% Propiedades de ∈ (Cerradura);
display('Axiomas Algebraicos');
display('Propiedades de Cerradura');
p_cerradura = 'a + b ∈ ℝ';
disp('cerradura de suma');
a=3;
b=5;
a+b

p_cerradura2 = 'ab ∈ ℝ';
disp('cerradura de multiplicacion');
a=2;
b=6;
a*b

p_cerradura3 = '7 + 9 ∈ ℕ';
p_cerradura4 = '∈ = pertenecia';
'{-4, -3, -2, -1, 0, 1, 2, 3, 4}';

% Propiedad asociativa
display('Propiedad asociativa');
p_asociativa = 'a + ( b + c )';
disp('propiedad asociativa') ;
a=5;
b=6;
c=7;
a+(b+c)
p_asosiativa =  'a + (b + c)';
A=3;
B=5;
C =2; 
A+(B+C)
(A+B)+C

p_asociativa2 = 'a ( b c ) = ( a b ) c';
disp('asiciativa multiplicacion');
a=5;
b=4;
c=3;
a*(b*c)
(a*b)*c

p_asociativa3 = '3 + ( 8 - 10 ) = ( 8 + 3 ) - 10';
disp('asociativa suma y resta');
a=4;
b=8;
c=12;
a+(b-c)
(b+a)-c

% Propiedad conmutativa
display('Propiedad conmutativa');
p_conmutativa = 'a + b = b + a';
disp('conmutativa suma');
a=3;
b=6;
a+b
b+a


p_conmutativa =  'a+b=b+a';
a=5;
b=4;
a+b
b+a

% Adicion
p_conmutativa1 = 'a+ b = b + a '
a = 21 ;  
b = 22 ;
a+b
b+a

p_conmutativa2 = 'a b = b a';
disp('conmutativa multiplicacio');
a=3;
b=4;
a*b
b*a

% Propiedad distributiva
display('Propiedad distributiva');
p_distributiva = 'a ( b + c ) = a b + a c'; 
a=4;
b=5;
c=6;
a*(b+c)
a*b+(a*c)

p_distributiva='a(b+c)=ab+ac';
a=2
b=3
c=5
a*(b+c)
(a*b)+(a*c)

% Neutro aditivo
display('Elemento Neutro aditivo');
display('El elemento Neotro Aditivo es 0');
p_neutroA = 'a + 0 = a';
a=3;
a+0

p_neutroA='a+0=a';
a=7;
a+0

p_neutroA2 = 'Ojo: a + 0 = 0 + a ---> es conmutativa';
disp('neutro conmutativa') ;
a=3;
a+0;
0+a

% Neutro multiplicativo
display('Neutro multiplicativo');
display('El elemento Neutro Multiplicativo es 1');
p_neutroM = 'a ( 1 ) = a';
a=3;
a*(1)


p_neutroM='a(1)=a';
a=5;
a*1


% Inverso aditivo
display('Inverso aditivo');
p_inversoA = 'a + -a = 0';
a=3;
a+(-a)

% Inverso multiplicativo o recíproco
display('Inverso multiplicativo')
p_inversoM = 'a ( 1/a ) = 1';
a=3;
a*(1/a)

% Propiedad transitiva  (|  entonces)
p_transitiva=  'si a   >  b  & b >  c |  a  >  c ' ;
a = 3 ;
b = 2 ;
c = 2 ;
a>b
b>c
a>c

p_transitiva2 = 'si a = b y b = c | a = c';
a=2;
b=2;
c=2;
a=b
b=c
a=c

disp (' Propiedad Transitividad');

a = 12;
b= 6;
c = 3;
p_transitiva3='a >  b  && b > c | a > c';
p_transitiva4='a == b  && b == c  |  a == c';

% Tricotomía (raíz del algebra) siempre se pueden comparar
p_tricotomia = 'a > b';
disp('tricotomia') ;
a=3;
b=2;
a>b

p_tricotomia2 = 'a = b';
disp('tricotomia igualdad') ;
a=3;
b=3;
a=b

p_tricotomia3 = 'a < b';
disp('tricotomia <');
a=2;
b=3;
a<b

% Propiedad transitiva (| entonces) 
p_transitiva=  'si a   >  b  & b >  c |  a  >  c ' ;
p_transitiva2 =  ' si  a  =  b  & b  =  c | a  =  c';
disp (' Propiedad Transitividad');
 
p_transitiva = 'si a>b y b>c | a>c';
disp('transitiva');
a=7;
b=6;
c=5;
a>b
b>c
a>c

p_transitiva2 = 'si a=b y b=c | a=c';
disp('transitiva igual');
a = 5;
b = 5;
c = 5;
a=b
b=c
a=c

  if (a > b)
    disp ('En este caso a es mayor que b');
  endif
  if (b>c)
    disp ('Y b es mayor que c');
endif
  if (a>c)
    disp ('Por lo que a es mayor que c');
endif
  disp ('Propiedad transitiva 2');
  
a = 20;
b = 20;
c = 20;
   if (a==b)
    disp ('En este caso a es igual que b');
  endif
  if (b==c)
    disp ('Y b es igual que c');
endif
  if (a==c)
    disp ('Por lo que a es igual que c');
endif


% signos de agrupación
s_agrupacion = '{ [ ( ) ] }';
'{R (I) [Q (Z (N) ) ] }
