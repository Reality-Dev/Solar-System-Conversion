//: A playground useful for scaling planet orbital periods, rotation periods and diameters.
//Created by Grant Jarvis on 03/05/21

import Foundation



//Change the value of these two constants and then press run to scale all of the other orbital periods, rotation periods and diameters.
let secondsForOneEarthYear: Float = 10
///The real-world size of the virtual earth in your scene, in meters.
let diameterOfEarthInMeters: Float = 0.2



let daysPerOrbit: [(String, Float)] =
    [("Mercury", 87.97),
     ("Venus", 224.7),
     ("Mars", 687),
     ("Asteroid belt", 1_644),
     ("Jupiter", 4_331),
     ("Saturn", 10_747),
     ("Uranus", 30_589),
     ("Neptune", 59_800),
     ("Pluto", 90_560)]

let secondsPerOrbit = daysPerOrbit.map({($0.0,
                                         ($0.1 / 365.26) * secondsForOneEarthYear)})
//Prints how many seconds one trip around the sun should take for each planet.
print("""
    If one orbit around the sun (one year) takes
    \(secondsForOneEarthYear) seconds for the Earth,

    """)
secondsPerOrbit.forEach{ orbit in
    print("\(orbit.0) takes \(orbit.1) seconds")
}

let daysPerRotation: [(String, Float)] =
    [("The Sun", 27),
    ("Mercury", 58.6),
     ("Venus", 243),
     ("Mars", 1.03),
     ("Jupiter", 0.41),
     ("Saturn", 0.45),
     ("Uranus", 0.72),
     ("Neptune", 0.67),
     ("Pluto", 6.39)]

//Prints how many seconds one rotation on its axis should take for each planet.
let secondsPerRotation = daysPerRotation.map({($0.0,
                                               $0.1 * (secondsForOneEarthYear / 365.26))})

print("""

    If one rotation (one day) on the Earth takes
    \(secondsForOneEarthYear / 365.26) seconds,

    """)
secondsPerRotation.forEach{ orbit in
    print("\(orbit.0) takes \(orbit.1) seconds")
}

let diameterInKm: [(String, Float)] =
    [("The Sun", 1_391_982),
    ("Mercury", 4_879),
     ("Venus", 12_104),
     ("The Moon", 3_475),
     ("Mars", 6_792),
     ("Jupiter", 142_984),
     ("Saturn", 120_536),
     ("Uranus", 51_118),
     ("Neptune", 49_528),
     ("Pluto", 2_370)]

let virtualDiameters = diameterInKm.map({($0.0,
                                               ($0.1 / 12_756) * diameterOfEarthInMeters)})
print("""

    If the Earth is
    \(diameterOfEarthInMeters) meters in diameter,

    """)
virtualDiameters.forEach{ item in
    print("\(item.0) is \(item.1) meters in diameter")
}
