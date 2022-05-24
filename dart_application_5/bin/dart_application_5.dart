import 'dart:io';
void coupen(var fi)
{
  var fi1;
  var c2=10,c3=20;
  
  print("\n -------SELECT YOUR COPEN---------");  

  print("\n1. Take the discount copen = 10/-");
  print("\n2. Take the cashback coupen = 20/-");
  print("\n0. exit");
  print(" Enter your choice");
  
          String? l=stdin.readLineSync();
          var k=int.parse(l!);
            switch(k)
            {
              case 1:{
                //var c2=10;
                print("Your coupen charge is = $c2");
                fi=fi+c2;
                print("After take coupen your bill is:$fi RS/-");
                print("\n Congratulations you are erned for 10 % discount");
                fi1=(fi*10)/100;
                print(" Take your discount is $fi1 RS /-");
                fi=fi-fi1;
                
                print("\t\tYour Final amount is pay = $fi");
                print("\n----THANKS FOR SHOPPING----");
              break;}
              case 2:{
                print("\n Your coupen charge is = $c3");
                fi=fi+c3;
                print(" \nAfter take coupen your bill is = $fi");
                print("-----Congratulations you are erned for 15 % cashback-----");
                 fi1=(fi*15)/100;
                print(" Take your cashback is $fi1 RS ");
                fi=fi-fi1;
                print("\n===============================================");
                print("Your Final amount is pay = $fi RS /-");
                print("\n THANKS FOR SHOPPING");
                break;
              }
              case 0:{
                break;}
              default:
                print("invalid choice"); 
          break;
      }
}
void choice()
{
  print(" 1. Apple = 50 Rs/piece");
  print(" 2. Mango = 70 Rs/piece");
  print(" 3. Pineapple = 60 Rs/piece");
  print(" 4. Coconate = 40 Rs/piece");
  print(" 0. Exit");
  print(" Enter your choice : ");
}
void offer()
{
  
  print("\n \t\t\t\t OUR TODAY's OFFER");
  print("\n-------------------------------------------");
  print(" 1. Get the 5 % discont of your total bill amount is more than 300 RS /-");
  print(" 2. Get apply your lucky coupen");
  print(" 0. Exit");
  print(" Enter your choice : ");
}
void calc(int x,int g,String y,int GST){
  var TO,dis,fb;
  var fi,fi1;
  print("\t\t\t $y \n");
  print("\n--------------------------------------------");
  print("->Your product quentitys is = $x \n");
  print("->per product amount is = $g");
  var total=x*g;
  print("->Your product total amount is without GST = $total RS/- ");
  if(total>100){
    print("->Your GST is = $GST %  \n");
    TO=(total*GST)/100;
    fi=(TO+total);
    print("->Your product GST amount is = $TO \n");
    print("->Your final amount with GST= $fi RS /- \n");
    if(fi>300)
    {
      offer();
      String? p=stdin.readLineSync();
      var q=int.parse(p!);
      switch(q){
        case 1:{
          dis=(fi*5)/100;
          print("Get your discount: $dis");
          fb=fi-dis;
          print("Your final bill amount with discont = $fb");
          break;}
        case 2:{
          coupen(fi);
          break;
    }
           case 0:
            break;
      default:
          print("Invalid choice");
  }
    
  }
  else{
    
    print(" Your Final amount of without GST = $total");
   
  }
  
  
}}
  
void main()
{
 
  var h;
  do{
    choice();
    String? c=stdin.readLineSync();
     h=int.parse(c!);
    //var t=stdout.write("$h");
    switch(h){
      case 1:{
          var GST=5;
          var g=50; 
          String a= "Your product is Apple";
          print("Enter the Quntity of your product : ");
          String? ap=stdin.readLineSync();
          var app=int.parse(ap!);
          calc(app,g,a,GST);
          break;}
      case 2 :{
        var GST=7;
          var g=70; 
          String a= "Your product is MANGO";
          print("Enter the Quntity of your product : ");
          String? mn=stdin.readLineSync();
          var man=int.parse(mn!);
          calc(man,g,a,GST);
          break;
      }
        case 3 :{
        var GST=4;
          var g=60; 
          String a= "Your product is PINEAPPLE";
          print("Enter the Quntity of your product : ");
          String? mn=stdin.readLineSync();
          var man=int.parse(mn!);
          calc(man,g,a,GST);
          break;
      }
        case 4 :{
        var GST=4;
          var g=40; 
          String a= "Your product is COCONATE";
          print("Enter the Quntity of your product : ");
          String? mn=stdin.readLineSync();
          var man=int.parse(mn!);
          calc(man,g,a,GST);
          break;
      }
      case 0:{
          break;}
      default:
          print("invalid choice");
    }
  }while(h!=0);
}