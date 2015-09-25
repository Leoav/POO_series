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
int y=1;
void draw(){ //A continuación, se usa la funcion draw para realizar de manera 'ciclica' la representación grafica de dicha serie
  int w=800;
  int h=800;
  int x=12;  
  for (int i=x;i>=0;i--){
    fill(fact(i)%255,fact(i+9)%255,fact(i+50)%255);
    ellipse(w/2,h/2,fact(i)/y,fact(i)/y);
    // Asi pues, la serie esta representada de manera grafica en el tamaño de que pueda tener la elipse y su color
  }
}
void  keyPressed() { // Esta función posibilita modificar el color y el tamaño de la representación grafica de la serie, dependiendo de que tecla presionada.
if(key==CODED){
  if(keyCode==RIGHT){
       y=y+1;
  }else if(keyCode==LEFT){
   y=y-1;
    if(y<1){
    y=1;
    }   
  } 
 } 
}