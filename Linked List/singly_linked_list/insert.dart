import 'node-model.dart';

class InsertLinkedList {
  Node? head = null;

  // to insert data in the first of linked list
  void insertFirst(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    newNode.next = head;
    head = newNode;
  }

  // to insert data in the last of Linked List
  void insertLast(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newNode;
  }

  // to insert before  a value
  void insertBefore(int data, int value) {
    if (head == null) {
      print('There is no data');
      return;
    }
    if (head!.data == value) {
      insertFirst(data);
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      if (current.next!.data == value) {
        Node newNode = Node(data);
        newNode.next = current.next;
        current.next = newNode;
        return;
      }
      current = current.next;
    }
  }

  void insertAfter(int data, int value) {
    Node? current = head;
    while (current != null) {
      if (current.data == value) {
        Node newNode = Node(data);
        newNode.next = current.next;
        current.next = newNode;
      }
      current = current.next;
    }
  }

  // delete a specific value
  deleteAValue(int value) {
    if (head == null) {
      print('Linked list is empty');
      return;
    }
    if (head!.data == value) {
      head = head!.next;
      return;
    }
    Node? currunt = head;
    while (currunt!.next != null) {
      if (currunt.next!.data == value) {
        currunt.next = currunt.next!.next;
      }
      currunt = currunt.next;
    }
  }

  // delete the middle of the value
  deleteMiddle() {
    if (head == null) {
      print("List is Empty");
      return;
    }
    Node? fastPnt = head;
    Node? slowPnt = head;
    Node? prevPnt = null;
    while (fastPnt != null && fastPnt.next != null) {
      fastPnt = fastPnt.next!.next;
      prevPnt = slowPnt;
      slowPnt = slowPnt!.next;
    }
    prevPnt!.next = slowPnt!.next;
  }

// to remove duplicates from a singly linked list

  void removeDuplicates() {
    if (head == null) {
      print('here list is empty');
      return;
    }
    Node? current = head;
    while (current != null && current.next != null) {
      if (current.data == current.next!.data) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }
  }

// to display the linked list
  void display() {
    Node? current = head;
    while (current != null) {
      print('${current.data} ');
      current = current.next;
    }
  }
}
