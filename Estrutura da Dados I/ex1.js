class Node {
    constructor(data) {
      this.data = data;
      this.next = null;
    }
  }
  
  class LinkedList {
    constructor() {
      this.head = null;
      this.tail = null;
      this.size = 0;
    }
  
    append(data) {
      const newNode = new Node(data);
      if (!this.head) {
        this.head = newNode;
        this.tail = newNode;
      } else {
        this.tail.next = newNode;
        this.tail = newNode;
      }
      this.size++;
    }
  
    removeHead() {
      if (!this.head) return null;
      const removedData = this.head.data;
      this.head = this.head.next;
      if (!this.head) this.tail = null;
      this.size--;
      return removedData;
    }
  
    isEmpty() {
      return this.size === 0;
    }
  
    getSize() {
      return this.size;
    }
  }
  
  class Stack {
    constructor() {
      this.list = new LinkedList();
    }
  
    push(element) {
      this.list.append(element);
    }
  
    pop() {
      if (this.isEmpty()) return null;
      return this.list.removeHead();
    }
  
    peek() {
      if (this.isEmpty()) return null;
      return this.list.head.data;
    }
  
    isEmpty() {
      return this.list.isEmpty();
    }
  
    size() {
      return this.list.getSize();
    }
  }
  
  class Queue {
    constructor() {
      this.list = new LinkedList();
    }
  
    enqueue(element) {
      this.list.append(element);
    }
  
    dequeue() {
      if (this.isEmpty()) return null;
      return this.list.removeHead();
    }
  
    front() {
      if (this.isEmpty()) return null;
      return this.list.head.data;
    }
  
    isEmpty() {
      return this.list.isEmpty();
    }
  
    size() {
      return this.list.getSize();
    }
  }
  
  const stack = new Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  console.log(stack.pop());
  console.log(stack.peek());
  
  const queue = new Queue();
  queue.enqueue('a');
  queue.enqueue('b');
  queue.enqueue('c');
  console.log(queue.dequeue());
  console.log(queue.front());
  