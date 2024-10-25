class Stack:

    def __init__(self):
        self.items = []

    def isEmpty(self) -> bool:
        """Check if the stack is empty or not."""
        return self.items == []

    def push(self, item):
        """Add an item to the top of the stack."""
        self.items.append(item)

    def pop(self):
        """Remove the top item from the stack."""
        return self.items.pop()

    def peek(self):
        """View the top item from the stack. The item is not removed."""
        return self.items[len(self.items)-1]

    def size(self) -> int:
        """Get the number of items on the stack."""
        return len(self.items)

    def view(self):
        """Print the stack."""
        print(self.items)
