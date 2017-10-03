//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

extension Double {
    func currencyString() -> String {
        let divisor = pow(10.0, 2.0)
        let num = (self * divisor).rounded() / divisor
        return "$\(num)"
    }
}

print(25.6789.currencyString())
