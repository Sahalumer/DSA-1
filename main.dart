// import 'Linked List/doubly_linked_list/functions.dart';

// import 'Linked List/singly_linked_list/insert.dart';

// // import 'Linked List/sample/sample_functions.dart';
// import 'Linked List/singly_linked_list/insert.dart';

import 'Linked List/sample/sample_functions.dart';

void main() {
  // InsertLinkedList insertLinkedList = InsertLinkedList();
  // insertLinkedList.insertLast(1);
  // insertLinkedList.insertLast(2);
  // insertLinkedList.insertLast(3);
  // insertLinkedList.insertLast(3);
  // insertLinkedList.insertLast(5);
  // insertLinkedList.insertLast(6);
  // insertLinkedList.insertLast(6);
  // insertLinkedList.deleteMiddle();
  // insertLinkedList.deleteAValue(3);
  // insertLinkedList.removeDuplicates();
  // insertLinkedList.display();

  // DoublyLinkedList doublyLinkedList = DoublyLinkedList();
  // doublyLinkedList.insertLast(1);
  // doublyLinkedList.insertLast(2);
  // doublyLinkedList.insertLast(3);
  // doublyLinkedList.insertFirst(4);
  // doublyLinkedList.insertDoublyAfter(4, 3);
  // doublyLinkedList.insertDoublyBefore(6, 3);
  // doublyLinkedList.displayDoubly();

  SampleFunctions sampleFunctions = SampleFunctions();
  sampleFunctions.insert(1);
  sampleFunctions.insert(2);

  sampleFunctions.insertFirst(4);
  sampleFunctions.inserAfter(5, 1);
  sampleFunctions.insertBefore(6, 2);
  sampleFunctions.deleteMiddle();
  sampleFunctions.deleteValue(6);
  sampleFunctions.display();
}
