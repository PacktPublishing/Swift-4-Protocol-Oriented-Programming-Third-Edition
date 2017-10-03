//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

protocol Person {
    var firstName: String {get set}
    var lastName: String {get set}
    var birthDate: Date {get set}
    var profession: String {get}
    init (firstName: String, lastName: String, birthDate: Date)
}


