import Foundation

class Game: PGame {

    var helper = Helpers()
    
    // Generate empty world
    func GenerateWorld(size: Int) -> [[String]]{
        let board  = Array(repeating: Array(repeating: "0", count: size), count: size)
        return board
    }

    // Initialize the world with random population
    func InitializeWorld(_ board: [[String]]) -> [[String]] {
        var newBoard = board

        for i in 0..<board.count {           
           for j in 0..<board.count {
              if helper.shouldBeAliveORDead() { //Returns True or false
                  newBoard[i][j] = "1"
              }
           }
       }       
        
        return newBoard
    }

    // Genrate next population
    func NextPopulation(_ board: [[String]]) -> [[String]] {
        
        var next = GenerateWorld(size: board.count)

        for i in 0..<board.count {              
            for j in 0..<board.count {       

                let count = helper.numberOfNeighbours(board: board, index: (i, j))
                
                //RULES
                //1. Any live cell with fewer than two live neighbours dies, as if by loneliness.
                //2. Any live cell with more than three live neighbours dies, as if by overcrowding.
                if count < 2 || count > 3 {
                    next[i][j] = "0";
                }

                //3. Any dead cell with exactly three live neighbours comes to life.
                else if count == 3 && board[i][j] == "0" {
                    next[i][j] = "1";
                }

                //4. Any live cell with two or three live neighbours lives, unchanged, to the next generation.
                else if count == 2 || count == 3 {
                    next[i][j] = board[i][j];
                }                
            }
        }         
        return next;
    }     
}