//: Print stuff out
import Foundation
print("Hello World")
print(3)
print(2 * 3)
//: Variables
var numberOfPeople = 5
print(numberOfPeople)
numberOfPeople += 2
print(numberOfPeople)
print(Double(10) / Double(numberOfPeople))
//: `let` defines constants that can't change
let university = "University of Washington"
//university += "Bothell" // Doesn't work. A constant

let result = "There are \(numberOfPeople - 2) here today"
print(result)

var calculatorResult: Double = 2
var screenSize = CGFloat(684)
calculatorResult /= 3
//: ## Loops

var currentNumber = 1

while currentNumber <= 10 {
  print(currentNumber)
  currentNumber += 2
//  currentNumber++ // doesn't compile
}

for i in 1...10 {
  print(i)
}
//print(i) // out of scope
for i in 1..<10 {
  print(i)
}
//: ## Conditionals
// true
// false
if numberOfPeople > 10 {
  print("GOod")
}
  /*
else if numberOfPeople > 5 {
  print(":(")
}
*/

var a = 1
var b = 2

if a > 2 && b < 1 {

} else if (a > 1) || ( (b <= 2) && !(university == "Stanford")) {
}

if a > 2 {
  b += 5
} else {
  b += 3
}

b += a > 2
  ? 5
  : numberOfPeople * 3
//: Array
var names = [
  "Apollo",
  "Audrey",
  "Dylan",
]
print(names)
names.append("Vicky")
names.append("Lucas")
print(names)
names.remove(at: 4)
print(names)
print(names.removeFirst().count)
print(names)
print(names.count)
var ages: [Int] = []
// var ages = [Int]()
print(ages)
ages += [18, 20, Int(19.5)]
print(ages)
//:This doesn't work because all elements in array must be of the same type
// names.append(1)
//: You can index into arrays
for i in 0..<ages.count {
  print(ages[i] + 3)
}
//: ... or loop through each element
for name in names {
  print("Hello, \(name)")
}
var anotherNamesArray = names
print(names)
print(anotherNamesArray)
//: - Experiment: Guess what's the value for both arrays?
anotherNamesArray.append("Henry")
print(names)
print(anotherNamesArray)
//: ## Classes, Struct
//: - Experiment: Try changing struct to class and class to struct to see what's the difference
 class Cat {
// struct Cat {
  var numberOfLives: Int = 9
  var name: String

  init(name: String, numberOfLives: Int) {
//: `this.` in Java is `self.` in Swift
    self.name = name
    self.numberOfLives = numberOfLives
  }
//: Java equivalent is `String getInfo(String extra)`
  func getInfo(extra: String = ""/*, a: Int*/) -> String {
    return "Cat \(name) has \(numberOfLives) lives. \(extra)"
  }
}
let cat1 = Cat(name: "Paul", numberOfLives: 7)
let cat2 = cat1
cat2.name = "Lua"
print(cat1.getInfo())
//: ## Enums (Finite Cases) + `switch` statements
import UIKit

let orientation = UIDevice.current.orientation
switch orientation {
case .unknown:
  print("???")
case UIDeviceOrientation.portrait, .portraitUpsideDown:
  print("portrait")
case .landscapeLeft, .landscapeRight:
  print("landscape")
case .faceUp:
  print("face up")
case .faceDown:
  print("face down")
@unknown default:
  break
}

enum Animals {
  case cat
  case dog
  case fish
}
var animal = Animals.cat
animal = Animals.dog
switch animal {
case .cat:
  print("Meow")
case .dog:
  print("Woof")
case .fish:
  print("~~~")
}
switch university {
case "University of Washington":
  print("Be boudnless")
  // fallthrough
case "Stanford":
  print("What is Berkeley?")
//: This allows you to go to next branch
  fallthrough
//: switch statement must cover all cases
default:
  print("Where are you?")
}
