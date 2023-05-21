import 'dart:math';

import 'package:test_job_slavit_ou/models/trader.dart';

class TradersData {
  Random _random = Random();
  List<Trader> _traders = [];

  TradersData() {
    fillList();
  }

  get traders => _traders;

  void updateNumbers() {
    int index = _random.nextInt(10);
    Trader trader = _traders[index];
    trader.profit += _random.nextInt(100) + 50;
    trader.deposit += _random.nextInt(100) + 50;
  }

  void fillList() {
    for (int i = 1; i < 11; ++i) {
      _traders.add(
        Trader(
            index: i,
            name: getRandomName(),
            flagImagePath: getRandomFlagImage(),
            deposit: getRandomDeposit(i),
            profit: getRandomProfit(i),
        )
      );
    }
  }
  double getRandomProfit(int i) {
    i = (i - 10).abs();
    double diff = _random.nextInt(500).toDouble();
    double profit = i * 6666 + diff * 1 + _random.nextInt(10);
    return profit;
  }

  double getRandomDeposit(int i) {
    i = (i - 10).abs();
    double diff = _random.nextInt(200).toDouble();
    double deposit = i * 444 + diff;
    return deposit;
  }

  String getRandomName() {
    int rand = _random.nextInt(100);
    return names[rand];
  }

  String getRandomFlagImage() {
    int rand = _random.nextInt(260) + 1;
    String path = 'assets/images/flags_nums/$rand.svg';
    return path;
  }

}

var names = [
  'James', 'Mary', 'Robert',	'Patricia',
  'John',	'Jennifer', 'Michael',	'Linda',
  'David',	'Elizabeth', 'William',	'Barbara',
  'Richard',	'Susan', 'Joseph',	'Jessica',
  'Thomas',	'Sarah', 'Christopher' ,	'Karen',
  'Charles' ,	'Lisa', 'Daniel' ,	'Nancy',
  'Matthew' ,	'Betty', 'Anthony' ,	'Sandra',
  'Mark' ,	'Margaret', 'Donald' ,	'Ashley',
  'Steven' ,	'Kimberly', 'Andrew' ,	'Emily',
  'Paul' ,	'Donna', 'Joshua' ,	'Michelle',
  'Kenneth' ,	'Carol', 'Kevin' ,	'Amanda',
  'Brian' ,	'Melissa', 'George' ,	'Deborah',
  'Timothy' ,	'Stephanie', 'Ronald' ,	'Dorothy',
  'Jason' ,	'Rebecca', 'Edward' ,	'Sharon',
  'Jeffrey','Laura', 'Ryan','Cynthia',
  'Jacob','Amy', 'Gary','Kathleen',
  'Nicholas','Angela', 'Eric','Shirley',
  'Jonathan','Brenda', 'Stephen','Emma',
  'Larry','Anna', 'Justin','Pamela',
  'Scott','Nicole', 'Brandon','Samantha',
  'Benjamin','Katherine', 'Samuel','Christine',
  'Gregory','Helen', 'Alexander','Debra',
  'Patrick','Rachel', 'Frank','Carolyn',
  'Raymond','Janet', 'Jack','Maria',
  'Dennis','Catherine', 'Jerry','Heather',
  'Tyler','Diane', 'Aaron','Olivia',
  'Jose','Julie', 'Adam','Joyce',
  'Nathan','Victoria', 'Henry','Ruth',
  'Zachary','Virginia', 'Douglas','Lauren',
  'Peter','Kelly', 'Kyle','Christina',
  'Ethan','Evelyn', 'Jeremy','Judith',
  'Walter','Andrea', 'Christian','Hannah',
  'Keith','Megan', 'Roger','Cheryl',
  'Terry','Jacqueline', 'Austin','Martha',
  'Sean','Madison', 'Gerald','Teresa',
  'Carl','Gloria', 'Harold','Sara',
  'Dylan','Janice', 'Arthur','Ann',
  'Lawrence','Kathryn', 'Jordan','Abigail',
  'Jesse','Sophia', 'Bryan','Frances',
  'Billy','Jean', 'Bruce','Alice',
  'Gabriel','Judy', 'Joe','Isabella',
  'Logan','Julia', 'Alan','Grace',
  'Juan','Amber', 'Albert','Denise',
  'Willie','Danielle', 'Elijah','Marilyn',
  'Wayne','Beverly', 'Randy','Charlotte',
  'Vincent','Natalie', 'Mason','Theresa',
  'Roy','Diana', 'Ralph','Brittany',
  'Bobby','Doris', 'Russell','Kayla',
  'Bradley','Alexis', 'Philip','Lori',
  'Eugene','Marie', 'Noah','Joan',
];