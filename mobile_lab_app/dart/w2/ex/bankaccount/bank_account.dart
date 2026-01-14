class BankAccount {
  String _accountNumber;
  String _accountHolder;
  double _balance;

  BankAccount(this._accountHolder, this._accountNumber, this._balance);

  double get balance => this._balance;
  String get accountHolder => this._accountHolder;
  String get accountNumber => this._accountNumber;

  void set accountHolder(String holder) {
    this._accountHolder = holder;
    print("Account Holder updated to: $holder\n");
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