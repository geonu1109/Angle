import XCTest
@testable import Angle

final class AngleTests: XCTestCase {
    func testSineForRightAngle() {
        let rightAngle: Angle = .right
        
        let sineForRightAngle: Double = rightAngle.sine
        
        XCTAssertEqual(sineForRightAngle, 1)
    }
    
    func testDegreeToRadian() {
        let rightAngle: Angle = .init(degree: 180)
        
        let rightAngleRadian: Double = .pi
        
        XCTAssertEqual(rightAngle.radian, rightAngleRadian)
    }
}
