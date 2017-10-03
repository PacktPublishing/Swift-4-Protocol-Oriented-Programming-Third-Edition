//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func testGenericComparable<T: Comparable>(a: T, b: T) -> Bool{
    return a == b
}

