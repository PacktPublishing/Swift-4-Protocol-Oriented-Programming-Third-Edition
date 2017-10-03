//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct MyValueType {
    var name: String
    var assignment: String
    var grade: Int
}

class MyReferenceType {
    var name: String
    var assignment: String
    var grade: Int
    
    init(name: String, assignment: String, grade: Int) {
        self.name = name
        self.assignment = assignment
        self.grade = grade
    }
    
    func extraCreditReferenceType(ref: MyReferenceType, extraCredit: Int) {
        ref.grade += extraCredit
    }
    
}

var ref = MyReferenceType(name: "Jon", assignment: "Math Test 1", grade: 90)
var val = MyValueType(name: "Jon", assignment: "Math Test 1", grade: 90)

func extraCreditReferenceType(ref: MyReferenceType, extraCredit: Int) {
    ref.grade += extraCredit
}

func extraCreditValueType(val: MyValueType, extraCredit: Int) {
    var val = val
    val.grade += extraCredit
}

var ref1 = MyReferenceType(name: "Jon", assignment: "Math Test 1", grade: 90)
extraCreditReferenceType(ref: ref1, extraCredit:5)
print("Reference: \(ref1.name) - \(ref1.grade)")

var val2 = MyValueType(name: "Jon", assignment: "Math Test 1", grade: 90)
extraCreditValueType(val: val2, extraCredit:5)
print("Value: \(val2.name) - \(val2.grade)")


func getGradeForAssignment(assignment: MyReferenceType) {
    // Code to get grade from DB
    // Random code here to illustrate issue
    let num = Int(arc4random_uniform(20) + 80)
    assignment.grade = num
    print("Grade for \(assignment.name) is \(num)")
}

var mathGrades = [MyReferenceType]()
var students = ["Jon", "Kim", "Kailey", "Kara"]
var mathAssignment = MyReferenceType(name: "", assignment: "Math Assignment", grade: 0)

for student in students {
    mathAssignment.name = student
    getGradeForAssignment(assignment: mathAssignment)
    mathGrades.append(mathAssignment)
}

for assignment in mathGrades {
    print("\(assignment.name): grade \(assignment.grade)")
}

func getGradeForAssignment(assignment: inout MyValueType) {
    // Code to get grade from DB
    // Random code here to illustrate issue
    let num = Int(arc4random_uniform(20) + 80)
    assignment.grade = num
    print("Grade for \(assignment.name) is \(num)")
}

var mathGrades2 = [MyValueType]()
var mathAssignment2 = MyValueType(name: "", assignment: "Math Assignment", grade: 0)

for student in students {
    mathAssignment2.name = student
    getGradeForAssignment(assignment: &mathAssignment2)
    mathGrades2.append(mathAssignment2)
}

for assignment in mathGrades2 {
    print("\(assignment.name): grade \(assignment.grade)")
}

