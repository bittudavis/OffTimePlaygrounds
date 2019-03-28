//Practice playground for Udacity Linked list course

class Node {
    var value: Int
    var next: Node?

    init(value: Int) {
        self.value = value
    }
}

class LinkedList {
    var head: Node?
    
    init(head: Node?) {
        self.head = head
    }
    
    //appending the node to the last of the list.
    func append(_ node: Node) {
        
        guard head != nil else {
            head = node
            return
        }
        
        var current = head
        while let _ = current?.next {
            current = current?.next
        }
        current?.next = node
    }
    
    //Find the position of value in Linkedlist.
    func getNode(atPosition position: Int) -> Node? {
        
        var counter: Int = 1
        guard head != nil else {
            return nil
        }
        
        guard position != 1 else {
            return head
        }
        
        let requiredPosition: Int = position
        counter += 1
        var current = head
        while let _ = current?.next {
            current = current?.next
            if counter == requiredPosition {
                return current
            }
            counter += 1
        }
        return nil
    }
    
    // Inserting a node at a specific location.
    func insertNode(_ node: Node, at position: Int) {

        guard position > 0 else {
            return
        }
        
        var counter: Int = 1
        var current = head
        if position > 1 {
            while current != nil && counter < position {
                if counter == position - 1 {
                    node.next = current?.next
                    current?.next = node
                    break
                }
                current = current?.next
                counter += 1
            }
        }else {
            node.next = head
            head = node
        }
    }
}


// Set up some Nodes
let n1 = Node(value: 1)
let n2 = Node(value: 2)
let n3 = Node(value: 3)
let n4 = Node(value: 4)

// Start setting up a LinkedList
let ll = LinkedList(head: n1)
ll.append(n2)
ll.append(n3)

// Test getNode(atPosition:)
print(ll.head!.next!.next!.value) // Should print 3
print(ll.getNode(atPosition: 3)!.value) // Should also print 3

// Test insert
ll.insertNode(n4, at: 3)
print(ll.getNode(atPosition: 3)!.value) // Should print 4 now





