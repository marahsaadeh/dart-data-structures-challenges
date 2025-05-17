import 'node.dart';

// linked list with [head] and [tail] pointers
class LinkedList<T> {
  // First node
  Node<T>? head;
  // Last node
  Node<T>? tail;
  // check if list is empty
  bool get isEmpty => head == null;
  // add new value to end
  void append(T value) {
    final newNode = Node(value);
    if (isEmpty) {
      // first item becomes both head and tail
      head = newNode;
      tail = newNode;
    } else {
      // link new node after current tail
      tail!.next = newNode;
      tail = newNode;
    }
  }

  // string representation: "1 -> 2 -> 3"
  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    var current = head;
    final result = StringBuffer();
    while (current != null) {
      result.write(current.value);
      if (current.next != null) result.write(' -> ');
      current = current.next;
    }
    return result.toString();
  }
}
