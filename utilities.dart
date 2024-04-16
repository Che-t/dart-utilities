void main() {
  print('Sum of 3 and 4 is: ${sum(3, 4)}');
  
  print('\nPrinting numbers from 1 to 10:');
  printNumbers();
  
  print('\nChecking switch values:');
  checkValue("hello");
  checkValue("unknown");
  
  print('\nCountdown from 20 to 10:');
  countdown();
  
  print('\nChecking if a number is even or odd:');
  checkEvenOdd(5);
  checkEvenOdd(10);
  
  List<int> numberList = [10, 25, 4, 68, 7];
  print('\nThe largest number is: ${findLargest(numberList)}');
  
  print('\nDividing numbers:');
  divideNumbers(10, 2);
  divideNumbers(10, 0);
}

int sum(int a, int b) {
  return a + b;
}

void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void checkValue(String value) {
  switch (value) {
    case "hello":
      print("Hello there!");
      break;
    case "bye":
      print("Goodbye!");
      break;
    case "thanks":
      print("You're welcome!");
      break;
    default:
      print("Unrecognized value!");
  }
}

void countdown() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}

int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}

void divideNumbers(int a, int b) {
  try {
    int result = a ~/ b;
    print("Result: $result");
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}