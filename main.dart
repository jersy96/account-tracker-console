import 'dart:io';
import 'dart:core';

void main() {
  int? option;
  AccountTracker tracker = AccountTracker();
  Console c = Console(tracker);

  while (option != 0) {
    if (option != null) print('');
    option = c.askOption();

    if (option == 1) {
      c.askAccount();
    }
    if (option == 2) {
      c.showAccounts();
    }
    if (option == 3) {
      c.askTransaction();
    }
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
    print('3. crear transacciones');
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
    String name = validateField<String>('Como se llamara su cuenta?',
        'Por favor coloque un nombre a la cuenta', (value) => value != '');
    double balance = validateField<double>(
        'Digite el saldo inicial de la cuenta',
        'Por favor digite saldo mayor a cero ',
        (value) => value > 0);
    print('Su cuenta es virtual ? Marque 1. si lo es. ');
    bool virtual = read_bool();
    if (virtual) {
      print('su cuenta es virtual');
    } else {
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
    String description = validateField<String>('digite la descripcion',
        'coloque la descripcion', (value) => value != '');
    print(
        'La transaccion es un ingreso o un gasto?    ingreso (1)     gasto (2)');
    bool income = read_bool();
    while (repeatAccountPhysic) {
      Account accountSelected = selectAccount(
          'seleccione una cuenta fisica', physical, chossenAccounts, false);
      double val = validateField<double>(
          'digite el valor ', 'Error: digite bien su saldo ', (value) {
        if (value <= 0) return false;
        return income ? true : value <= accountSelected.balance;
      });

      if (income) {
        accountSelected.balance += val;
      } else {
        accountSelected.balance -= val;
      }

      TransactionDetail detail = TransactionDetail(accountSelected, val);

      details.add(detail);

      if (physical.length <= 0) {
        repeatAccountPhysic = false;
      } else {
        print(
            'desea seleccionar otra cuenta fisica ?     digite 1. SI     2. NO');
        repeatAccountPhysic = read_bool();
      }
    }
    print('');

    print('desea agregar una cuenta virtual?     digite 1. SI     2. NO');
    bool repeatAccountvirtual = read_bool();

    if (repeatAccountvirtual) print('---Cuentas Virtuales---');

    while (repeatAccountvirtual) {
      List<Account> virtual = tracker.whereVirtual(true);
      Account accountSelected = selectAccount(
          'seleccione una cuenta virtual', virtual, chossenAccounts, true);

      bool confirmed = false;

      while (!confirmed) {
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

        if (income) {
          accountSelected.balance += value;
        } else {
          accountSelected.balance -= value;
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
    DateTime date = DateTime.now();
    Transaction transaction = Transaction(description, date, income);
    tracker.transactions.add(transaction);

    print('Fecha de transaccion: ${date} ');
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

  T validateField<T>(String message, String errorMessage, Function validate) {
    var value;
    bool valid;
    do {
      print(message);
      if (T == String) {
        value = read_string();
      } else if (T == int) {
        value = read_int();
      } else if (T == double) {
        value = read_double();
      } else if (T == bool) {
        value = read_bool();
      }
      valid = validate == null ? true : validate(value);
      if (!valid) {
        print(errorMessage);
      }
    } while (!valid);
    return value;
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
  List<Transaction> transactions = [];

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
