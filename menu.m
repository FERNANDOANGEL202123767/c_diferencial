% Octave Script
% Title         : Menú Interactivo de Gráficas Matemáticas
% Description   : Script para seleccionar y visualizar gráficas de funciones matemáticas
% Author        : Fernando Ángel García Hernández (adaptado)
% Date          : 20250621
% Version       : 1
% Usage         : octave menu.m
% Notes         : Requiere Octave y el paquete symbolic. Instala con: pkg install -forge symbolic

clear
clc
pkg load symbolic

while true
  clc
  disp('Menú de Gráficas Matemáticas')
  disp('Seleccione una gráfica ingresando el número correspondiente:')
  disp('1. Absoluto: raiz(0,0), dominio z∈ℝ, rango y∈[0,+∞), minimo(0,0)')
  disp('2. Cuadrática: dominio x∈ℝ, rango y∈[1,+∞), minimo(0,1)')
  disp('3. Cuadrática 1.1: raices(-6,0)(0,0), dominio x∈ℝ, rango y∈[-9,+∞), minimo(-3,-9)')
  disp('4. Cuarto Grado: dominio x∈ℝ, rango y∈[-1,+∞), minimos(-3,-1)(0,-1), maximo(-3/2,65/16)')
  disp('5. División: raiz(0,0), dominio t≠2, intercepcion vertical(0,0)')
  disp('6. División 1.1: raiz(1,0), dominio t≠2, intercepcion vertical(0,1/2)')
  disp('7. Ejercicio 1_1: i(r)=(3/7)^r')
  disp('8. Ejercicio 1: FUNCION PROBLEMA 1')
  disp('9. Ejercicio 2_2: f(x)=3^x')
  disp('10. Ejercicio 2: FUNCION PROBLEMA 6')
  disp('11. Ejercicio 3_3: fx=e.^x')
  disp('12. Ejercicio 3: FUNCION PROBLEMA 2')
  disp('13. Ejercicio 4_4: s(x)=log10x')
  disp('14. Ejercicio 4: FUNCION PROBLEMA 3')
  disp('15. Ejercicio 5_5: f(x)=log3x')
  disp('16. Ejercicio 5: FUNCION PROBLEMA 4')
  disp('17. Ejercicio 6_6: f(x)=loge x')
  disp('18. Ejercicio 6: FUNCION PROBLEMA 5')
  disp('19. Ejercicio 7_7: c(v)=sen(v)')
  disp('20. Ejercicio 8_8: f(x)=cos(x)')
  disp('21. Ejercicio 9_9: f(x)=tan(x)')
  disp('22. Ejercicio 10_10: h(x)=csc(x)')
  disp('23. Ejercicio 11_11: f(x)=sec(x)')
  disp('24. Ejercicio 12_12: f(x)=cotan(x)')
  disp('25. Ejercicio 13_13: r(x)=((7)/(9))^2*x+3')
  disp('26. Ejercicio 14_14: f(x)=9^x-2')
  disp('27. Ejercicio 15_15: f(x)=e^9x+18')
  disp('28. Ejercicio 16_16: v(x)=sen(6x-10)')
  disp('29. Ejercicio 17_17: f(x)=cos(x^2+3)')
  disp('30. Ejercicio 18_18: f(x)=ln(cos(x))')
  disp('31. Inecuación: Inecuaciones de primer y segundo grado')
  disp('32. Polinomio: raices(-3/2,0)(0,0), dominio x∈ℝ, intercepcion vertical(0,0)')
  disp('33. Polinomio 1: Polinomial f(x)=(0,-4)')
  disp('34. Polinomio 2: polinomio f(x)=(-0.4533976515164,0)')
  disp('35. Polinomio 3: polinomio f(x)=(0,-6)')
  disp('36. Polinomio 4: polinomio f(X)=(-0.5,0)')
  disp('37. Radical 1: Radical')
  disp('38. Radical 2: Radical')
  disp('39. Raíz: dominio x≥4, rango y∈[1,+∞), minimo (4,1)')
  disp('40. Trozo: Función a trozos')
  disp('41. Trozo 1.1: Función a trozos')
  disp('0. Salir')
  disp('')

  opcion = input('Ingrese el número de la opción: ');

  close all % Cierra figuras previas
  clear x y % Limpia variables para evitar conflictos

  switch opcion
    case 1 % Absoluto
      syms z
      z = 0:1:10;
      y = abs(z.^3);
      plot(z, y)
      grid on
      ylabel('y')
      xlabel('x')
      title('raiz(0,0), dominio z∈ℝ, rango y∈[0,+∞), minimo(0,0)')
      pause

    case 2 % Cuadrática
      syms x
      x = -5:1:5;
      y = 1 + x.^2;
      plot(x, y)
      grid on
      ylabel('y')
      xlabel('x')
      title('dominio x∈ℝ, rango y∈[1,+∞), minimo(0,1)')
      pause

    case 3 % Cuadrática 1.1
      syms x
      x = -10:0.1:4;
      y = x.^2 + 6*x;
      plot(x, y)
      grid on
      ylabel('y')
      xlabel('x')
      title('raices(-6,0)(0,0), dominio x∈ℝ, rango y∈[-9,+∞), minimo(-3,-9)')
      pause

    case 4 % Cuarto Grado
      syms x
      x = linspace(-50, 50);
      fx = x.^4 + 6*x.^3 + 9*x.^2 - 1;
      semilogy(x, fx)
      grid on
      ylabel('y')
      xlabel('x')
      title('dominio x∈ℝ, rango y∈[-1,+∞), minimos(-3,-1)(0,-1), maximo(-3/2,65/16)')
      pause

    case 5 % División
      syms x
      x = linspace(-10, 10);
      y = x ./ (2 - x);
      plot(x, y)
      grid on
      ylabel('y')
      xlabel('x')
      title('raiz(0,0), dominio t≠2, intercepcion vertical(0,0)')
      pause

    case 6 % División 1.1
      syms t
      t = linspace(-10, 10);
      y = (t - 1) ./ (t - 2);
      plot(t, y)
      grid on
      ylabel('y')
      xlabel('x')
      title('raiz(1,0), dominio t≠2, intercepcion vertical(0,1/2)')
      pause

    case 7 % Ejercicio 1_1
      syms r
      r = -2:0.1:2;
      ir = (3/7).^r;
      plot(r, ir)
      grid on
      title('i(r)=(3/7)^r')
      xlabel('Eje "X"')
      ylabel('Eje "Y" i(r)= 0 en 1')
      pause

    case 8 % Ejercicio 1
      syms x
      x = -20:1:20;
      gx = x.^2;
      plot(x, gx)
      grid on
      title('FUNCION PROBLEMA 1')
      xlabel('VALOR DE X (DOMINIO)')
      ylabel('IMAGEN o g(x)')
      pause

    case 9 % Ejercicio 2_2
      syms x
      x = -3:0.1:3;
      fx = 3.^x;
      plot(x, fx)
      grid on
      title('f(x)=3^x')
      xlabel('Eje "X"')
      ylabel('Eje "Y" f(x)= 0 en 1')
      pause

    case 10 % Ejercicio 2
      syms x
      x = -20:1:20;
      fx = (x.^4 + 1) ./ (x.^3); % Corregido para evitar error de sintaxis
      plot(x, fx)
      grid on
      title('FUNCION PROBLEMA 6')
      xlabel('VALOR DE X (DOMINIO)')
      ylabel('IMAGEN o f(x)')
      pause

    case 11 % Ejercicio 3_3
      syms x
      x = -3:0.1:5;
      e = 5;
      fx = e.^x;
      plot(x, fx)
      grid on
      title('fx=e.^x')
      xlabel('Eje "X"')
      ylabel('Eje "Y" f(x)= 0 en 1')
      pause

    case 12 % Ejercicio 3
      syms x
      x = 0:1:40;
      hx = x.^2;
      plot(x, hx)
      grid on
      title('FUNCION PROBLEMA 2')
      xlabel('VALOR DE X (DOMINIO)')
      ylabel('IMAGEN o h(x)')
      pause

    case 13 % Ejercicio 4_4
      syms x
      x = 0:0.1:10;
      sx = log10(8*x);
      plot(x, sx)
      grid on
      title('s(x)=log10x')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 14 % Ejercicio 4
      syms x
      x = -15:1:20;
      fx = x.^3;
      plot(x, fx)
      grid on
      title('FUNCION PROBLEMA 3')
      xlabel('VALOR DE X (DOMINIO)')
      ylabel('IMAGEN o f(x)')
      pause

    case 15 % Ejercicio 5_5
      syms x
      x = 0:0.1:10;
      fx = log10(3*x);
      plot(x, fx)
      grid on
      title('f(x)=log3x')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 16 % Ejercicio 5
      syms x
      x = -32:1:45;
      rx = nthroot(x.^3, 3); % Corregido: cbrt no está definido, usamos nthroot
      plot(x, rx)
      grid on
      title('FUNCION PROBLEMA 4')
      xlabel('VALOR DE X (DOMINIO)')
      ylabel('IMAGEN o r(x)')
      pause

    case 17 % Ejercicio 6_6
      syms x
      x = 0:0.1:10;
      fx = log10(exp(1)*x);
      plot(x, fx)
      grid on
      title('f(x)=loge x')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 18 % Ejercicio 6
      syms r
      r = -30:1:-1;
      vr = 1 ./ (r.^3);
      plot(r, vr)
      grid on
      title('FUNCION PROBLEMA 5')
      xlabel('VALOR DE R (DOMINIO)')
      ylabel('IMAGEN o v(r)')
      pause

    case 19 % Ejercicio 7_7
      syms v
      v = -20:0.1:20;
      cv = sin(v);
      plot(v, cv)
      grid on
      title('c(v)=sen(v)')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 20 % Ejercicio 8_8
      syms x
      fs = 280;
      x = 0:1/fs:3*pi;
      fx = cos(x);
      plot(x, fx)
      grid on
      title('f(x)=cos(x)')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 21 % Ejercicio 9_9
      syms x
      x = 0:0.1:20;
      fx = tan(x);
      plot(x, fx)
      grid on
      title('f(x)=tan(x)')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 22 % Ejercicio 10_10
      syms x
      x = 0:0.1:20;
      hx = 1 ./ sin(x); % Corregido: csc no está definido, usamos 1/sin(x)
      plot(x, hx)
      grid on
      title('h(x)=csc(x)')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 23 % Ejercicio 11_11
      syms x
      fs = 100;
      x = 0:1/fs:3*pi;
      fx = 1 ./ cos(x); % sec(x) = 1/cos(x)
      plot(x, fx)
      grid on
      title('f(x)=sec(x)')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 24 % Ejercicio 12_12
      syms x
      fs = 100;
      x = 0:1/fs:3*pi;
      fx = cot(x); % cot(x) está definido en Octave
      plot(x, fx)
      grid on
      title('f(x)=cotan(x)')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 25 % Ejercicio 13_13
      syms x
      x = -5:0.1:5;
      rx = (7/9).^(2*x + 3);
      plot(x, rx)
      grid on
      title('r(x)=((7)/(9))^2*x+3')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 26 % Ejercicio 14_14
      syms x
      x = -3:0.1:3;
      fx = 9.^(x - 2);
      plot(x, fx)
      grid on
      title('f(x)=9^x-2')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 27 % Ejercicio 15_15
      syms x
      x = -5:0.1:-2;
      e = 3;
      fx = e.^(9*x + 18);
      plot(x, fx)
      grid on
      title('f(x)=e^9x+18')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 28 % Ejercicio 16_16
      syms x
      x = -5:0.1:5;
      rx = sin(6*x - 10);
      plot(x, rx)
      grid on
      title('v(x)=sen(6x-10)')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 29 % Ejercicio 17_17
      syms x
      x = -5:0.1:5;
      fx = cos(x.^2 + 3);
      plot(x, fx)
      grid on
      title('f(x)=cos(x^2+3)')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 30 % Ejercicio 18_18
      syms x
      fs = 100;
      x = 0:1/fs:3*pi;
      fx = log10(cos(x));
      plot(x, fx)
      grid on
      title('f(x)=ln(cos(x))')
      xlabel('Eje "X"')
      ylabel('Eje "Y"')
      pause

    case 31 % Inecuación
      syms x
      subplot(3,3,1)
      f = x - 11;
      ezplot(f)
      title('Inecuación de primer grado: x-6 > 5')
      subplot(3,3,2)
      f = 5*x.^2 + 8*x + 1;
      ezplot(f)
      title('Inecuación de segundo grado: 5x^2+8x<-1')
      pause

    case 32 % Polinomio
      syms x
      x = -3/2:0.1:0;
      y = (2*x.^2 + 3*x) ./ (x.^2 + 4*x + 5);
      ezplot('(2*x.^2+3*x)/(x.^2+4*x+5)')
      hold on
      ylabel('y')
      xlabel('x')
      title('raices(-3/2,0)(0,0), dominio x∈ℝ, intercepcion vertical(0,0)')
      pause

    case 33 % Polinomio 1
      syms x
      x = -10:1:10;
      fx = x.^2 - 4;
      plot(x, fx)
      grid on
      title('Polinomial f(x)=(0,-4)')
      pause

    case 34 % Polinomio 2
      syms x
      x = -10:1:10;
      fx = 2*x.^2 + x.^4 + x;
      plot(x, fx)
      grid on
      title('polinomio f(x)=(-0.4533976515164,0)')
      pause

    case 35 % Polinomio 3
      syms x
      x = -10:1:10;
      fx = x.^3 - 6*x.^2 + 11*x - 6;
      plot(x, fx)
      grid on
      title('polinomio f(x)=(0,-6)')
      pause

    case 36 % Polinomio 4
      syms x
      x = -10:1:10;
      fx = 2*x + 1;
      plot(x, fx)
      grid on
      title('polinomio f(X)=(-0.5,0)')
      pause

    case 37 % Radical 1
      syms x
      x = -20:1:20;
      fx = (x + 2) ./ (x - 1);
      plot(x, fx)
      grid on
      title('Radical')
      pause

    case 38 % Radical 2
      syms x
      x = -20:1:20;
      fx = nthroot(x.^2, 3); % Corregido: cbrt no está definido
      plot(x, fx)
      grid on
      title('Radical')
      pause

    case 39 % Raíz
      syms x
      x = 4:1:15;
      y = 1 + sqrt(x - 4);
      plot(x, y)
      grid on
      ylabel('y')
      xlabel('x')
      title('dominio x≥4, rango y∈[1,+∞), minimo (4,1)')
      pause

    case 40 % Trozo
      f = @(x) (-x + 2).*(x < -1) + (x).*(-1 <= x).*(x <= 2) + (2).*(x > 2);
      fplot(f, [-2, 2])
      grid on
      title('Función a trozos')
      pause

    case 41 % Trozo 1.1
      f = @(x) (x).*(0 <= x).*(x <= 1) + (2 - x).*(1 < x).*(x <= 2);
      fplot(f, [0, 2])
      grid on
      title('Función a trozos')
      pause

    case 0 % Salir
      disp('Saliendo del programa...')
      break

    otherwise
      disp('Opción inválida. Por favor, seleccione un número válido.')
      pause(2)
  endswitch
endwhile
