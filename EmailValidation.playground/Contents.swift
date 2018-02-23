//: Playground - noun: a place where people can play

import Foundation
let emailRegex: String = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$"
func isValidEmail(_ email: String) -> Bool {
    var regex: NSRegularExpression?
    do {
        regex = try NSRegularExpression(pattern: emailRegex, options: .caseInsensitive)
    } catch {
        print(error)
    }
    guard ((regex?.firstMatch(in: email, options: .reportProgress, range: NSRange.init(location: 0, length: email.count))) != nil)  else {
        return false
    }
    return true
}
//negative scenarios
isValidEmail("something#something@something.com")
isValidEmail("something&*&@hg.com")
isValidEmail("__somehh")
isValidEmail("@something.com")
isValidEmail(".com")
//positivie scenarios
isValidEmail("something@something.com")
isValidEmail("something_something@something.com")
isValidEmail("something+something@something.com")

