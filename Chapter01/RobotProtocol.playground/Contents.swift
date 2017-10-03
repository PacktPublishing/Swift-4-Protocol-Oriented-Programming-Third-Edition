//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


protocol RobotMovement {
    func forward(speedPercent: Double)
    func reverse(speedPercent: Double)
    func left(speedPercent: Double)
    func right(seedPercent: Double)
    func stop()
}

protocol RobotMovementThreeDimensions: RobotMovement {
    func up(speedPercent: Double)
    func down(speedPercent: Double)
}

protocol Sensor {
    var sensorName: String {get set}
    var sensorType: String {get}
    init (sensorName: String)
    func pollSensor()
}

protocol RangeSensor: Sensor {
    func setRangeNotification(rangeCentimeter: Double, rangeNotification: () -> Void)
    func currentRange() -> Double
}

protocol EnvironmentSensor: Sensor {
    func currentTemperature() -> Double
    func currentHumidity() -> Double
}

protocol DisplaySensor: Sensor {
    func displayMessage(message: String)
}

protocol WirelessSensor: Sensor {
    func setMessageReceivedNotification(messageNotification: (String) -> Void)
    func messageSend(message: String)
}

protocol Robot {
    var name: String {get set}
    var robotMovement: RobotMovement {get set}
    var sensors: [Sensor] {get}
    
    init (name: String, robotMovement: RobotMovement)
    func addSensor(sensor: Sensor)
    func pollSensors()
}

class SixWheelRover: Robot {
    var name = "No Name"
    var robotMovement: RobotMovement
    var sensors: [Sensor] = [Sensor]()
    
    required init (name: String, robotMovement: RobotMovement) {
        self.name = name
        self.robotMovement = robotMovement
    }
    func addSensor(sensor: Sensor) {
        sensors.append(sensor)
    }
    
    func pollSensors() {
        for sensor in sensors {
            sensor.pollSensor()
        }
    }
    
    func addRangeSensor(sensor: RangeSensor, rangeCentimeter: Double) {
        sensor.setRangeNotification(rangeCentimeter: rangeCentimeter, rangeNotification: rangeNotification)
        addSensor(sensor: sensor)
    }
    
    func addWirelessSensor(sensor: WirelessSensor) {
        addSensor(sensor: sensor)
        sensor.setMessageReceivedNotification(messageNotification: messageReceived)
    }
    
    func rangeNotification() {
        print("Too Close")
    }
    
    func messageReceived(message: String) {
        print("Message Received: " + message)
    }
}

