# Angle

Angle is a simple Swift library that provides Angle structure representing angles.
It handles angles using circular measure by default but is also compatible with sexagesimal measure.
The Angle structure provides methods for trigonometric and inverse trigonometric functions.

## Usage

**creation**

```swift
// There are two ways to create a 60 degree angle
let angleFromRadian: Angle = .init(radian: .pi / 3) // using circular measure
let angleFromDegree: Angle = .init(degree: 60) // using sexagesimal measure
```

**compatible**

```swift
// You can get degree and radian values from Angle.
let radianValue: Double = angle.radian
let degreeValue: Double = angle.degree
```

**trigonometric functions**

```swift
// You can get trigonometric value from Angle.
let sineForRightAngle: Double = Angle.right.sine
let arctangentForAngle1: Double = angle1.arctangent
```

## Installation

**CocoaPods**

```ruby
use_frameworks!

target 'ExampleTargetName' do
    pod 'Angle', '1.2.2'
end
```

**Swift Package Manager**

```swift
// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "ExampleProjectName",
    dependencies: [
        .package(name: "Angle", url: "https://github.com/geonu1109/Angle.git", .exact("1.2.2"))
    ]
)
```
