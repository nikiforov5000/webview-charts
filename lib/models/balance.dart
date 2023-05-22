class Balance {
  Balance(double balance) : _currentBalance = balance;
  double? _currentBalance;
  double get balance => _currentBalance!;
  set balance(double newBalance) {
    _currentBalance = newBalance;
  }
}