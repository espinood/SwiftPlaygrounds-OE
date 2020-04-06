import UIKit
import Foundation

// String Concatenation
var myStr = "Hello, "+"World"

// String append
myStr += "!"

// Looping over a string
for char in myStr{
    print(char)
}


// String size
myStr.count


// String Interpolation
var x = 7
var math = "\(x)^2 is \(x^2) not \(x * x) because ^ is XOR."

// Checking for equality
let dave = "Dave"
let name = "Dave"

if name == dave {
    print("They are the same")
}

// Finding a String within a String
//let range = name.range(of: "av")
//print("Range 1:"+myStr[range!])
//
//var startIndex = range?.lowerBound
//print("Found av in range: \(range.unsafelyUnwrapped)")
//
//let r = range?.relative(to: myStr)
//print("Range 2:"+myStr[r!])

if let rangeFound = name.range(of: "av"){
    print(rangeFound) //Index(_rawBits: 65536)..<Index(_rawBits: 327680)
    print("Found av from \(rangeFound.lowerBound.utf16Offset(in: name)) to \(rangeFound.upperBound.encodedOffset)")
    //Found ello from Index(_rawBits: 65536) to Index(_rawBits: 327680)
}


// Finding a Character within a String
if let index = name.firstIndex(of: "a"){
    print("Found a at location \(index)")
}

myStr.index(of: "W")


// Substrings
myStr.prefix(2)
myStr.prefix(6)
myStr.suffix(4)

let startIndex4 = myStr.index(myStr.startIndex, offsetBy: 1)
let endIndex = myStr.index(myStr.startIndex, offsetBy: 8)

myStr[startIndex4..<endIndex]



