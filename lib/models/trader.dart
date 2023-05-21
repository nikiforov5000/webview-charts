class Trader {
  final int index;
  final String flagImagePath;
  final String name;
  double deposit;
  double profit;

  Trader({
    required this.index,
    required this.name,
    required this.flagImagePath,
    required this.deposit,
    required this.profit,
  });
}