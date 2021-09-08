import Foundation

protocol PHelpers {

    //Count number of neighbours
    func numberOfNeighbours(board: [[String]], index: Int) -> Int

    //Print the array
    func printGameBoard(_ board: [[String]])

    //Genrate random
    func shouldBeAliveORDead() -> Bool
    
}