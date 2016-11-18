//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let earthYearInSeconds: Double = 31557600.00

struct PlanetStruct {
    let name: String
    let oribitalRatio: Double
    let earthYearInSeconds: Double
    let demonym: String
    
    init (name:String, oribitalRatio: Double, earthYearInSeconds: Double, demonym: String) {
        self.name = name
        self.oribitalRatio = oribitalRatio
        self.earthYearInSeconds = earthYearInSeconds
        self.demonym = demonym
    }
}

let planets = [PlanetStruct(name: "Earth", oribitalRatio: 1, earthYearInSeconds: earthYearInSeconds, demonym: "Earthling"),
               PlanetStruct(name: "Mercury", oribitalRatio: 0.2408467, earthYearInSeconds: earthYearInSeconds, demonym: "Mecurian"),
               PlanetStruct(name: "Venus", oribitalRatio: 0.61519726, earthYearInSeconds: earthYearInSeconds, demonym: "Venetian"),
               PlanetStruct(name: "Mars", oribitalRatio: 1.8808158, earthYearInSeconds: earthYearInSeconds, demonym: "Martian"),
               PlanetStruct(name: "Jupiter", oribitalRatio: 11.862615, earthYearInSeconds: earthYearInSeconds, demonym: "Jupitan"),
               PlanetStruct(name: "Saturn", oribitalRatio: 29.447498, earthYearInSeconds: earthYearInSeconds, demonym: "Saturian"),
               PlanetStruct(name: "Uranus", oribitalRatio: 84.016846, earthYearInSeconds: earthYearInSeconds, demonym: "Uranan"),
               PlanetStruct(name: "Neptune", oribitalRatio: 164.79132, earthYearInSeconds: earthYearInSeconds, demonym: "Nepturian")
]

func convertYearsToSeconds(years: Double, ratio: Double) -> Int {
    return Int((years * ratio) * earthYearInSeconds)
}

convertYearsToSeconds(years: 31, ratio: 1)

func getPlanetAge(seconds: Double, planet: PlanetStruct) -> Int {
    let planetAge: Double = seconds / (planet.oribitalRatio * planet.earthYearInSeconds)
    print("You are \(planetAge) in \(planet.demonym) Years!")
    return Int(planetAge)
}

getPlanetAge(seconds: 1000000000, planet: planets[0])
getPlanetAge(seconds: 1000000000, planet: planets[1])
getPlanetAge(seconds: 1000000000, planet: planets[2])
getPlanetAge(seconds: 1000000000, planet: planets[3])
getPlanetAge(seconds: 1000000000, planet: planets[4])
getPlanetAge(seconds: 1000000000, planet: planets[5])
getPlanetAge(seconds: 1000000000, planet: planets[6])
getPlanetAge(seconds: 1000000000, planet: planets[7])












// enum to use for planets
enum Planet {
    
    init?(planetName: String) {
        switch planetName {
        case "earth":
            self = .earth(orbitalRatio: 1, earthYearInSeconds: 31557600, demonym: "Earthling")
        case "mercury":
            self = .mercury(orbitalRatio: 0.2408467, earthYearInSeconds: 31557600, demonym: "Mecurian")
        case "venus":
            self = .venus(orbitalRatio: 0.61519726, earthYearInSeconds: 31557600, demonym: "Venetian")
        case "mars":
            self = .mars(orbitalRatio: 1.8808158, earthYearInSeconds: 31557600, demonym: "Martian")
        case "jupiter":
            self = .jupiter(orbitalRatio: 11.862615, earthYearInSeconds: 31557600, demonym: "Jupitan")
        case "saturn":
            self = .saturn(orbitalRatio: 29.447498, earthYearInSeconds: 31557600, demonym: "Saturian")
        case "uranus":
            self = .uranus(orbitalRatio: 84.016846, earthYearInSeconds: 31557600, demonym: "Uranen")
        case "neptune":
            self = .neptune(orbitalRatio: 164.79132, earthYearInSeconds: 31557600, demonym: "Nepturian")
        default:
            return nil
        }
    }
    
    case    earth(orbitalRatio: Double, earthYearInSeconds: Int, demonym: String),
            mercury(orbitalRatio: Double, earthYearInSeconds: Int, demonym: String),
            venus(orbitalRatio: Double, earthYearInSeconds: Int, demonym: String),
            mars(orbitalRatio: Double, earthYearInSeconds: Int, demonym: String),
            jupiter(orbitalRatio: Double, earthYearInSeconds: Int, demonym: String),
            saturn(orbitalRatio: Double, earthYearInSeconds: Int, demonym: String),
            uranus(orbitalRatio: Double, earthYearInSeconds: Int, demonym: String),
            neptune(orbitalRatio: Double, earthYearInSeconds: Int, demonym: String)
}

let enumPlanets = [Planet(planetName: "earth"),
                   Planet(planetName: "mercury"),
                   Planet(planetName: "venus"),
                   Planet(planetName: "mars"),
                   Planet(planetName: "jupiter"),
                   Planet(planetName: "saturn"),
                   Planet(planetName: "uranus"),
                   Planet(planetName: "neptune")]





