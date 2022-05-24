import 'dart:io';
void choice()
{
  print("\n\t\t\t-------Your account process------");
  print("\t\t 1. Withdrow");
  print("\t\t 2. Diposite");
  print("\t\t 3. Cheak the your current balance status");
  print("\t\t 0. Exit");
  print("\n\t Please Enter Your Choice : ");
}
int withdrow(var b,var wi)
{
  b=b-wi;
  return b;
}
int diposite(var b,var ti)
{
  b=b+ti;
  return b;
}
void main()
{
  var c,d,w,wi,t,ti,b=1000;
 
  print("\n------Wel-Come for the banking-------\n");
 
  do{
  choice();
   c=stdin.readLineSync();
   d=int.parse(c);
    switch(d){
      case 1:{
        if(b>1000){
        print(" \n Please enter your Withdrow money : ");
        w=stdin.readLineSync();
        wi=int.parse(w);
        print("\n\t\t=================================");
        print("\t\tYour balance is  =  ${withdrow(b,wi)} RS /-");              
        print("\t\t=================================");
        print("\n\t\t------THANK YOU FOR BANKING------");
        b=withdrow(b,wi);}
        else{
          print("\n Your current balance is low");
        }
        break;
      }
      case 2:{
        print("\n Please enter your diposite money  : ");
        t=stdin.readLineSync();
        ti=int.parse(t);
        print("\n\t\t=================================");
        print("\t\tYour balance is= ${diposite(b,ti)} RS /-");
        print("\t\t=================================");
        print("\n\t\t------THANK YOU FOR BANKING------");
        b=diposite(b,ti);
        break;
      }
      case 3:{
         print("\n\t\t=================================");
        print("\t\tyour current balance is = $b");
         print("\t\t=================================");
        print("\n\t\t------THANK YOU FOR BANKING------");
        break;
      }
      case 0:
          break;
      default:
          print("\n Invalid choice");
    }
  }while(d!=0);
}