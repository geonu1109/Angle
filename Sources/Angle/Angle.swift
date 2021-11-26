import Foundation

// declaration using circular measure
public struct Angle {
    public var radian: Double
    
    public static let right: Angle = .init(radian: .pi / 2)
    
    public static let straight: Angle = .init(radian: .pi)
    
    public init(radian: Double) {
        self.radian = radian
    }
    
    public static func radian(_ radian: Double) -> Angle {
        return .init(radian: radian)
    }
}


// extension for sexagesimal measure
public extension Angle {
    var degree: Double {
        get {
            return Self.getDegreeFromRadian(self.radian)
        }
        set {
            self.radian = Self.getRadianFromDegree(newValue)
        }
    }
    
    init(degree: Double) {
        self.radian = Self.getRadianFromDegree(degree)
    }
    
    static func degree(_ degree: Double) -> Angle {
        return self.init(degree: degree)
    }
    
    static func getRadianFromDegree(_ degree: Double) -> Double {
        return degree / 180 * .pi
    }
    
    static func getDegreeFromRadian(_ radian: Double) -> Double {
        return radian / .pi * 180
    }
}

// extension for trigonometric functions
public extension Angle {
    static func sine(of angle: Angle) -> Double {
        return angle.sine
    }
    
    var sine: Double {
        return sin(self.radian)
    }
    
    static func cosine(of angle: Angle) -> Double {
        return angle.cosine
    }
    
    var cosine: Double {
        return cos(self.radian)
    }
    
    static func tangent(of angle: Angle) -> Double {
        return angle.tangent
    }
    
    var tangent: Double {
        return tan(self.radian)
    }
    
    static func secant(of angle: Angle) -> Double {
        return angle.secant
    }
    
    var secant: Double {
        return 1 / cos(self.radian)
    }
    
    static func cosecant(of angle: Angle) -> Double {
        return angle.cosecant
    }
    
    var cosecant: Double {
        return 1 / sin(self.radian)
    }
    
    static func cotangent(of angle: Angle) -> Double {
        return angle.cotangent
    }
    
    var cotangent: Double {
        return 1 / tan(self.radian)
    }
}

// extension for inverse trigonometric functions
public extension Angle {
    static func arcsine(of angle: Angle) -> Double {
        return angle.arcsine
    }
    
    var arcsine: Double {
        return asin(self.radian)
    }
    
    static func arccosine(of angle: Angle) -> Double {
        return angle.arccosine
    }
    
    var arccosine: Double {
        return acos(self.radian)
    }
    
    static func arctangent(of angle: Angle) -> Double {
        return angle.arctangent
    }
    
    var arctangent: Double {
        return atan(self.radian)
    }
    
    static func arcsecant(of angle: Angle) -> Double {
        return angle.arcsecant
    }
    
    var arcsecant: Double {
        return acos(1 / self.radian)
    }
    
    static func arccosecant(of angle: Angle) -> Double {
        return angle.arccosecant
    }
    
    var arccosecant: Double {
        return asin(1 / self.radian)
    }
    
    static func arccotangent(of angle: Angle) -> Double {
        return angle.arccotangent
    }
    
    var arccotangent: Double {
        return atan(1 / self.radian)
    }
}
