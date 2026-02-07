import 'dart:io';

void AddDailyExpenses(
  {
  required List<Map<String, dynamic>> DailyExpenses,
  required final String Description,
  required final double Amount,
  required final String Category,
  final date = DateTime.now,
}
) {
  DailyExpenses.add(
    {
    'Description': Description,
    'Amount': Amount,
    'Category': Category,
    'date': date,
  }
  );
  print('\tExpense Added!');
}

void ViewAllExpenses(List<Map<String, dynamic>> DailyExpenses) {
  if (DailyExpenses.isEmpty) {
    print('Daily Expenses is Empty ... ');
  } else {
    for (var Expense in DailyExpenses) {
      print(Expense);
    }
  }
}

void PrintCategories(
  List<Map<String, dynamic>> DailyExpenses,
  String Category,
) {
  for (var Expense in DailyExpenses) {
    if (Expense['Category'] == Category) {
      print(Expense);
    }
  }
}

void PrintSomeStatistics(List<Map<String, dynamic>> DailyExpenses) {
  // Total Spending
  double TotalSpending = 0;
  for (var Expense in DailyExpenses) {
    TotalSpending += Expense['Amount']; 
  }
  // Average Spending
  double AverageSpending = TotalSpending / DailyExpenses.length;
  // Highest Expense
  double HighestExpense = DailyExpenses[0]['Amount'];
  for (var Expense in DailyExpenses) {
    if (Expense['Amount'] > HighestExpense) {
      HighestExpense = Expense['Amount'];
    }
  }
  print('Some Statistics: ');
  print('Total Spending: $TotalSpending');
  print('Average Expense Amount: $AverageSpending');
  print('Highest Expense: $HighestExpense');
}

void ChoiceScreen() {
  print('\n\n========= Expense Tracker ==========');
  print('1.Add Expense.');
  print('2.View All Expenses.');
  print('3.Print by Category.');
  print('4.Print Some Statistics.');
  print('0.Exit');
  print('Enter you Choice (0-4)');
}

void main() {
  List<Map<String, dynamic>> DailyExpenses = [];
  int Choice = 19834;
  while (Choice != 0) {
    ChoiceScreen();
    Choice = int.parse(stdin.readLineSync()!); 
    switch (Choice) {
      case 1:
        print('\t\tAdding Expense:');
        print('Enter the Description of Expense:');
        String Description = stdin.readLineSync()!;
        double Amount;
        do {
          print('Amount Must be Positive , Enter the Amount:');
          Amount = double.parse(stdin.readLineSync()!);
        } while (Amount < 0);
        print('Enter the Category of Expense: ');
        String Category = stdin.readLineSync()!;
        AddDailyExpenses(
          DailyExpenses: DailyExpenses,
          Description: Description,
          Amount: Amount,
          Category: Category,
        );
      case 2:
        ViewAllExpenses(DailyExpenses);
      case 3:
        print('Enter Cateogry to Show: ');
        String Category = stdin.readLineSync()!;
        PrintCategories(DailyExpenses, Category);
      case 4:
        PrintSomeStatistics(DailyExpenses);
      case 0:
        print('Exiting !!!');
      default:
        print('No Valid Option ....!!!');
    }
  }
}
