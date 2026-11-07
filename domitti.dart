import 'dart:io';

void main() {
  List<int> nums = [1, 2, 3, 4, 6, 6, 7, 8, 9, 10];
  var values = <int>[10, 20, 30];
  List<int> emptyList = [];
  List<int> filledList = List.filled(5, 0);

  int sum = 0;
  int min = nums[0];
  int max = nums[0];

  int odd = 0;
  int even = 0;

  for (int n in nums) {
    sum += n;
    if (n < min) min = n;
    if (n > max) max = n;

    if (n % 2 == 0) even++;
    if (n % 2 != 0) odd++;
  }

  for (int i = 9; i >= 0; i--) stdout.write("${nums[i]} ");

  print("\nSum: $sum \nMin: $min \nMax: $max");
  print("Even: $even \nOdd: $odd");
}
