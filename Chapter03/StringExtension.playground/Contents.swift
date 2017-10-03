//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

extension String {
    func getFirstChar() -> Character? {
        guard characters.count > 0 else {
            return nil
        }
        return self[startIndex]
    }
    
    subscript (r: CountableClosedRange<Int>) -> String {
        get {
            let start = index(self.startIndex, offsetBy:r.lowerBound)
            let end = index(self.startIndex, offsetBy:r.upperBound)
            return substring(with: start..<end)
        }
    }
}


var myString = "This is a test"
print(myString.getFirstChar())

print(myString[5...10])
