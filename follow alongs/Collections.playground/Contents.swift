import UIKit

// Basics for arrays
var names = ["Dave", "Kristy", "McKinley", "Keegan", "Bowen", "Neala"]
names[1]
names[2] = "Kingsley"
names

if names.contains("Dave"){
    print("Dave is present")
}
//For good documentation: https://practicalswift.com/2014/06/14/the-swift-standard-library-list-of-build-in-functions/


// Appending values
var ages = [Int]() //Empyy Int array
ages.append(4)
ages.append(27)
ages.insert(34, at: 1)
ages += [3, 1, 0]
ages.removeLast()
ages
if ages.isEmpty {
    print("Yet, it's empty")
} else if ages.count > 4 {
        print("More than 4 elements in the array")
}
ages.count


// So, so, SO.. many things you could do with arrays...
var randomAges = [Int]()
for _ in 0..<100 {
    randomAges.append(Int(arc4random_uniform(90)))
}
var teenagers = randomAges.filter({
    return $0 > 12 && $0 < 20
})
teenagers.sorted(by: {
    return $0 < $1
})


// Dictionaries
var elements = ["H": "Hydrogen", "He": "Helium", "Li": "Lithium", "Be": "Beryllium", "B": "Boron", "C": "Carbon", "N": "Nitrogen", "O": "Oxygen"]
elements["C"]!
elements["Z"]
for (symbol, name) in elements {
    if symbol == "H" || symbol == "O" {
        print("\(name) is present in water.")
    }
}


// Tuples - There is one really good use for a tuple (coming soon).
var tuple = ("item1", "item2", "item3", "item4")
tuple.2
var namedTuple = (first : "Dave", last : "Fisher")
namedTuple.last
