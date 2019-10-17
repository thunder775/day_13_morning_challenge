// Challenge 1
// Read the two problems below and write test cases for them, make sure test cases run and fail

// Challenge 2
// Repeat the Shorter String
// Write a function that repeats the shorter string until it is equal to the length of the longer string.
// Examples:
// lengthen("abcdefg", "ab") ➞ "abababa"
// lengthen("ingenius", "forest") ➞ "forestfo"
String lengthen(String word1, String word2) {
  String repeatedString = (word1.length < word2.length) ? word1 : word2;

  int greaterLength =
      (word1.length > word2.length) ? word1.length : word2.length;
  int smallerLength =
      (word1.length < word2.length) ? word1.length : word2.length;

  String result = repeatedString * (greaterLength ~/ smallerLength);
  for (int i = 0; i < (greaterLength % smallerLength); i++) {
    result += repeatedString[i];
  }
  return result;
}

// Challenge 3
// Given what is supposed to be typed and what is actually typed,
// write a function that returns the broken key(s). The function looks like:
// findBrokenKeys(correct phrase, what you actually typed)
// Examples
// findBrokenKeys("happy birthday", "hawwy birthday") ➞ ["p"]
// findBrokenKeys("beethoven", "affthoif5") ➞ ["b", "e", "v", "n"]
List findBrokenKeys(String correct, String typed) {
  List result = [];
  for (int i = 0; i < correct.length; i++) {
    if (correct[i] != typed[i]) result.add(correct[i]);
  }
  result = result.toSet().toList();
  return result;
}

main() {
  print(lengthen('Rahul', 'Boanerges'));
  print(findBrokenKeys("happy birthday", "hawwy birthday"));
}
