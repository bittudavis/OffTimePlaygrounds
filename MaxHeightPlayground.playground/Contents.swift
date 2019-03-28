/*Given a struct array of type Height, having two elements feet and inches. Find the maximum height, where height is calculated sum of feet and inches after converting feet into inches.

Input:
First line of input contains number of testcases. For each testcase, first line of input contains N, number of given heights. Next line contains 2*N number of elements (feet and inches for each N).

Output:
Output maximum height from array.

Your Task: Your task is to only complete the function of find maximum height from given array.

Constraints:
1<=T<=100
1<=N<=105
0<=Feet, Inches<=105

Example:
Input:
2
2
1 2 2 1
4
3 5 7 9 5 6 5 5
Output:
25
93

Explanation:
Testcase 1: (1, 2) and (2, 1) are respective given heights. After converting both heigths in to inches, we get 14 and 25 as respective heights. So, 25 is the maximum height.*/

struct Height {
    var feet: Int
    var inches: Int
}

class SomeOtherClass {
    var heightArray: [Height] = [Height]()
    var max: Int = -1
    
    func addHeights(_ heights: Height) {
        let heightInInches = totalInches(heights)
        max = (max < heightInInches) ? heightInInches:max
        heightArray.append(heights)
    }
    
    func totalInches(_ heights: Height) -> Int {
        return heights.feet * 12 + heights.inches
    }
    
    func maxHeight() -> Int {
        return max
    }
}

let classOtherInstance = SomeOtherClass.init()
// 1 2 2 1
classOtherInstance.addHeights(Height.init(feet: 1, inches: 2))
classOtherInstance.addHeights(Height.init(feet: 2, inches: 1))
print(classOtherInstance.maxHeight())
classOtherInstance.heightArray.removeAll()
//3 5 7 9 5 6 5 5
classOtherInstance.addHeights(Height.init(feet: 3, inches: 5))
classOtherInstance.addHeights(Height.init(feet: 7, inches: 9))
classOtherInstance.addHeights(Height.init(feet: 5, inches: 6))
classOtherInstance.addHeights(Height.init(feet: 5, inches: 5))
print(classOtherInstance.maxHeight())
