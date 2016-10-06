//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var wifi = "Event Farm"
var wifiPassword = "20Event_Farm15"

let url = "raywenderlich.com + protocol oriented programming tutorial"

protocol Bird {
    var color: UIColor { get }
    var name: String { get }
    var canFly: Bool { get }
    var canSing: Bool { get }
    
    func flySomewhere()
}

extension Bird where Self: Flyable {
    var canFly: Bool { return true }
}

protocol Flyable {
    var airspeedVelocity: Double { get }
}

struct FlappyBird: Bird, Flyable {
    let name: String
    let canSing = false
    let color: UIColor
    let flappyFrequency: Double
    let flappyAmplitude: Double
    
    var airspeedVelocity: Double {
        return 3 * flappyFrequency * flappyAmplitude
    }
}

struct Penguin: Bird {
    let name: String
    let canFly = false
    var canSing: Bool
    let color = UIColor.black
}

struct SwiftBird: Bird, Flyable {
    var name: String { return "Swift \(version)" }
    let version: Double
    let canSing = false
    var color = UIColor.blue
    
    // Swift is FAST!!!
    var airspeedVelocity = 2000.0
}

enum UnladenSwallow: Bird, Flyable {
    
    case African
    case European
    case Unknown
    
    var name: String {
        switch self {
        case .African:
            return "African"
        case .European:
            return "European"
        case .Unknown:
            return "What do you mean? African or European?"
        }
    }
    
    var canSing: Bool { return true }
    var color: UIColor { return UIColor.brown }
    
    var airspeedVelocity: Double {
        switch self {
        case .African:
            return 10.0
        case .European:
            return 9.9
        case .Unknown:
            fatalError("You are thrown from the bridge of death!")
        }
    }
}



let myFlappyBird = FlappyBird(name: "Red", color: UIColor.red, flappyFrequency: 20.0, flappyAmplitude: 10.0)
myFlappyBird.name
myFlappyBird.airspeedVelocity

let swallow = UnladenSwallow.Unknown

swallow.name
//swallow.airspeedVelocity



