
//giving array of 5,6,7, *, + , 1, -
//should give 46
func postFixIt(onArray array: [String]) -> [Int] {
    var values: [Int] = []
    for index in array {
        if let value = Int(index) {
            values.append(value)
        } else {
            switch index {
            case "+":
                let (rhs, rhsarray) = getValue(fromArray: values)
                let (lhs, lhsarray) = getValue(fromArray: rhsarray)
                values = lhsarray
                values.append(lhs+rhs)
            case "*":
                let (rhs,rhsarray) = getValue(fromArray: values)
                let (lhs, lhsarray) = getValue(fromArray: rhsarray)
                values = lhsarray
                values.append(lhs*rhs)
            case "-":
                let (rhs,rhsarray) = getValue(fromArray: values)
                let (lhs, lhsarray) = getValue(fromArray: rhsarray)
                values = lhsarray
                values.append(lhs-rhs)
            case "/":
                let (rhs,rhsarray) = getValue(fromArray: values)
                let (lhs, lhsarray) = getValue(fromArray: rhsarray)
                values = lhsarray
                values.append(lhs/rhs)

            default:
                break
            }
        }
    }
    return values
}

func getValue(fromArray: [Int]) -> (Int, [Int]) {
    var numbersArray = fromArray
    let valueFromFirst = numbersArray.removeLast()
    return (valueFromFirst, numbersArray)
}

print(postFixIt(onArray: ["5", "6", "7", "*", "+", "1", "-"]))
print(postFixIt(onArray: ["3", "22", "+","25", "/" ]))
