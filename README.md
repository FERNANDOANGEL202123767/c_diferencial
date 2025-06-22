# 📊 Colección de Scripts de Octave para Matemáticas

Este repositorio contiene una colección de scripts de GNU Octave diseñados para explorar conceptos matemáticos fundamentales, como clasificación de números, inecuaciones, funciones polinomiales, racionales, trascendentes, a trozos, e inyectivas/sobreyectivas/biyectivas. Incluye un menú interactivo (`menu.m`) que permite seleccionar y visualizar gráficas de forma sencilla. Los scripts son educativos, ideales para estudiantes de álgebra y programación.

## 📋 Tabla de Contenidos

- [Introducción](#-introducción)
- [Requisitos](#-requisitos)
- [Instalación](#-instalación)
- [Uso](#-uso)
- [Descripción de los Scripts](#-descripción-de-los-scripts)
- [Autor](#-autor)

## 📖 Introducción

Este proyecto recopila scripts de Octave creados para repasar conceptos matemáticos a través de definiciones, cálculos y visualizaciones gráficas. Los scripts cubren desde la clasificación de números hasta funciones complejas, con un enfoque en su representación gráfica y propiedades. El script `menu.m` ofrece una interfaz en consola para seleccionar y visualizar las gráficas de forma interactiva.

El repositorio está diseñado para ser subido a GitHub, facilitando su uso en entornos educativos. Los scripts son compatibles con Arch Linux y requieren el paquete symbolic de Octave.

## 🛠 Requisitos

- **Sistema operativo**: Arch Linux (o distribuciones Linux compatibles)
- **Software**:
  - GNU Octave (versión 9.2.0 o superior recomendada)
  - Paquete symbolic para Octave
- **Hardware**: Sistema con capacidad para ejecutar Octave y mostrar gráficos
- **Archivos**: Scripts .m incluidos en este repositorio

## 🔧 Instalación

Sigue estos pasos para configurar el entorno en Arch Linux:

1. **Actualiza el sistema**:
   ```bash
   sudo pacman -Syu
   ```

2. **Instala GNU Octave**:
   ```bash
   sudo pacman -S octave
   ```

3. **Verifica la instalación**:
   ```bash
   octave --version
   ```

4. **Instala el paquete symbolic**:
   ```octave
   octave
   >> pkg install -forge symbolic
   >> pkg load symbolic
   ```

## 🚀 Uso

### Método 1: Menú interactivo (recomendado)

1. **Clona el repositorio**:
   ```bash
   git clone https://github.com/tu_usuario/tu_repositorio.git
   cd tu_repositorio
   ```

2. **Ejecuta el menú interactivo**:
   ```bash
   octave menu.m
   ```

3. **Selecciona una gráfica** ingresando un número (0 para salir)

4. **Presiona cualquier tecla** para volver al menú tras ver la gráfica

### Método 2: Script individual

1. **Ejecuta un script específico**:
   ```bash
   octave nombre_script.m
   ```

   **Ejemplo**:
   ```bash
   octave cuadratica.m
   ```

2. **Visualiza las gráficas**:
   - Los scripts con gráficos abrirán una ventana de visualización
   - Los scripts sin gráficos (`c_numeros`, `clasificacion_de_numeros`) muestran texto en consola

## 📑 Descripción de los Scripts

A continuación, una tabla con la descripción de cada script, su tipo, si genera gráfica y notas específicas:

| Script | Tipo | Descripción | Gráfica | Notas |
|--------|------|-------------|---------|--------|
| `absoluto.m` | Función absoluta | Grafica `|z^3|`, muestra dominio y rango | ✅ | - |
| `c_numeros.m` | Clasificación de números | Define conjuntos numéricos y propiedades (cerradura, conmutativa, etc.) con ejemplos | ❌ | Contiene errores menores (ejemplo: a(1) inválido) |
| `clasificacion_de_numeros.m` | Clasificación de números | Similar a c_numeros, define conjuntos y propiedades | ❌ | Más completo que c_numeros |
| `cuadratica.m` | Función cuadrática | Grafica `1+x^2`, muestra dominio, rango y mínimo | ✅ | Representa parábolas simples |
| `cuadratica1.1.m` | Función cuadrática | Grafica `x^2+6x`, muestra raíces y mínimo | ✅ | Modela trayectorias físicas |
| `cuarto.m` | Función de cuarto grado | Grafica `x^4+6x^3+9x^2-1`, muestra mínimos y máximo | ✅ | Usa semilogy para escala logarítmica |
| `division.m` | Función racional | Grafica `x/(2-x)`, muestra raíz y dominio | ✅ | Analiza discontinuidades |
| `division1.1.m` | Función racional | Grafica `(t-1)/(t-2)`, muestra raíz e intercepción | ✅ | Similar a division |
| `ejercicio1_1.m` | Exponencial | Grafica `(3/7)^r`, función inyectiva | ✅ | Modela decaimiento exponencial |
| `ejercicio1.m` | Cuadrática | Grafica `x^2`, no inyectiva ni sobreyectiva | ✅ | Analiza propiedades de mapeo |
| `ejercicio2_2.m` | Exponencial | Grafica `3^x`, función inyectiva | ✅ | Simula crecimiento exponencial |
| `ejercicio2.m` | Racional | Grafica `(x^4+1)/(x^3)`, función inyectiva | ✅ | Corregido en menu.m para sintaxis |
| `ejercicio3_3.m` | Exponencial | Grafica `5^x`, función inyectiva | ✅ | Modela crecimiento exponencial |
| `ejercicio3.m` | Cuadrática | Grafica `x^2`, función inyectiva en dominio restringido | ✅ | Analiza mapeos |
| `ejercicio4_4.m` | Logarítmica | Grafica `log10(8x)`, función inyectiva | ✅ | Útil en escalas logarítmicas |
| `ejercicio4.m` | Cúbica | Grafica `x^3`, función sobreyectiva | ✅ | Modela funciones con rango completo |
| `ejercicio5_5.m` | Logarítmica | Grafica `log10(3x)`, función inyectiva | ✅ | Transformación de datos |
| `ejercicio5.m` | Raíz cúbica | Grafica `∛(x^3)`, función biyectiva | ✅ | Corregido en menu.m con nthroot |
| `ejercicio6_6.m` | Logarítmica | Grafica `log10(e*x)`, función inyectiva | ✅ | Logaritmo natural |
| `ejercicio6.m` | Racional | Grafica `1/r^3`, no inyectiva ni sobreyectiva | ✅ | Analiza limitaciones de mapeo |
| `ejercicio7_7.m` | Trigonométrica | Grafica `sin(v)`, función trascendente | ✅ | Simula ondas |
| `ejercicio8_8.m` | Trigonométrica | Grafica `cos(x)`, función trascendente | ✅ | Modela oscilaciones |
| `ejercicio9_9.m` | Trigonométrica | Grafica `tan(x)`, función trascendente | ✅ | Análisis de ángulos |
| `ejercicio10_10.m` | Trigonométrica | Grafica `csc(x)` (corregido como `1/sin(x)`) | ✅ | Corregido en menu.m |
| `ejercicio11_11.m` | Trigonométrica | Grafica `sec(x)` (`1/cos(x)`) | ✅ | Funciones recíprocas |
| `ejercicio12_12.m` | Trigonométrica | Grafica `cot(x)`, función sobreyectiva | ✅ | Análisis de periodicidad |
| `ejercicio13_13.m` | Exponencial | Grafica `(7/9)^(2x+3)`, función inyectiva | ✅ | Decaimiento exponencial |
| `ejercicio14_14.m` | Exponencial | Grafica `9^(x-2)`, función inyectiva | ✅ | Crecimiento exponencial desplazado |
| `ejercicio15_15.m` | Exponencial | Grafica `3^(9x+18)`, función inyectiva | ✅ | Crecimiento rápido |
| `ejercicio16_16.m` | Trigonométrica | Grafica `sin(6x-10)`, función trascendente | ✅ | Ondas con fase alterada |
| `ejercicio17_17.m` | Trigonométrica | Grafica `cos(x^2+3)`, función trascendente | ✅ | Oscilaciones no lineales |
| `ejercicio18_18.m` | Logarítmica/Trigonométrica | Grafica `log10(cos(x))`, función trascendente | ✅ | Combina logaritmos y trigonometría |
| `ine.m` | Inecuaciones | Grafica inecuaciones de primer y segundo grado | ✅ | Usa subplot, puede requerir ajustes |
| `polinomio.m` | Racional | Grafica `(2x^2+3x)/(x^2+4x+5)`, muestra raíces | ✅ | Modela relaciones racionales |
| `polinomio1.m` | Cuadrática | Grafica `x^2-4`, muestra intercepción | ✅ | Optimización simple |
| `polinomio2.m` | Cuarto grado | Grafica `2x^2+x^4+x`, muestra comportamiento no lineal | ✅ | Sistemas complejos |
| `polinomio3.m` | Cúbica | Grafica `x^3-6x^2+11x-6`, muestra raíces | ✅ | Curvas cúbicas |
| `polinomio4.m` | Lineal | Grafica `2x+1`, muestra intercepción | ✅ | Relaciones lineales |
| `radical1.m` | Racional | Grafica `(x+2)/(x-1)`, muestra discontinuidad | ✅ | Análisis de límites |
| `radical2.m` | Raíz cúbica | Grafica `∛(x^2)`, muestra comportamiento | ✅ | Corregido en menu.m con nthroot |
| `raiz.m` | Raíz cuadrada | Grafica `1+√(x-4)`, muestra dominio restringido | ✅ | Funciones con restricciones |
| `trozo.m` | Función a trozos | Grafica función definida por tramos | ✅ | Modela sistemas condicionales |
| `trozo1.1.m` | Función a trozos | Grafica otra función a trozos | ✅ | Lógica condicional |
| `menu.m` | Menú interactivo | Permite seleccionar y visualizar gráficas de los scripts anteriores | ✅ | Interfaz en consola para navegación |


## 👤 Autor

- **Nombre**: Fernando Ángel García Hernández
- **Colaboradores**: Horacio RoVe
- **Fecha**: 2021 (actualizado en 2025)
- **Contacto**: FERNANDOANGEL202123767@github.com

---

⭐ **¡Si te gusta este proyecto, deja una estrella en el repositorio!** ⭐
