class BankAccount {
  String _accountNumber = "";
  String _accountHolder = "";
  double _balance = 0;

  BankAccount(this._accountHolder, this._accountNumber, this._balance);

  double getBalance() {
    return this._balance;
  }

  String getAccountHolder() {
    return this._accountHolder;
  }

  void setAccountHolder(String holder) {
    this._accountHolder = holder;
    print("Account Holder updated to: $holder\n");
  }

  String? getAccountNumber() {
    return this._accountNumber;
  }

  void deposit(double amount) {
    if(amount >= 0) {
      this._balance += amount;
      print("Deposited \$$amount. New Balance: \$${this._balance}");
    } else {
      print("Insufficient funds. Cannot deposit \$$amount.");
    }
  }

  void withdraw(double amount) {
    if(amount >= 0 && amount <= this._balance) {
      this._balance -= amount;
      print("Withdraw \$$amount. New Balance: \$${this._balance}");
    } else {
      print("Insufficient funds. Cannot withdraw \$$amount.");
    }
  }
}

void main() {
  BankAccount manus = new BankAccount("John Doe", "123456789", 500);

  print("Account Holder: ${manus.getAccountHolder()} \nAccount Number: ${manus.getAccountNumber()} \nBalance \$${manus.getBalance().toStringAsFixed(2)}\n");
  manus.setAccountHolder("Jane Doe");
  manus.deposit(200);
  manus.withdraw(300);
  manus.withdraw(500);
}