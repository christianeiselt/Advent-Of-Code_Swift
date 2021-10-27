import AdventKit
import Foundation

public class Puzzle {
    let input: String
    public init(input: String) {
        self.input = input
    }

    public func part1() -> Int {
        let instructions = input.map { (Character) -> Character in
              return Character
        }
        let moveUp: Character = "("
        let moveDown: Character = ")"
        
        var floor = 0
        
        for i in 0..<instructions.count {

            if ( instructions[i] == moveUp) {
                floor = floor + 1
            }
            else if (instructions[i] == moveDown) {
                floor = floor - 1
            }
        }
        
        return floor
    }

    public func part2() -> Int {
        let instructions = input.map { (Character) -> Character in
              return Character
        }
        let moveUp: Character = "("
        let moveDown: Character = ")"
        
        var floor = 0
        
        for i in 0..<instructions.count {

            if ( instructions[i] == moveUp) {
                floor = floor + 1
            }
            else if (instructions[i] == moveDown) {
                floor = floor - 1
            }

            if (floor == -1) {
                return i + 1
            }
        }
        
        return floor
    }
}
