
main(){
  bankClient client1=bankClient();
  client1.name="Ruba";
  client1.balance=23009;
  print(client1.generateid());
  print(client1.generateid());
  print(client1.generateid());
  print(client1.getName());
  print(client1.getBalance());
  print(client1.deposit(amount: 200));
  print(client1.withdraw(amount: 9));
  bankClient client2=bankClient(id: 20,name: "SARA", balance: 4000);

}

//5.Create a bankClient class with three variable properties: id, name, and balance.
class bankClient {
  int? id;
  String?name;
  int?balance=0;
  int clientnum=0;

//5.The value of id should be an automatically generated,
  generateid(){
    clientnum++;
    id=clientnum;
    return id;
  

  }

//6.Add two function to bankClient class called getBalance and getName. The getBalance function return the balance, getMameretun the name.
  getBalance(){
    
    print("your balance is $balance");

  }

  getName(){
    print("your name is $name");

  }
//7.Create an deposit and withdraw functions, the deposit take a double parameter amount 
  deposit({double?amount}){
    var balance1;
     balance1= balance!+amount!;
     print("YOUR NEW BALANCE AFTER DEPOSIT $balance1 ");
     return balance1;
  }
  
  withdraw({double?amount}){

     if(balance!>amount!){
      var newbalance;
      newbalance=balance!-amount;
      print("YOUR NEW BALANCE IS $newbalance");

      return newbalance;

     }else{
      print("Operation Failed!");
     }

  }
    bankClient({int? id , String?name , int?balance }){
      print("$name your id is $id ,and your balance is $balance ");
    }


}

