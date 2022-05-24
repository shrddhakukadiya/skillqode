import "dart:io";
void main()
{
  print("enter a:");
  var a=stdin.readLineSync();
  print("enter b:");
  var b=stdin.readLineSync();
  print("enter c:");
  var c=stdin.readLineSync();

  var d=int.parse(a!)+int.parse(b!)+int.parse(c!);
  stdout.write("total: ${d}");

  var average=(d)/3;
  stdout.write("\n average: ${average}");

  
}