import 'dart:io';

void main() {
  int? option;
  AccountTracker tracker = AccountTracker();
  Console c = Console(tracker);

  while (option != 0) {
    option = c.askOption();

    if (option == 1) c.askAccount();
    if (option == 2) c.showAccounts();
    if (option == 3) c.askTransaction();
  }
}

class Console {
  AccountTracker tracker;

  Console(this.tracker);

  int askOption() {
    print('---Menu---');
    print('0. salir ');
    print('1. crear cuenta');
    print('2. mostrar cuentas');
    print('3. crear movimiento');
    int option = read_int();
    print('');
    return option;
  }

  int read_int() {
    return int.parse(stdin.readLineSync().toString());
  }

  String read_string() {
    return stdin.readLineSync().toString();
  }

  double read_double() {
    return double.parse(stdin.readLineSync().toString());
  }

  bool read_bool() {
    return stdin.readLineSync().toString() == "1";
  }

  askAccount() {
    print('como se llamara su cuenta?');

    String name = read_string();

    while (name == '') {
      print('porfavor coloque un nombre a la cuenta ');
      name = read_string();
    }

    print('digite el saldo inicial de la cuenta ');

    double balance = read_double();

    while (balance < 0) {
      print('porfavor digite saldo mayor a cero ');
      balance = read_double();
    }

    print('su cuenta es virtual ?   Marque 1. si lo es. ');
    bool virtual = read_bool();
    if (virtual == true) {
      print('su cuenta es digital');
    }

    if (virtual == false) {
      print('su cuenta es fisica');
    }

    Account account = Account.create(name, virtual, balance);
    tracker.accounts.add(account);
  }

  showAccounts() {
    showItems(tracker.accounts);
    if (tracker.accounts.length <= 0) {
      print('Aun no hay cuentas');
    }
  }

  askTransaction() {
    List<Account> physical = tracker.whereVirtual(false);

    if (physical.length <= 0) {
      print(
          'No hay ninguna cuenta fisica debe crear almenos una para poder crear movimientos');
      return;
    }

    bool repeatAccountPhysic = true;
    List<TransactionDetail> details = [];
    Set<int> chossenAccounts = {};

    print('');
    print('---Cuentas Fisicas---');
    while (repeatAccountPhysic) {
      print('digite la descripcion ');
      String description = read_string();
      Account accountSelected = selectAccount(
          'seleccione una cuenta fisica', physical, chossenAccounts, false);
      print(
          'La transaccion es un ingreso o un gasto?    ingreso (1)     gasto (2)');
      bool income = read_bool();
      bool invalidValue = true;
      double value;
      do {
        print('digite el valor ');
        value = read_double();
        if (income) {
          invalidValue = false;
        } else {
          invalidValue = value > accountSelected.balance;
        }
        if (invalidValue) {
          print('Error: este valor supera el saldo de la cuenta');
        }
      } while (invalidValue);

      TransactionDetail detail = TransactionDetail(accountSelected, value);

      details.add(detail);
      if (physical.length <= 0) {
        repeatAccountPhysic = false;
      } else {
        print(
            'desea seleccionar otra cuenta fisica ?     digite 1. SI     2. NO');
        repeatAccountPhysic = read_bool();
      }
    }

    bool repeatAccountvirtual = true;
    print('');
    print('---Cuentas Virtuales---');

    while (repeatAccountvirtual) {
      print('digite la descripcion');
      String description = read_string();
      List<Account> virtual = tracker.whereVirtual(true);
      Account accountSelected = selectAccount(
          'seleccione una cuenta virtual', virtual, chossenAccounts, true);

      bool confirmed = false;
      while (!confirmed) {
        print(
            'La transaccion es un ingreso o un gasto?    ingreso (1)     gasto (2)');
        bool income = read_bool();

        bool invalidValue = true;
        double value;
        do {
          print('digite el valor ');
          value = read_double();
          if (income) {
            invalidValue = false;
          } else {
            invalidValue = value > accountSelected.balance;
          }
        } while (invalidValue);

        List<TransactionDetail> detailVirtual =
            details.where((detail) => detail.account.virtual).toList();

        List<TransactionDetail> detailReal =
            details.where((detail) => !detail.account.virtual).toList();
        double sumvirtual = sum(detailVirtual);
        double sumreal = sum(detailReal) + value;

        if (sumvirtual > sumreal) {
          print(
              'las cuentas virtuales no puede ser mayor que las fisicas. porfavor digitar el valor nuevamente');
        } else {
          confirmed = true;
        }

        TransactionDetail detail = TransactionDetail(accountSelected, value);
        details.add(detail);
      }
      if (virtual.length <= 0) {
        repeatAccountvirtual = false;
      } else {
        print(
            'deseas seleccionar otra cuenta virtual?.  digite 1. SI     2. NO');
        repeatAccountvirtual = read_bool();
      }
    }
  }

  Account selectAccount(String message, List<Account> accounts,
      Set<int> chossenAccounts, bool virtual) {
    Account? accountSelected;

    do {
      print(message);
      showItems(accounts);
      print('digite la cuenta a selecionar');
      int id = read_int();
      bool added = chossenAccounts.contains(id);
      if (added) {
        print('Ya esta cuenta esta seleccionada');
      } else {
        accountSelected = tracker.firstWhereId(id);
        if (accountSelected == null) {
          print('Esta cuenta no existe');
        } else if (accountSelected.virtual != virtual) {
          if (accountSelected.virtual) {
            print('esta cuenta es virual');
          } else {
            print('esta cuenta es fisica');
          }
        } else {
          chossenAccounts.add(id);
          accounts.removeWhere((account) => account.id == id);
        }
      }
    } while (accountSelected == null || accountSelected.virtual != virtual);
    return accountSelected;
  }

  showItems(List items) {
    for (int i = 0; i < items.length; i++) {
      print(items[i]);
    }
  }
}

class AccountTracker {
  List<Account> accounts = [
    Account.create('bancolombia', false, 1000),
    Account.create('vacaciones', true, 500),
  ];

  List<Account> whereVirtual(bool virtual) {
    return accounts.where((account) => account.virtual == virtual).toList();
  }

  Account? firstWhereId(int id) {
    try {
      return accounts.firstWhere((account) => account.id == id);
    } catch (e) {
      return null;
    }
  }
}

class Account {
  static int nextId = 0;
  static int getNextId() {
    nextId += 1;
    return nextId;
  }

  static Account create(String name, bool virtual, double balance) {
    int id = getNextId();
    Account account = Account(id, name, virtual, balance);
    return account;
  }

  int id;
  String name;
  bool virtual;
  double balance;

  Account(
      int this.id, String this.name, bool this.virtual, double this.balance);

  String toString() {
    return '${id} - ${name} - ${virtual} - ${balance}';
  }
}

class Transaction {
  String description;
  DateTime dateTime;
  bool income;
  List<TransactionDetail> details = [];

  Transaction(
      String this.description, DateTime this.dateTime, bool this.income);
}

class TransactionDetail {
  Account account;
  double value;

  TransactionDetail(Account this.account, double this.value);
}

double sum(List<TransactionDetail> details) {
  double sum = 0;
  for (int i = 0; i < details.length; i++) {
    sum = sum + details[i].value;
  }
  return sum;
}

createAccount(Console) {}
