import 'bank_account.dart';

void main() {
  BankAccount manus = new BankAccount("John Doe", "123456789", 500);

  print(
    "Account Holder: ${manus.accountHolder} \nAccount Number: ${manus.accountNumber} \nBalance \$${manus.balance.toStringAsFixed(2)}\n",
  );
  manus.accountHolder = "Jane Doe";
  manus.deposit(200);
  manus.withdraw(300);
  manus.withdraw(500);
}
