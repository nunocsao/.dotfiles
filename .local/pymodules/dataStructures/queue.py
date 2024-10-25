class Queue:

    def __init__(self):
        self.items = []

    def isEmpty(self) -> bool:
        """Check if the queue is empty or not."""
        return self.items == []

    def enqueue(self, item):
        """Add an item to the rear of the queue."""
        self.items.insert(0, item)

    def dequeue(self):
        """Remove the front item from the queue."""
        return self.items.pop()

    def size(self) -> int:
        """Get the number of items in the queue."""
        return len(self.items)

    def view(self):
        """Print the queue."""
        print(self.items)
