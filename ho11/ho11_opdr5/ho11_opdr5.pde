String zoekNaam = "jan";
boolean gevonden = false;
String[] namen = {"janklaas","pieter","jai","ruben","rafael","mick","daniel","andy","eric","christiaan","ramòn","jan","klaas"};

void setup(){
  for(int i = 0; i < namen.length; i++){
    if (zoekNaam == namen [i]){
      gevonden = true;
    }
  }

if(gevonden){
  println("ja de naam " + zoekNaam+ " bestaat!");
}else{
  println("helaas de naam " + zoekNaam +  " ken ik niet");
  }
}
