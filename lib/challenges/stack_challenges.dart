import '../data_structures/stack.dart';

/// print list in reverse using stack
void printReversedList(List list) {
  final stack = Stack();
  // push all items onto stack
  print('\nReversed List:');
  for (var item in list) {
    stack.push(item);
  }

  // pop items to print in reverse
  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}

// check if parentheses are balanced
bool isBalancedParentheses(String input) {
  final stack = Stack();
  for (var char in input.split('')) {
    if (char == '(') {
      // track opening parentheses
      stack.push(char);
    } else if (char == ')') {
      // unmatched closing
      if (stack.isEmpty) return false;
      // match found
      stack.pop();
    }
  }
  // all should be matched
  return stack.isEmpty;
}
