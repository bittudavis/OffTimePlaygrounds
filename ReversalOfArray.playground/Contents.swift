// This playground tells about the reversal of array without using another array.

// Given array [1,2,3,4,5,6,7]
// Reverse it as [7,6,5,4,3,2,1]

func reverseGivenArray(array: [Any]?) -> [Any]{
    guard var theArray = array else {return []}
    print("This is the array to be reversed: \(theArray)")
    var lastIndexOfArray: Int = theArray.count - 1
    var startIndexOfArray: Int = 0
    var tempVariable: Any
    while startIndexOfArray < lastIndexOfArray {
        tempVariable = theArray[startIndexOfArray]
        theArray[startIndexOfArray] = theArray[lastIndexOfArray]
        theArray[lastIndexOfArray] = tempVariable
        startIndexOfArray += 1
        lastIndexOfArray -= 1
    }
    return theArray
}
print("This is the reversed Array: \(reverseGivenArray(array: [1,2,3,4,5,6,7]))")

