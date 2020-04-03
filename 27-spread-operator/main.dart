/**
 * A spread operator ... (three-dots) when placed before a List or a Set or an Iterable,
 * laid out individual elements of that collection.
 */

/**
 * Example 1:
 * Create a new list from one or more individual lists
 */
void example_1() {
  List<String> list_1 = ["mango", "banana", "apple"];
  List<String> list_2 = ["akagi", "yushin", "mogami"];

  List<String> list = [...list_1, ...list_2];
  print(list);
}

/**
 * Example 2:
 * Create a new list from Iterable
 */
void example_2() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  // creating a filter list (old way)
  List<int> numbers_filter_old = numbers.where( (number) => number %2 == 0 ).toList();

  // creating a filter list (new way)
  List<int> numbers_filter_new = [...numbers.where((number) => number %2 == 0)];

  print(numbers_filter_old);
  print(numbers_filter_new);
}

void main(List<String> args) {
  // example_1();
  example_2();
}