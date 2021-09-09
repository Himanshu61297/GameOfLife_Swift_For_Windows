import Foundation

class Play {
    private let delay: Double
    private let size: Int
    private var board: [[String]]    
    
    private let game = Game()
    
    init(size: Int, delay: Double)
    {
        self.size = size
        self.delay = delay
        board = game.GenerateWorld(size: size)
        board = game.InitializeWorld(board)        
    }

    func start(){

        var gen = 0
        var nextBoard = [[String]]()
        let helper = Helpers()

        repeat {

            print("\u{001B}[H \u{001B}[J") //Clear screen on terminal
            
            print("Genration: \(gen)")    
            helper.printGameBoard(board)    
            
            nextBoard = game.NextPopulation(board) 

            if nextBoard != board {
                board = nextBoard        
            }
            else{
                break
            }
        
            gen += 1

            Thread.sleep(forTimeInterval: delay) // delay in sec

        } while true  //infinite loop
    }    
}