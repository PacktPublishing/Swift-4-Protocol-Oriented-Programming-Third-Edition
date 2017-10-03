//: Playground - noun: a place where people can play

import Cocoa

let NCNAME = "Notification Name"

class PostType {
    let nc = NotificationCenter.default
    func post() {
        nc.post(name: Notification.Name(rawValue: NCNAME), object: nil)
    }
}

class ObserverType {
    let nc = NotificationCenter.default
    init() {
        nc.addObserver(self, selector:
            #selector(receiveNotification(notification:)), name: Notification.Name(rawValue: NCNAME), object: nil)
    }
    @objc func receiveNotification(notification: Notification) {
        print("Notification Received")
    }
}

var postType = PostType()
var observerType = ObserverType()
postType.post()




protocol ZombieObserver {
    func turnLeft()
    func turnRight()
    func seesUs()
}

class MyObserver: ZombieObserver {
    func turnLeft() {
        print("Zombie turned left, we move right")
    }
    func turnRight() {
        print("Zombie turned right, we move left")
    }
    func seesUs() {
        print("Zombie sees us, RUN!!!!")
    }
}

struct Zombie {
    var observer: ZombieObserver
    
    func turnZombieLeft() {
        //Code to turn left
        //Notify observer
        observer.turnLeft()
    }
    func turnZombieRight() {
        //Code to turn right
        //Notify observer
        observer.turnRight()
    }
    func spotHuman() {
        //Code to lock onto a human
        //Notify observer
        observer.seesUs()
    }
}
var observer = MyObserver()
var zombie = Zombie(observer: observer)

zombie.turnZombieLeft()
zombie.spotHuman()



protocol PropertyObserver{
    func propertyChanged(propertyName: String, newValue: Any)
}

class MyObserverType: PropertyObserver {
    func propertyChanged(propertyName: String, newValue: Any) {
        print("----changed----")
        print("Property Name: \(propertyName)")
        print("New Value: \(newValue)")
    }
}
struct PropertyObserverTest {
    var observer: PropertyObserver
    var property1: String {
        didSet{
            observer.propertyChanged(propertyName: "property1", newValue: property1)
        }
        willSet(newValue) {
            print("Property Changing")
        }
    }
}

