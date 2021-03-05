
import Foundation



///Change the value of this variable and then press run to scale all of the other orbit and rotation periods.
var secondsForOneEarthYear: Float = 10




var daysPerOrbit: [(String, Float)] =
    [("Mercury", 87.97),
     ("Venus", 224.7),
     ("Mars", 687),
     ("Asteroid belt", 1_644),
     ("Jupiter", 4_333),
     ("Saturn", 10_759),
     ("Uranus", 30_687),
     ("Neptune", 60_190),
     ("Pluto", 90_800)]

var secondsPerOrbit = daysPerOrbit.map({($0.0,
                                         ($0.1 / 365.26) * secondsForOneEarthYear)})
//Prints how many seconds one trip around the sun should take for each planet.
print("""
    If one orbit around the sun (one year) takes
    \(secondsForOneEarthYear) seconds for the Earth

    """)
secondsPerOrbit.forEach{ orbit in
    print("\(orbit.0) takes \(orbit.1) seconds")
}

var daysPerRotation: [(String, Float)] =
    [("Mercury", 58.6),
     ("Venus", 243),
     ("Mars", 1.03),
     ("Jupiter", 0.41),
     ("Saturn", 0.45),
     ("Uranus", 0.72),
     ("Neptune", 0.67),
     ("Pluto", 6.39)]

//Prints how many seconds one rotation on its axis should take for each planet.
var secondsPerRotation = daysPerRotation.map({($0.0,
                                               $0.1 * (secondsForOneEarthYear / 365.26))})

print("""

    If one rotation (one day) on the Earth takes
    \(secondsForOneEarthYear / 365.26) seconds

    """)
secondsPerRotation.forEach{ orbit in
    print("\(orbit.0) takes \(orbit.1) seconds")
}
