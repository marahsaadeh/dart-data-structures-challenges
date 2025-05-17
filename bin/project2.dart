import 'package:project2/data_structures/linked_list.dart';
import 'package:project2/challenges/stack_challenges.dart';
import 'package:project2/challenges/linked_list_challenges.dart';

void main() {
  print('============== Stack Challenges ==============');
  final numbers = [1, 2, 3, 4, 5];
  print('Original List: $numbers');
  printReversedList(numbers);

  final testCases = {
    'h((e))llo(world)()': true,
    '(hello world': false,
    '()()()': true,
    '((()))': true,
    '(()))': false,
  };

  print('\nParentheses Balance Test:');
  testCases.forEach((input, expected) {
    final result = isBalancedParentheses(input);
    print('"$input" => $result (Expected: $expected)');
    assert(result == expected);
  });

  print('\n============== Linked List Challenges ==============');
  final linkedList = LinkedList<int>();
  for (int i = 1; i <= 5; i++) {
    linkedList.append(i);
  }
  print('Original Linked List: $linkedList');
  print('\nReversed Print:');
  printLinkedListInReverse(linkedList.head);

  final middleNode = findMiddleNode(linkedList);
  print('\nMiddle Node: ${middleNode?.value}');

  reverseLinkedList(linkedList);
  print('\nReversed Linked List: $linkedList');

  linkedList.append(2);
  linkedList.append(2);
  print('\nList with duplicates: $linkedList');
  removeAllOccurrences(linkedList, 2);
  print('After removing 2s: $linkedList');
}
