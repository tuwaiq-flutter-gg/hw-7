main(){

BankClient clin = BankClient(name:"Nama" );

BankClient.getBalance(double balance1);
print("your BANK");
print(clin.getName());
print(clin.getBalance());

clin.deposit(amountadd: 200);
print(clin.getBalance());

clin.withdraw(amounts: 50);
print(clin.getBalance());



}


class BankClient {
static int idnew=1;
late int id;
final String name;
double balbnce = 0;


BankClient({required this.name}){

id = (idnew+1);
balbnce=0; 
}

getBalance(){

return this.balbnce;

}

getName(){

return name;

}

deposit({double? amountadd}){
this.balbnce = this.balbnce + amountadd!;
return balbnce;
}


withdraw({double? amounts}){

if (this.balbnce< amounts!){


print("Operation Failed! The amount is greater than your balance .");
}
else {
this.balbnce = this.balbnce - amounts;
return getBalance();
}


}

}