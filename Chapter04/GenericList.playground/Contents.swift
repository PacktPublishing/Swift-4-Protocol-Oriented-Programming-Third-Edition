//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct List<T> {
    var items = [T]()
    mutating func add(item: T) {
        items.append(item)
    }
    func getItemAtIndex(index: Int) -> T? {
        if items.count > index {
            return items[index]
        } else {
            return nil
        }
    }
}


var list = List<String>()
list.add(item: "Hello")
list.add(item: "World")
print(list.getItemAtIndex(index: 1))
