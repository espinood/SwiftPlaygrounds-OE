
// TODO: Create the TicTacToeGame class
class TicTacToeGame : CustomStringConvertible {
    enum MarkType : String{
        case none = "-"
        case x = "X"
        case o = "O"
    }
    enum GameState : String {
        case XTurn = "X's Turn"
        case OTurn = "O's Turn"
        case XWon = "X Wins!"
        case OWon = "O Wins!"
        case Tie = "Tie Game!"
    }
    
    //var description: String
    var gameBoard : [MarkType]
    var gameState : GameState
    
    init(){
        gameBoard = [MarkType](repeating: .none, count: 9)
        gameState = GameState.XTurn
    }
    
    var description: String { /*or if only using get you can forgo the "get" and only have the return statement
         between the two curly braces and it should work the same*/
        get {
            return "\(gameState.rawValue)  Board: \(getGameString())"
        }
    }
    
    func getGameString(indices: [Int] = [0,1,2,3,4,5,6,7,8]) -> String{
        var gameString = ""
        for index in indices {
            gameString += gameBoard[index].rawValue
            
        }
        return gameString
    }
    
    func pressedSquare(_ index: Int) {
        if gameBoard[index] != .none {
            return
        }
        if gameState == .XTurn {
            gameBoard[index] = .x
            gameState = .OTurn
            checkForGameOver()
        } else if gameState == .OTurn {
            gameBoard[index] = .o
            gameState = .XTurn
            checkForGameOver()
        }
    }
    
    func checkForGameOver() {
        if !gameBoard.contains(.none) {
            gameState = .Tie
        }
        
        var linesOf3 = [String]()
        linesOf3.append(getGameString(indices: [0,1,2]))
        linesOf3.append(getGameString(indices: [3,4,5]))
        linesOf3.append(getGameString(indices: [6,7,8]))
        
        linesOf3.append(getGameString(indices: [0,3,6]))
        linesOf3.append(getGameString(indices: [1,4,7]))
        linesOf3.append(getGameString(indices: [2,5,8]))
        
        linesOf3.append(getGameString(indices: [0,4,8]))
        linesOf3.append(getGameString(indices: [2,4,6]))
        
        for lineOf3 in linesOf3{
            if lineOf3 == "XXX" {
                gameState = .XWon
            } else if lineOf3 == "OOO" {
                gameState = .OWon
            }
        }
    }
    
}


/* ----------------- Official Playground testing ----------------- */
var game = TicTacToeGame()
print(game)
game.description
game.pressedSquare(0)
game.pressedSquare(1)
game.pressedSquare(3)
game.pressedSquare(2)
game.pressedSquare(6)


var game2 = TicTacToeGame()
game2.gameBoard = [.x, .x, .o,
                .none, .none, .none,
                .o, .none, .none]
game2.pressedSquare(8)
game2.pressedSquare(4)


var game3 = TicTacToeGame()
game3.gameBoard = [.x, .x, .o,
    .o, .o, .x,
    .x, .o, .none]
game3.pressedSquare(8)

