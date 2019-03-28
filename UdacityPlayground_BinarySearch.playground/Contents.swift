// Return the index in the array, of the desired value
// If the value can't be found, return nil
func binarySearch(_ array: [Int], value: Int) -> Int? {
    
    guard array.count > 1 else {
        if array.first == value {
            return 0
        }
        return nil
    }
    
    var lowIndex: Int = 0
    var highIndex: Int = array.count - 1
    
    while lowIndex <= highIndex {
        let midIndex = (lowIndex + highIndex)/2
        if array[midIndex] == value {
            return midIndex
        }
        if array[midIndex] < value {
            lowIndex = midIndex + 1
        } else {
            highIndex = midIndex - 1
        }
    }
    return nil
}

// Test cases
let testArray = [1, 3, 9, 11, 15, 19, 29]
let testValue4 = 25
print(binarySearch(testArray, value: testValue4))
let testVal1 = 25
let testVal2 = 15
let testValue3 = 11
print(binarySearch(testArray, value: testValue3)) // Should be 3
print(binarySearch(testArray, value: testVal1)) // Should be nil
print(binarySearch(testArray, value: testVal2)!) // Should be 4

