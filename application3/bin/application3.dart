
import 'dart:io';
void main()
{
  var price,ext;
  print("\nEnter units of electricity used:");
  String? k=stdin.readLineSync();
  var unit=int.parse(k!);
     
  if(unit<=100)
  {
    price=unit*0.60+50;
    print("\n units & price:$price");
  }
  else if(unit>100 && unit<=300)
  {
    ext=unit-100;
    price=(ext*0.80)+60+50;
    print("\n units & price:$price");
  }
   else if(unit>300)
  {
    ext=unit-300;
    price=(ext*0.90)+270;
    print("\n units & price:$price");
  }
  if(unit>=300)
  {
    price=price+(price*0.15);
    print("\n additional subcharge units & price:$price");
  }
}
