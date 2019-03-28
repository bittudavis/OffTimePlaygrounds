//Practice Playground for Udacity DataStructures and Algorithms
import Foundation

class Classy {
    
    var items: [String]
    var classiness: Int
    
    init() {
        self.items = []
        self.classiness = 0
    }
    
    //Write your addItem function here
    func addItem(_ item: String) {
        items.append(item)
    }
    
    //Write your getClassiness function here
    func getClassiness() -> Int {
        var sum: Int = 0
        for item in items {
            if item == "tophat" {
                sum += 2
            } else if item == "bowtie" {
                sum += 4
            } else if item == "monocle" {
                sum += 5
            }
        }
        return sum
    }
    
}

// Uncomment to test

let me = Classy()

print(me.getClassiness()) // Should be 0

me.addItem("tophat")
print(me.getClassiness()) // Should be 2

me.addItem("bowtie")
me.addItem("jacket")
me.addItem("monocle")
print(me.getClassiness()) // Should be 11

me.addItem("bowtie")
print(me.getClassiness()) // Should be 15

