import Foundation

protocol PGame {
    // Generate empty world
    func GenerateWorld(size: Int) -> [[String]]

    // Initialize the world with random population
    func InitializeWorld(_ board: [[String]]) -> [[String]]

    // Genrate next population
    func NextPopulation(_ board: [[String]]) -> [[String]]  
}