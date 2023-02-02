import UIKit

import UIKit

//Japan flags🇯🇵

//white background width:1260, height:840 ⚪️
var background = CGRect(x: 0, y: 0, width: 1260, height: 840)
let backgroundView = UIView(frame: background)
backgroundView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
backgroundView.layer.borderWidth = 2
backgroundView.layer.borderColor = UIColor.black.cgColor

//Red circle
var redCircle = CGRect(x: 380, y: 170, width: 500, height: 500)
let redCircleView = UIView(frame: redCircle)
redCircleView.backgroundColor = UIColor.red
// Size of Radius will use the half of width.
redCircleView.layer.cornerRadius = 250
// Add subview
backgroundView.addSubview(redCircleView)
backgroundView


// Taiwan flags 🇹🇼

// Taiwan's flags color scheme
// RGB color render as:
// Blue:  0/255, 0/255, 149/255
// Red :  254/255, 0/255, 0/255
// White: 255/255, 255/255, 255/255

// Red Rectangle BG part
// 1.利用 UIBezierPath 繪製圓形的路徑
let frame = CGRect(x: 0, y: 0, width: 120, height: 80)
let redRect = UIView(frame: frame)
redRect.backgroundColor = UIColor(red: 245/255, green: 0/255, blue: 0/255, alpha: 1)

//Draw the Red Rect by UIBezier
let redBackgroundPath = UIBezierPath()
var point = CGPoint(x: 60, y: 0)
//Move to
redBackgroundPath.move(to: point)
// Draw the Line 1
point = CGPoint(x: 120, y: 0)
redBackgroundPath.addLine(to: point)
// Draw the Line 2
point = CGPoint(x: 120, y: 80)
redBackgroundPath.addLine(to: point)
// Draw the Line 3
point = CGPoint(x: 0, y: 80)
redBackgroundPath.addLine(to: point)
// Draw the Line 4
point = CGPoint(x: 0, y: 40)
redBackgroundPath.addLine(to: point)
// Draw the Line 5
point = CGPoint(x: 60, y: 40)
redBackgroundPath.addLine(to: point)
// Draw the Line 6
point = CGPoint(x: 60, y: 0)
redBackgroundPath.addLine(to: point)
redBackgroundPath.close()

//生成方形的 CAShapeLayer
let redRectLayer = CAShapeLayer()
redRectLayer.path = redBackgroundPath.cgPath
redRect.layer.mask = redRectLayer
redRect

// Blue Rectangle part
let frame2 = CGRect(x: 0, y: 0, width: 60, height: 40)
let blueRect = UIView(frame:frame2)
blueRect.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 149/255, alpha: 1)

blueRect

// White Circle in Blue Rectangle
let circle = CGRect(x: 22.5, y: 12.5, width: 15, height: 15)
let whiteCircle = UIView(frame: circle)
whiteCircle.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

//cornerRadius
whiteCircle.layer.cornerRadius = 7.5
//Call the circle again
whiteCircle

// 12 pcs of star Triangle.
let triangle = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleFirstView = UIView(frame: triangle)
triangleFirstView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let trianglePath = UIBezierPath()  //Use the UIBezier
var point1 = CGPoint(x: 30, y: 5)
trianglePath.move(to: point1)
point1 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
trianglePath.addLine(to: point1)
point1 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
trianglePath.addLine(to: point1)
point1 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
trianglePath.addLine(to: point1)
point1 = CGPoint(x: 30, y: 5)

trianglePath.close()

//CAShapeLayer
let maskLayer1 = CAShapeLayer()
maskLayer1.path = trianglePath.cgPath
triangleFirstView.layer.mask = maskLayer1

let firstDegree = CGFloat.pi / 180
triangleFirstView.transform = CGAffineTransform(rotationAngle: firstDegree * 0)
  
//Second triangle
let triangle2 = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleSecondView = UIView(frame: triangle2)

triangleSecondView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let triangelSecondPath = UIBezierPath()
var point2 = CGPoint(x: 30, y: 6)

triangelSecondPath.move(to: point2)

point2 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangelSecondPath.addLine(to: point2)

point2 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangelSecondPath.addLine(to: point2)

point2 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangelSecondPath.addLine(to: point2)

point2 = CGPoint(x: 30, y: 5)

triangelSecondPath.close()

//CAShapeLayer
let maskLayer2 = CAShapeLayer()
maskLayer2.path = triangelSecondPath.cgPath
triangleSecondView.layer.mask = maskLayer2

//Rotation the triangle 30 degree
let oneDegree = CGFloat.pi / 180
triangleSecondView.transform = CGAffineTransform(rotationAngle: oneDegree * 30)

//Third triangle
let triangle3 = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleThirdView = UIView(frame: triangle3)

triangleThirdView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let triangleThirdPath = UIBezierPath()

var point3 = CGPoint(x: 30, y: 6)

triangleThirdPath.move(to: point3)

point3 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleThirdPath.addLine(to: point3)

point3 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleThirdPath.addLine(to: point3)

point3 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleThirdPath.addLine(to: point3)

point3 = CGPoint(x: 30, y: 5)

triangleThirdPath.close()

//CAShapeLayer
let maskLayer3 = CAShapeLayer()
maskLayer3.path = triangleThirdPath.cgPath
triangleThirdView.layer.mask = maskLayer3
//Rotation the triangle 45 degree(Plus 15 degree once)
let thirdDegree = CGFloat.pi / 180
triangleThirdView.transform = CGAffineTransform(rotationAngle: thirdDegree * 60)

//Fourth triangle
let triangle4 = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleFourthView = UIView(frame: triangle4)

triangleFourthView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let triangleFourthPath = UIBezierPath()

var point4 = CGPoint(x: 30, y: 6)

triangleFourthPath.move(to: point4)
point4 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleFourthPath.addLine(to: point4)
point4 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleFourthPath.addLine(to: point4)
point4 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleFourthPath.addLine(to: point4)
point4 = CGPoint(x: 30, y: 5)
triangleFourthPath.close()

//CAShapeLayer
let maskLayer4 = CAShapeLayer()
maskLayer4.path = triangleFourthPath.cgPath
triangleFourthView.layer.mask = maskLayer4

//Rotation the triangle 60 degree
let FourthDegree = CGFloat.pi / 180
triangleFourthView.transform = CGAffineTransform(rotationAngle: FourthDegree * 90)

//Fifth triangle
let triangle5 = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleFifthView = UIView(frame: triangle5)

triangleFifthView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let triangleFifthPath = UIBezierPath()

var point5 = CGPoint(x: 30, y: 6)

triangleFifthPath.move(to: point5)
point5 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleFifthPath.addLine(to: point5)
point5 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleFifthPath.addLine(to: point5)
point5 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleFifthPath.addLine(to: point5)
point5 = CGPoint(x: 30, y: 5)
triangleFifthPath.close()

//CAShapeLayer
let maskLayer5 = CAShapeLayer()
maskLayer5.path = triangleFifthPath.cgPath
triangleFifthView.layer.mask = maskLayer5

//Rotation the triangle 75 degree
let FifthDegree = CGFloat.pi / 180
triangleFifthView.transform = CGAffineTransform(rotationAngle: FifthDegree * 120)

//sixth triangle
let triangle6 = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleSixthView = UIView(frame: triangle6)

triangleSixthView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let triangleSixthPath = UIBezierPath()

var point6 = CGPoint(x: 30, y: 6)

triangleSixthPath.move(to: point6)
point6 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleSixthPath.addLine(to: point6)
point6 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleSixthPath.addLine(to: point6)
point6 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleSixthPath.addLine(to: point6)
point6 = CGPoint(x: 30, y: 5)
triangleSixthPath.close()

//CAShapeLayer
let maskLayer6 = CAShapeLayer()
maskLayer6.path = triangleSixthPath.cgPath
triangleSixthView.layer.mask = maskLayer6

//Rotation the triangle 90 degree
let sixthDegree = CGFloat.pi / 180
triangleSixthView.transform = CGAffineTransform(rotationAngle: sixthDegree * 150)

//seventh triangle
let triangle7 = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleSeventhView = UIView(frame: triangle7)

triangleSeventhView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let triangleSeventhVPath = UIBezierPath()

var point7 = CGPoint(x: 30, y: 6)

triangleSeventhVPath.move(to: point7)
point7 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleSeventhVPath.addLine(to: point7)
point7 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleSeventhVPath.addLine(to: point7)
point7 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleSeventhVPath.addLine(to: point7)
point7 = CGPoint(x: 30, y: 5)
triangleSeventhVPath.close()

//CAShapeLayer
let maskLayer7 = CAShapeLayer()
maskLayer7.path = triangleSeventhVPath.cgPath
triangleSeventhView.layer.mask = maskLayer7

//Rotation the triangle 105 degree
let seventhDegree = CGFloat.pi / 180
triangleSeventhView.transform = CGAffineTransform(rotationAngle: seventhDegree * 180)

//eighth triangle
let triangle8 = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleEighthView = UIView(frame: triangle8)

triangleEighthView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let triangleEighthPath = UIBezierPath()

var point8 = CGPoint(x: 30, y: 6)

triangleEighthPath.move(to: point8)
point8 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleEighthPath.addLine(to: point8)
point8 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleEighthPath.addLine(to: point8)
point8 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleEighthPath.addLine(to: point8)
point8 = CGPoint(x: 30, y: 5)
triangleEighthPath.close()

//CAShapeLayer
let maskLayer8 = CAShapeLayer()
maskLayer8.path = triangleEighthPath.cgPath
triangleEighthView.layer.mask = maskLayer8

//Rotation the triangle 120 degree
let eighthDegree = CGFloat.pi / 180
triangleEighthView.transform = CGAffineTransform(rotationAngle: eighthDegree * (-30))

//ninth triangle
let triangle9 = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleNinthView = UIView(frame: triangle9)

triangleNinthView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let triangleNinthPath = UIBezierPath()

var point9 = CGPoint(x: 30, y: 6)

triangleNinthPath.move(to: point9)
point9 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleNinthPath.addLine(to: point9)
point9 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleNinthPath.addLine(to: point9)
point9 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleNinthPath.addLine(to: point9)
point9 = CGPoint(x: 30, y: 5)
triangleNinthPath.close()

//CAShapeLayer
let maskLayer9 = CAShapeLayer()
maskLayer9.path = triangleNinthPath.cgPath
triangleNinthView.layer.mask = maskLayer9

//Rotation the triangle 135 degree
let ninthDegree = CGFloat.pi / 180
triangleNinthView.transform = CGAffineTransform(rotationAngle: ninthDegree * (-60))

//tenth triangle
let triangle10 = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleTenthView = UIView(frame: triangle10)

triangleTenthView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let triangleTenthPath = UIBezierPath()

var point10 = CGPoint(x: 30, y: 6)

triangleTenthPath.move(to: point10)
point10 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleTenthPath.addLine(to: point10)
point10 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleTenthPath.addLine(to: point10)
point10 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleTenthPath.addLine(to: point10)
point10 = CGPoint(x: 30, y: 5)
triangleTenthPath.close()

//CAShapeLayer
let maskLayer10 = CAShapeLayer()
maskLayer10.path = triangleTenthPath.cgPath
triangleTenthView.layer.mask = maskLayer10

//Rotation the triangle 150 degree
let tenthDegree = CGFloat.pi / 180
triangleTenthView.transform = CGAffineTransform(rotationAngle: tenthDegree * (-90))

//Eleventh triangle
let triangle11 = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleEleventhView = UIView(frame: triangle11)

triangleEleventhView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let triangleEleventhPath = UIBezierPath()

var point11 = CGPoint(x: 30, y: 6)

triangleEleventhPath.move(to: point11)
point11 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleEleventhPath.addLine(to: point11)
point11 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleEleventhPath.addLine(to: point11)
point11 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleEleventhPath.addLine(to: point11)
point11 = CGPoint(x: 30, y: 5)
triangleEleventhPath.close()

//CAShapeLayer
let maskLayer11 = CAShapeLayer()
maskLayer11.path = triangleEleventhPath.cgPath
triangleEleventhView.layer.mask = maskLayer11

//Rotation the triangle 165 degree
let eleventhDegree = CGFloat.pi / 180
triangleEleventhView.transform = CGAffineTransform(rotationAngle: eleventhDegree * (-120))

//twelfth triangle
let triangle12 = CGRect(x: 0, y: 0, width: 60, height: 40)
let triangleTwelfthView = UIView(frame: triangle12)

triangleTwelfthView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let triangleTwelfthPath = UIBezierPath()

var point12 = CGPoint(x: 30, y: 6)

triangleTwelfthPath.move(to: point12)
point12 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleTwelfthPath.addLine(to: point12)
point12 = CGPoint(x: 30 + 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleTwelfthPath.addLine(to: point12)
point12 = CGPoint(x: 30 - 6.5 * tan(Double.pi/12), y: (40 - 17)/2)
triangleTwelfthPath.addLine(to: point12)
point12 = CGPoint(x: 30, y: 5)
triangleTwelfthPath.close()

//CAShapeLayer
let maskLayer12 = CAShapeLayer()
maskLayer12.path = triangleTwelfthPath.cgPath
triangleTwelfthView.layer.mask = maskLayer12

//Rotation the triangle 180 degree
let twelfthDegree = CGFloat.pi / 180
triangleTwelfthView.transform = CGAffineTransform(rotationAngle: eleventhDegree * (-150))
// print out Flags.

let view = UIView(frame: CGRect(x: 0, y: 0, width: 120, height: 80))
view.addSubview(redRect)            // add in RedRect in a View
view.addSubview(blueRect)           // add in blueRect in a View
view.addSubview(whiteCircle)        // add in whiteCircle in a View
// add in 12 triangles in a View
view.addSubview(triangleFirstView)   // triangle no.1
view.addSubview(triangleSecondView)  // triangle no.2
view.addSubview(triangleThirdView)   // triangle no.3
view.addSubview(triangleFourthView)  // triangle no.4
view.addSubview(triangleFifthView)   // triangle no.5
view.addSubview(triangleSixthView)   // triangle no.6
view.addSubview(triangleSeventhView) // triangle no.7
view.addSubview(triangleEighthView)  // triangle no.8
view.addSubview(triangleNinthView)   // triangle no.9
view.addSubview(triangleTenthView)   // triangle no.10
view.addSubview(triangleEleventhView)// triangle no.11
view.addSubview(triangleTwelfthView) // triangle no.12

view
