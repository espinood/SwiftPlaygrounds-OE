
var myVar : Int = 42;
myVar = 50;
let myConst : Double = 42;
let scores = [75, 52, 93, 87, 41, 83]
var totalPassing = 0
for score in scores{
    if score >= 60 {
        totalPassing += 1
    }
}
totalPassing

print("\(totalPassing) passed out of \(scores.count) students.")

