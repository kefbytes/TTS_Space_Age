//
//  Planet.swift
//  Space_Age
//
//  Created by Franks, Kent on 10/31/16.
//  Copyright © 2016 Franks, Kent. All rights reserved.
//

import Foundation

struct Planet {
    let name: String
    let orbitalRatio: Float
    let earthYearInSeconds: Float = 31557600.00
    let demonym: String
    
    func ageToPlanetYears(ageInEarthSeconds: Float) -> Float {
        let unroundedAge = ageInEarthSeconds / (earthYearInSeconds * self.orbitalRatio)
        return round(1000 * unroundedAge) / 1000
    }
}
