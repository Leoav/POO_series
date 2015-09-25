// Este programa permite representar de manera gráfica y numérica la serie de los numeros factoriales
int fact(int n){ // Esta función permite determinar de manera numerica el n-esimo termino de la serie de los numeros factoriales
  if (n==0)
  return 1;
  if (n==1)
  return 1;
  if (n>1)
  return n*fact(n-1);
  return -1;
}