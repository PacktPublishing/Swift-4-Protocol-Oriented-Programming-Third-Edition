//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

extension Int {
    func factorial() -> Int {
        var answer = 1
        for x in (1...self).reversed() {
            answer *= x
        }
        return answer
    }
}


print(10.factorial())

