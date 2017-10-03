//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func swapGeneric<T>(a: inout T, b: inout T) {
    let tmp = a
    a = b
    b = tmp
}

var a = 5
var b = 10
swapGeneric(a: &a, b: &b)
print("a: \(a) b: \(b)")

var c = "My String 1"
var d = "My String 2"
swapGeneric(a: &c, b: &d)
print("c:\(c) d:\(d)")


func testGeneric<T,E>(a:T, b:E) {
    print("\(a) \(b)")
}
