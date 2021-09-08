import Foundation

class Helpers {

    //Count number of neighbours
    func numberOfNeighbours(board: [[String]], index: (Int, Int)) -> Int{
        var checksList = [(Int, Int)]() //For calculation of 8 neighbours
        checksList.append((-1, -1))
        checksList.append((-1, 0))
        checksList.append((-1, 1))
        checksList.append((0, -1))
        checksList.append((0, 1))
        checksList.append((1, -1))
        checksList.append((1, 0))
        checksList.append((1, 1))

        var count = 0

        for check in checksList {
            var i = check.0 + index.0
            var j = check.1 + index.1

            if i >= 0 && j >= 0 && i < board.count && j < board[0].count //Checking for the out of bounds of the array
            {
                if board[i][j] == "1"
                {
                    count += 1
                }
            }
        }
        
        return count
    }

    func shouldBeAliveORDead() -> Bool{
        return Bool.random()
    }

    //Print the array
    func printGameBoard(_ board: [[String]]){              
       for arr in board {           
           for str in arr {
               print("\(str)", terminator: " ")      
           }
           print("")
       }
    }
}