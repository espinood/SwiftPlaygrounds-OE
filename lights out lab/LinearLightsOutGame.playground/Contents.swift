//// TODO: Create the LinearLightsOutGame class
//extension Bool : ExpressibleByIntegerLiteral {
//    public init(integerLiteral value: Int) {
//        self = (value != 0)
//    }
//}

class LinearLightsOutGame : CustomStringConvertible{
    let on : Bool = true
    let off : Bool  = false
    
    var lightStates : [Bool]
    var moves : Int
    var gameWon : Bool
    	
    init(numLights: Int){
        let n = 13
        lightStates = [Bool](repeating: off, count: n)
        moves = 0
        gameWon = false
        
        let randomAmount: Int = .random(in: 0..<n*2)
        for _ in (0...randomAmount){
            let randomIndex : Int = .random(in:0..<n)
            self.pressedLightAtIndex(randomIndex)
        }
//        let randList : [Int] = (0..<n).map { _ in .random(in: 0..<n) }
//        for rand in randList{
//            lightStates[rand] = on;
//        }
        moves = 0
        gameWon = false
    }
    
    var description: String {
        get{
            var statusStr : String = ""
            for b in lightStates {
                statusStr.append(b ? "1" : "0")
            }
            //statusStr.append(lightStates.forEach{ (b:Bool) -> String in return b ? "1":"0"})
            return "Lights: \(statusStr)  Moves: \(moves)\n"
        }
    }
    
    func pressedLightAtIndex(_ index: Int) -> Bool{
        if !gameWon {
            moves += 1
            if index < lightStates.count && index >= 0 {
                if (index >= 1) {lightStates[index-1] = !lightStates[index-1]}
                lightStates[index] = !lightStates[index]
                if (index <= lightStates.count-2) {lightStates[index+1] = !lightStates[index+1]}
            }
            
            if lightStates.contains(true) {
                return false
            } else {
                gameWon = true
                return true
            }
        }
        return true
    }
}

/* ----------------- Official Playground testing ----------------- */
var lg = LinearLightsOutGame(numLights: 13)
lg.lightStates = [Bool](repeating: true, count: 13)
lg.pressedLightAtIndex(0)
lg
lg.pressedLightAtIndex(3)
lg
lg.pressedLightAtIndex(6)
lg
lg.pressedLightAtIndex(9)
lg
lg.pressedLightAtIndex(12)
lg
lg.pressedLightAtIndex(1)
lg


var lg2 = LinearLightsOutGame(numLights: 13)
lg2.lightStates = [true, true, false, false, false, false, false, false, false, false, true, true, true]
lg2.pressedLightAtIndex(0)
lg2
lg2.pressedLightAtIndex(11)
lg2
lg2.pressedLightAtIndex(6)
lg2

