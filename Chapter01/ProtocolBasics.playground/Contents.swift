//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

protocol FullName {
    var firstName: String {get set}
    var lastName: String {get set}
    
    func getFullName() -> String
}

protocol Person: FullName {
    var age: Int {get set}
}

struct Student: Person {
    var firstName = ""
    var lastName = ""
    var age = 0
    
    func getFullName() -> String {
        return "(firstName) (lastName)"
    }
}


@objc protocol Phone {
    var phoneNumber: String {get set}
    @objc optional var emailAddress: String {get set}
    func dialNumber()
    @objc optional func getEmail()
}


