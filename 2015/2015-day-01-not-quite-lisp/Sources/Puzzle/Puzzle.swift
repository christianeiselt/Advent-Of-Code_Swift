import AdventKit
import Foundation

public class Puzzle {
    let input: String
    public init(input: String) {
        self.input = input
    }

    public func part1() -> Int {
        let instructions = input.map { (character) -> Character in
              return character
        }
        let moveUp: Character = "("
        let moveDown: Character = ")"

        var floor = 0

        for index in 0..<instructions.count {

            if instructions[index] == moveUp {
                floor += 1
            } else if instructions[index] == moveDown {
                floor -= 1
            }
        }

        return floor
    }

    public func part2() -> Int {
        let instructions = input.map { (character) -> Character in
              return character
        }
        let moveUp: Character = "("
        let moveDown: Character = ")"

        var floor = 0

        for index in 0..<instructions.count {

            if instructions[index] == moveUp {
                floor += 1
            } else if instructions[index] == moveDown {
                floor -= 1
            }

            if floor == -1 {
                return index + 1
            }
        }

        return floor
    }
}
