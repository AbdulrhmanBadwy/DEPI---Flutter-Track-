// Task 1:
Map<String, dynamic> CalculateRectangle(double Width, double length) {
  double area = Width * length;
  double perimeter = (Width + length) * 2;

  return {
    'area' : area ,
    'perimeter' : perimeter,
  };
}

void main() {
  print(CalculateRectangle(5, 3));
}

// ask 2

String createPerson(
  final String name, [
  var age = 'Unknown',
  final String city = 'Unknown',
]) {
  return 'Name: [$name], Age: [$age], City: [$city] ';
}

void main() {
  print(createPerson('Badwy'));
  print(createPerson('Badwy','20'));
  print(createPerson('Badwy' , '20' , 'Kafr-Saqr'));
}

// Task 3

String registerUser({
    required String Email,
    required String Password,
    String Phone = '01093133220',
    }) {
    return 'Email: $Email\n Password: $Password\n Phone: $Phone';
    }

    void main() {
    print(registerUser(Email: 'user@example.com', Password: '123456'));
    }

// Task 4

  String sendMessage(
  String recipientName,
  String? Message, {
  bool Urgetn = false,
  }) {
  return 'RecipientName: $recipientName\nMessage: $Message\nUrgent:$Urgetn';
  }

  void main() {
  print(sendMessage('AbdulrhmanBadwy', 'Hello', Urgetn: true));
  }

// Task 5

List<int> filterNumbers(List<int> Numbers, bool Function(int) Predicate) {
  List<int> PrdicateNumbers = [];
  for (var Number in Numbers) {
    if (Predicate(Number)) {
      PrdicateNumbers.add(Number);
    }
  }
  return PrdicateNumbers;
}

bool IsPrime(int Number) {
  if (Number == 1) return false;
  if (Number == 2) return true;
  if (Number % 2 == 0) return false; 
  for (int i = 3; i * i < Number; i++) {
    if (Number % i == 0) return false;
  }
  return true;
}

void main() {
  List<int> Numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  print('// Even Numbers: ');
  print(
    filterNumbers(Numbers, (int Number) {
      if (Number % 2 == 0)
        return true;
      else
        return false;
    }),
  );

  print('// Odd Numbers: ');
  print(
    filterNumbers(Numbers, (int Number) {
      if (Number % 2 != 0)
        return true;
      else
        return false;
    }),
  );

  print('// Prime Numbers: ');
  print(
    filterNumbers(Numbers, (int Number) {
      if (IsPrime(Number))
        return true;
      else
        return false;
    }),
  );
}
