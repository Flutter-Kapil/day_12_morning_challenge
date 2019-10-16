// Challenge 1
//Create a function that takes an list of positive and negative numbers.
// Return a list where the first element is the count of positive numbers and the second element is the sum of negative numbers.
// Examples
// countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]) ➞ [10, -65]
/// There are a total of 10 positive numbers.
/// The sum of all negative numbers equals -65.

List countPosSumNeg(List nums) {
  List result = [];
  int l = nums.length;
  int pos = 0;
  int neg = 0;
  for (int i = 0; i < l; i++) {
    if (nums[i] > 0) {
      pos = pos + 1;
    } else if (nums[i] < 0) {
      neg = neg + nums[i];
    }
  }
  result.add(pos);
  result.add(neg);
  return result;
}

// Challenge 2
// The digit distance between two numbers is the absolute value of the difference of each digit.
//  To illustrate:
//
// digitDistance(234, 489) ➞ 12
// Since |2 - 4| + |3 - 8| + |4 - 9| = 2 + 5 + 5
/// Create a function that returns the digit distance between two integers.
int digitDistance(int x, int y) {
  int lx = x.toString().length;
  int ly = y.toString().length;
  int sum = 0;
  if (lx != ly) {
    return 0;
  } else if (x == 0 && y == 0) {
    return 0;
  } else {
    for (int i = 0; i < ly; i++) {
      String xa = x.toString().substring(i, i + 1);
      String ya = y.toString().substring(i, i + 1);
      int diff = int.parse(xa) - int.parse(ya);
      sum = sum + diff.abs();
    }
  }
  return sum;
}

int digitDistance2(int x, int y) {
  int lx = x.toString().length;
  int ly = y.toString().length;
  int sum = 0;
  for (int i = 0; i < ly; i++) {}
  return sum;
}

//num.parse(n.toStringAsFixed(2));
//string.substring(7, 9)
//num.toString().substring(2,3)
// Challenge 3
// Write test cases to test previous functions
main() {
  print(
      countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]));
  print(countPosSumNeg([1, 2, -4, -6]));

  print("----challenge 2-----");
  print(digitDistance(234, 489));
}
