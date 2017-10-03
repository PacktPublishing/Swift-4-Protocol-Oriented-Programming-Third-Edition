//: Playground - noun: a place where people can play

import Cocoa

protocol Message {
    var messageString: String {get set}
    init(messageString: String)
    func prepareMessage()
}

protocol Sender {
    func sendMessage(message: Message)
}

class PlainTextMessage: Message {
    var messageString: String
    required init(messageString: String) {
        self.messageString = messageString
    }
    func prepareMessage() {
        //Nothing to do
    }
}

class DESEncryptedMessage: Message {
    var messageString: String
    required init(messageString: String) {
        self.messageString = messageString
    }
    func prepareMessage() {
        // Encrypt message here
        self.messageString = "DES: " + self.messageString
    }
}

class EmailSender: Sender{
    func sendMessage(message: Message) {
        print("Sending through E-Mail:")
        print(" \(message.messageString)")
    }
}

class SMSSender: Sender {
    func sendMessage(message: Message) {
        print("Sending through SMS:")
        print(" \(message.messageString)")
    }
}

var myMessage = PlainTextMessage(messageString: "Plain Text Message")
myMessage.prepareMessage()
var sender = SMSSender()
sender.sendMessage(message: myMessage)




