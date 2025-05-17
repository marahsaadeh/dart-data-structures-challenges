// LIFO (Last In First Out) data structure
class Stack<E> {
  // Internal storage
  final List<E> _items = [];
  // Add item to top of stack
  void push(E item) => _items.add(item);
  // Remove and return top item
  E pop() => _items.removeLast();
  // Check if stack is empty
  bool get isEmpty => _items.isEmpty;
  // Check if stack has items
  bool get isNotEmpty => !isEmpty;
  // Visual representation (top -> bottom)
  @override
  String toString() => _items.reversed.join(' -> ');
}
