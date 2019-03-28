/*
 Working with 2D arrays is quite important. Here we will do swapping of column in a 2D array. You are given a matrix M or r rows and c columns. You need to swap the first column with the last column.
 
 Input Format:
 The first line of input contains T, the number of testcases. T testcases follow. Each testcase contains two lines of input. The first line contians r and c, separated by a space. The next line contains r*c elements of the matrix, separated by spaces.
 
 Output Format:
 For each testcase, in a new line, print the modified matrix.
 
 Your Task:
 Since this is a function problem, you don't need to take any input. Just complete the provided function interchange(int, int , int ) that take matrix, rows and columns as parameters.
 
 Constraints:
 1 <= T <= 100
 1 <= r,c <= 100
 
 Example:
 Input:
 1
 3 4
 1 2 3 4
 4 3 2 1
 6 7 8 9
 Output:
 4 2 3 1
 1 3 2 4
 9 7 8 6
 */

class SomeClass {
    func interchange(array: [[Int]], rows: Int, columns: Int) -> String {
        var reducedArray: [[Int]] = array
        print(printArrayInMatrixFormat(reducedArray))
        for index in 0..<reducedArray.count {
            let tempInt: Int = reducedArray[index][0]
            reducedArray[index][0] = reducedArray[index][reducedArray[index].count - 1]
            reducedArray[index][reducedArray[index].count - 1] = tempInt
        }
        return printArrayInMatrixFormat(reducedArray)
    }
    
    func printArrayInMatrixFormat(_ array: [[Int]]) -> String {
        var returnString: String = ""
        for index in 0..<array.count {
            returnString.append("\n")
            returnString.append("\(array[index])")
        }
        return returnString
    }
}

let someClass = SomeClass.init()
var matrixArray: [[Int]]  = [[Int]]()
let firstRow: [Int] = [0, 1, 2]
let secondRow: [Int] = [3, 4, 5]
let thirdRow: [Int] = [6, 7, 8]
matrixArray.append(firstRow)
matrixArray.append(secondRow)
matrixArray.append(thirdRow)
print(someClass.interchange(array:matrixArray, rows: matrixArray.count, columns: matrixArray.first?.count ?? 0))
