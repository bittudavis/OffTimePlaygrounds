// From the given array, provided number K where k is less than the size of an array.
// the task is to find out the k'th smallest number in the given array.

func smallestNumber(forArray array: [Int], smallestOf: Int) -> Int {
    
    var min: Int = -1
    var smallestCount: Int = 0
    print("the count to be valid: \(smallestOf)")
    for index in array {
        print("the index: \(index)")
        print("the smallestCount: \(smallestCount)")
        if index > max && smallestCount == smallestOf {
            print("the max: \(max)")
            return max
        } else {
            max = index
            smallestCount += 1
            print("the max post: \(max)")
            print("the smallestCount post: \(smallestCount)")
        }
    }
    return max
}
print("The smallest of this will be :\(smallestNumber(forArray: [7,10,4,3,20,15], smallestOf: 3))")
