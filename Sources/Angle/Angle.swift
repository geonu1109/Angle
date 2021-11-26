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
    var sine: Double {
        return sin(self.radian)
    }
    
    var cosine: Double {
        return cos(self.radian)
    }
    
    var tangent: Double {
        return tan(self.radian)
    }
    
    var secant: Double {
        return 1 / cos(self.radian)
    }
    
    var cosecant: Double {
        return 1 / sin(self.radian)
    }
    
    var cotangent: Double {
        return 1 / tan(self.radian)
    }
}

// extension for inverse trigonometric functions
public extension Angle {
    var arcsine: Double {
        return asin(self.radian)
    }
    
    var arccosine: Double {
        return acos(self.radian)
    }
    
    var arctangent: Double {
        return atan(self.radian)
    }
    
    var arcsecant: Double {
        return acos(1 / self.radian)
    }
    
    var arccosecant: Double {
        return asin(1 / self.radian)
    }
    
    var arccotangent: Double {
        return atan(1 / self.radian)
    }
}
