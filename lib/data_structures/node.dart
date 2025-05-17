/// single node holding (value) and reference to (next) node
class Node<T> {
  T value;
  // Nullable for end of list
  Node<T>? next;

  Node(this.value);

  @override
  String toString() => value.toString();
}
