# StartsField
Al ejecutarse se abre en pantalla completa el campo de estrellas donde por medio del ratón (izquierda, derecha), se controla la velocidad a la que se acercan las estrellas.

Dentro de la carpeta main se encuentra el codigo fuente.
Consta de 2 archivos main.pde y Estrella.pde

#main.pde 
Contiene el archivo principal donde se encuentra el setup() y draw() y se instancian Estrellas

#Estrella.pde
Es el archivo de la clase Estrella la cual cuenta con:
  + Una posision en x, y, z 
  + Velocidad (speed)
  + posición z anterior (pz)
  + color

Cuenta con 2 funciones

#update()
  Va cambiando el valor de z de acuerdo a su velocidad y resetea los valores de ser necesario.

#show()
  Muestra lineas que simulan ser las estrellas
