import '../data_structures/linked_list.dart';
import '../data_structures/node.dart';

// print linked list in reverse recursively
void printLinkedListInReverse<T>(Node<T>? node) {
  if (node == null) return;
  // process next first
  printLinkedListInReverse(node.next);
  // print current after recursion
  print(node.value);
}

// find middle node using slow/fast pointer technique
Node<T>? findMiddleNode<T>(LinkedList<T> list) {
  var slow = list.head;
  var fast = list.head;
  while (fast?.next != null) {
    slow = slow?.next;
    fast = fast?.next?.next;
  }
  // slow reaches middle when fast finishes
  return slow;
}

// reverse linked list in-place
void reverseLinkedList<T>(LinkedList<T> list) {
  Node<T>? prev;
  var current = list.head;
  // old head becomes new tail
  list.tail = list.head;

  while (current != null) {
    // temporary storage
    final next = current.next;
    // reverse pointer
    current.next = prev;
    // advance prev
    prev = current;
    // advance current
    current = next;
  }
  // last node becomes new head
  list.head = prev;
}

// remove all nodes with matching value
void removeAllOccurrences<T>(LinkedList<T> list, T value) {
  // handle head nodes
  while (list.head != null && list.head!.value == value) {
    list.head = list.head!.next;
  }
  var current = list.head;
  // scan remaining nodes
  while (current?.next != null) {
    if (current!.next!.value == value) {
      // skip matching node
      current.next = current.next!.next;
      // update tail if needed
      if (current.next == null) list.tail = current;
    } else {
      current = current.next;
    }
  }
}
