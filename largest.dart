import 'dart:io';
void main()
{
 
  // print("\n enter any three numbers:");
   print("enter number 1:");
   var x=stdin.readLineSync();
   var k=int.parse(x);
  
  print("enter number 2:");
   var y=stdin.readLineSync();
   var h=int.parse(y);
   print("enter number 3:");
   var z=stdin.readLineSync();
   var m=int.parse(z);

  (k>h)&&(k>m)?print("\n $k is largest") : (h>m)?print("\n $h is largest") :print("\n $m is largest");
  
}

 
