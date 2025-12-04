import 'bank_account.dart';

void main() {
  BankAccount manus = new BankAccount("John Doe", "123456789", 500);

  print("Account Holder: ${manus.getAccountHolder()} \nAccount Number: ${manus.getAccountNumber()} \nBalance \$${manus.getBalance().toStringAsFixed(2)}\n");
  manus.setAccountHolder("Jane Doe");
  manus.deposit(200);
  manus.withdraw(300);
  manus.withdraw(500);
}