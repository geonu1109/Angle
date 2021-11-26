import Foundation

// MARK: extension for trigonometric functions
public extension Double {
    static func sine(of radian: Double) -> Double {
        return radian.sine
    }
    
    var sine: Double {
        return sin(self)
    }
    
    static func cosine(of radian: Double) -> Double {
        return radian.cosine
    }
    
    var cosine: Double {
        return cos(self)
    }
    
    static func tangent(of radian: Double) -> Double {
        return radian.tangent
    }
    
    var tangent: Double {
        return tan(self)
    }
    
    static func secant(of radian: Double) -> Double {
        return radian.secant
    }
    
    var secant: Double {
        return 1 / cos(self)
    }
    
    static func cosecant(of radian: Double) -> Double {
        return radian.cosecant
    }
    
    var cosecant: Double {
        return 1 / sin(self)
    }
    
    static func cotangent(of radian: Double) -> Double {
        return radian.cotangent
    }
    
    var cotangent: Double {
        return 1 / tan(self)
    }
}

// MARK: extension for inverse trigonometric functions
public extension Double {
    static func arcsine(of radian: Double) -> Double {
        return radian.arcsine
    }
    
    var arcsine: Double {
        return asin(self)
    }
    
    static func arccosine(of radian: Double) -> Double {
        return radian.arccosine
    }
    
    var arccosine: Double {
        return acos(self)
    }
    
    static func arctangent(of radian: Double) -> Double {
        return radian.arctangent
    }
    
    var arctangent: Double {
        return atan(self)
    }
    
    static func arcsecant(of radian: Double) -> Double {
        return radian.arcsecant
    }
    
    var arcsecant: Double {
        return acos(1 / self)
    }
    
    static func arccosecant(of radian: Double) -> Double {
        return radian.arccosecant
    }
    
    var arccosecant: Double {
        return asin(1 / self)
    }
    
    static func arccotangent(of radian: Double) -> Double {
        return radian.arccotangent
    }
    
    var arccotangent: Double {
        return atan(1 / self)
    }
}
