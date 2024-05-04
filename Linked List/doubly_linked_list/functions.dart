import 'node-model.dart';

class DoublyLinkedList {
  Doubly? head;
  Doubly? tail;

  void insertLast(int data) {
    Doubly newDoubly = Doubly(data);
    if (head == null) {
      head = newDoubly;
      tail = newDoubly;
    } else {
      tail!.next = newDoubly;
      newDoubly.prev = tail;
      tail = newDoubly;
    }
  }

  void insertFirst(int data) {
    Doubly newDoubly = Doubly(data);
    if (head == null) {
      head = newDoubly;
      tail = newDoubly;
    } else {
      newDoubly.next = head;
      head!.prev = newDoubly;
      head = newDoubly;
    }
  }

  void insertDoublyAfter(int data, int value) {
    if (head == null) {
      print('List is empty');
      return;
    }
    Doubly newDouble = Doubly(data);
    Doubly? current = head;
    while (current != null) {
      if (current.data == value) {
        newDouble.next = current.next;
        newDouble.prev = current;
        if (current.next != null) {
          current.next!.prev = newDouble;
        }
        current.next = newDouble;
        if (current == tail) {
          tail = newDouble;
        }
        break;
      }
      current = current.next;
    }
    if (current == null) {
      print('Value not found in the list');
    }
  }

  void insertDoublyBefore(int data, int value) {
    if (head == null) {
      print('List is empty');
      return;
    }
    Doubly newDoubly = Doubly(data);

    if (head!.data == value) {
      newDoubly.next = head;
      head!.prev = newDoubly;
      head = newDoubly;
      return;
    }
    Doubly? current = head;
    while (current!.next != null) {
      if (current.next!.data == value) {
        newDoubly.next = current.next;
        newDoubly.prev = current;
        current.next!.prev = newDoubly;
        current.next = newDoubly;
        break;
      }
      current = current.next;
    }
    if (current == null) {
      print('Value not found in the list');
    }
  }

  void displayDoubly() {
    Doubly? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
