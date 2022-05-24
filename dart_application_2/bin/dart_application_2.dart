import 'dart:io';
void main()

{
  print("enter number 1:");
   String? x=stdin.readLineSync();
   var k=int.parse(x!);
  
  print("enter number 2:");
   String? y=stdin.readLineSync();
   var h=int.parse(y!);
   print("enter number 3:");
   String? z=stdin.readLineSync();
   var m=int.parse(z!);

  (k>h)&&(k>m)?print("\n $k is largest") : (h>m)?print("\n $h is largest") :print("\n $m is largest");
  
  
}
