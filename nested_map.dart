void main() {
  var students = [
    {
      'name': 'omar',
      'major': 'engineering',
      'marks': [75, 83, 70, 74, 88],
    },
    {
      'name': 'mohammad',
      'major': 'medicine',
      'marks': [95, 82, 89, 98, 85],
    },
    {
      'name': 'salem',
      'major': 'literature',
      'marks': [60, 80, 67, 55, 77],
    },
  ];

  for (var student in students) {
    final marks = student['marks'] as List<int>;
    print(marks);
    student["average"] =
        (marks.reduce((sum, element) => sum + element) / marks.length);
  }
  print(students);

  const order1 = ['pizza', 'water'];
  const order2 = ['pizza', 'rice'];
  printTotal(order1);
  printTotal(order2);
}

void printTotal(List<dynamic> orders) {
  // Maps
  const menu = {
    'burger': 6.5,
    'pizza': 5.0,
    'water': 1.5,
  };
  double total = 0;
  for (var i = 0; i < orders.length; i++) {
    final temp = menu[orders[i]]; // must be final
    if (temp == null) {
      print("${orders[i]} not in the menu");
    } else {
      total = total + temp;
    }
  }
  
  print("Total: \$${total}");
}
