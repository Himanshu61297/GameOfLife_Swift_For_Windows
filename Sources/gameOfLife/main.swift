import Foundation

var game = Game()
var helper = Helpers()
var gen = 0

var board = game.GenerateWorld(size: 5)
board = game.InitializeWorld(board)

var ch = "0"

print("")
repeat {
    print("Genration: \(gen)")    
    helper.printGameBoard(board)    
    board = game.NextPopulation(board)
        
    gen += 1
    ch = readLine() ?? "0"
} while ch == ""










