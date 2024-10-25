class Deque:

    def __init__(self):
        self.items = []

    def isEmpty(self) -> bool:
        """Check if the deque is empty or not."""
        return self.items == []

    def addFront(self, item):
        """Add an item to the front of the deque."""
        self.items.append(item)

    def addRear(self, item):
        """Add an item to the rear of the deque."""
        self.items.insert(0, item)

    def removeFront(self):
        """Remove the front item from the deque."""
        return self.items.pop()

    def removeRear(self):
        """Remove the rear item from the deque."""
        return self.items.pop(0)

    def size(self) -> int:
        """Get the number of items in the deque."""
        return len(self.items)

    def view(self):
        """Print the deque."""
        print(self.items)
