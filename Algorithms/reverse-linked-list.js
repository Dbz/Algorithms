function reverseLinkedList(head){
  var current = head,
      next = null,
      prev = null;

  while (current){
    next = current.next;

    current.next = prev;
    prev = current;
    current = next;
  }

  return prev
}