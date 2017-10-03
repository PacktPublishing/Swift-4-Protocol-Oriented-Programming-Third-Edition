//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

extension Collection {
    func evenElements() -> [Iterator.Element] {
        
        var index = startIndex
        var result: [Iterator.Element] = []
        var i = 0
        repeat {
            if i % 2 == 0 {
                result.append(self[index])
            }
            index = self.index(after: index)
            i += 1
        } while (index != endIndex)
        return result
    }
    
    func shuffle() -> [Iterator.Element] {
        return sorted(){ left, right in
            return arc4random() < arc4random()
        }
    }
}

extension Collection where Self: ExpressibleByArrayLiteral {
    //Extension code here
}

extension Collection where Iterator.Element: Comparable {
    // Add functionality here
}


var origArray = [1,2,3,4,5,6,7,8,9,10]

var newArray = origArray.evenElements()
var ranArray = origArray.shuffle()


var origDict = [1:"One",2:"Two",3:"Three",4:"Four"]
var returnElements = origDict.evenElements()
for item in returnElements {
    print(item)
}

