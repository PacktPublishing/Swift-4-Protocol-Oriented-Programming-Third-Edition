//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

extension Int {
    func squared() -> Int {
        return self * self
    }
}

extension Int {
    var squared2: Int {
        return self * self
    }
}


print(6.squared())
print(6.squared2)
