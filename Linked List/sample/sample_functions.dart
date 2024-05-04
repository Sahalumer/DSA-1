import 'model-sample.dart';

class SampleFunctions {
  Sample? head;
  insert(int data) {
    Sample newSample = Sample(data);
    if (head == null) {
      head = newSample;
      return;
    }
    Sample? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newSample;
  }

  insertFirst(int data) {
    Sample newSample = Sample(data);
    newSample.next = head;
    head = newSample;
  }

  inserAfter(int data, int value) {
    if (head == null) {
      print("List is Empty");
      return;
    }
    Sample newSample = Sample(data);
    Sample? current = head;
    while (current != null) {
      if (current.data == value) {
        newSample.next = current.next;
        current.next = newSample;
        break;
      }
      current = current.next;
    }
    if (current == null) {
      print("Value not found in the list");
    }
  }

  insertBefore(int data, int value) {
    if (head == null) {
      print("List is Empty");
      return;
    }

    Sample newSample = Sample(data);
    if (head!.data == value) {
      newSample.next = head;
      head = newSample;
    }
    Sample? current = head;
    while (current!.next != null) {
      if (current.next!.data == value) {
        newSample.next = current.next;
        current.next = newSample;
        return;
      }
      current = current.next;
    }
  }

  deleteMiddle() {
    if (head == null) {
      print("List is empty");
      return;
    }
    Sample? fastPnt = head;
    Sample? slowPnt = head;
    Sample? prevPnt = head;
    while (fastPnt != null && fastPnt.next != null) {
      fastPnt = fastPnt.next!.next;
      prevPnt = slowPnt;
      slowPnt = slowPnt!.next;
    }
    prevPnt!.next = slowPnt!.next;
  }

  deleteValue(int value) {
    if (head == null) {
      print("list is Empty");
      return;
    }
    Sample? current = head;
    while (current!.next != null) {
      if (current.next!.data == value) {
        current.next = current.next!.next;
      }
      current = current.next;
    }
  }

  void display() {
    Sample? Current = head;
    while (Current != null) {
      print(Current.data);
      Current = Current.next;
    }
  }
}
