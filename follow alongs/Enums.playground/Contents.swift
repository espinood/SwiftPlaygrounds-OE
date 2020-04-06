// Basic enum
enum Weekday {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday, Friday
    
}

//var today : Weekday
//today = Weekday.Thursday

//var today = Weekday.Thursday

var today : Weekday
today = .Thursday

switch today {
case .Monday, .Tuesday, .Thursday:
    print("Dont be lazy, you have class!")
case .Wednesday:
    print("Weekend Wednesday!")
default:
    break
}

// Rawvalues
enum State: Int{
    case Ready = 0
    case Set
    case Go
}

var raceState = State.Set
raceState.rawValue

var nextRaceState = State(rawValue: raceState.rawValue + 1)!
if nextRaceState == .Go {
    print("Go Go! GO!")
}



// Associated values and functions
enum Homework {
    case NoHomework, InProgress(Int, Int), Done
    
    func simpleDescription() -> String {
        switch self{
        case .NoHomework:
            return "No Homework. Yeah!"
        case let .InProgress(numComplete, totalToDo): // same as .InProgress(let numComplete, let totalToDo)
            return "In progress, finished \(numComplete) out of \(totalToDo) so far"
        case .Done:
            return "Done!"
        }
    }
}


var myHWStatus = Homework.InProgress(2, 10)
myHWStatus.simpleDescription()

myHWStatus = .InProgress(8, 10)
myHWStatus.simpleDescription()

myHWStatus = .Done
myHWStatus.simpleDescription()
