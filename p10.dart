import 'dart:io';
class bank
{
  var a,b,c,i;

  public:
  void setvalue(int x,int w,int d)
  {
    a=x;
    b=w;
    c=d;
  }
  int withdraw(int w)
  {
    return w;
  }
  int deposite(int d)
  {
    return d;
  }
  int final1(int x)
  {
    print("\n your current balance is :$x");
  }
  int display(int x,int w,int d)
  {
    print("\n withdraw:$w");
     print("\n deposite:$d");
     print("\n current balance:$x");
  }
  
  
};
void choice()
{
  print(" 1. withdraw");
  print(" 2. deposite");
  print(" 3.current balance");
  print(" 0. Exit");
  print(" Enter your choice : ");
}
// var withdraw(var w,var x)
// {
//   return x-w;
// }

void main()
{
 
  var h,x=1000,w,y,d;
  bank obj;
  do{
    choice();
    var c=stdin.readLineSync();
     h=int.parse(c);
    //var t=stdout.write("$h");
    switch(h){
      case 1:{
         print("enter your withdraw amount :");
         var withdraw=stdin.readLineSync();
        if(x>w)
        {
          x=x-obj.withdraw(w);
          
          print("new balance is:$x");
          y=y-w;
          obj.display(x,w,d);
          
        }
        else{
          print("\n invalid input");
          // x=withdraw;
        }
          break;}
      case 2 :{
        print("\n enter amount you want to deposite:");
        var deposite=stdin.readLineSync();
         x=x+obj.withdraw(w);
        print("\n your new balance is:$x");
        y=y+d;
        obj.display(x,w,d);
          break;
      }
      case 3:
        {
          print("current balanace:$x");
          break;
        }
     case 0:{
          break;}
      default:
          print("invalid choice");
    }
  }while(h!=0);
}