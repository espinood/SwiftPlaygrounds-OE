// We already know about constants vs variables but there is another choice always present.
var x = 7
var f: Float = 7
let dave = "Dave"
//dave = "Bob"  // Would cause an error

// Part 1.
// Optionals
var optionalFloat : Float?
var requiredFloat : Float

print("optionalFloat = \(optionalFloat)")
//print("requiredFloat = \(requiredFloat)") //cannot print Null

optionalFloat = 5.0
requiredFloat = 5.0

// Optionals with forced unwrapping
Int(dave)
var ten = "10"
var optionalThatIsNil : Int? = Int(dave)
var optionalThatIsNotNil : Int? = Int(ten)
//var requiredThatIsNil : Int = Int(dave) //cannot do as non-optional Int, If force unwrap a Nil value, then will show a run-time error
var requiredThtatIsNotNil : Int = Int(ten)! //forced unwrapping



// Part 2.
// Views in a Playground + Optional Chaining
import UIKit
var b = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
b.setTitle("Press me", for: .normal)
b.backgroundColor = UIColor.red
b.titleLabel?.text // Optional chaining
b.titleLabel!.text! //Forced unwrapping



// Optional Binding
if let valueIfNonNil = Int(ten){
    print("The value is \(valueIfNonNil)")
} else {
    print("The value was nil")
}

if let valueIfNonNil = Int(dave){
    print("The value is \(valueIfNonNil)")
} else {
    print("The value was nil")
}


// Implicitly Unwrapped Optionals
var optionalThatIsImplicitlyUnWrapped : Int? = Int(ten)!

