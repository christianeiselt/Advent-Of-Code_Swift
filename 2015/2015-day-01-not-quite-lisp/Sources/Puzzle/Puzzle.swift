import AdventKit
import Foundation

public class Puzzle {
    let input: String
    public init(input: String) {
        self.input = input
    }
    let moveUp: Character = "("
    let moveDown: Character = ")"

    private func move(instruction: Character) -> Int {
        if instruction == moveUp {
            return 1
        } else if instruction == moveDown {
            return -1
        } else {
            return 0
        }
    }

    public func part1() -> Int {
        let instructions = input.map { (character) -> Character in
              return character
        }

        var floor = 0

        for index in 0..<instructions.count {
            floor += move(instruction: instructions[index])
        }

        return floor
    }

    public func part2() -> Int {
        let instructions = input.map { (character) -> Character in
              return character
        }

        var floor = 0

        for index in 0..<instructions.count {
            floor += move(instruction: instructions[index])

            if floor == -1 {
                return index + 1
            }
        }

        return floor
    }
}
