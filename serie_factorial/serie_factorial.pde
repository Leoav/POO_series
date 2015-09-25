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
void setup(){
  size(800,800);
  int x=7;
  print ("El n-esimo termino de la serie factorial es ",fact(x));
  println();
  print ("Los n primeros terminos de la serie son:");
  for (int b=0;b<=x;b++) // se usa un ciclo para representar los n primeros numeros de la serie de los factoriales 
  print (fact(b), " ");   
}