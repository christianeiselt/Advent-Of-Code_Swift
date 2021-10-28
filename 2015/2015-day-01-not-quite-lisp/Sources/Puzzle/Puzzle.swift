import AdventKit
import Foundation

public class Puzzle {
    let input: String
    let instructions: [Character]
    let moveUp: Character = "("
    let moveDown: Character = ")"

    enum Part {
        case One
        case Two
    }

    public init(input: String) {
        self.input = input
        self.instructions = input.map { (character) -> Character in
            return character
        }
    }

    private func move(instruction: Character) -> Int {
        if instruction == moveUp {
            return 1
        } else if instruction == moveDown {
            return -1
        } else {
            return 0
        }
    }

    private func followInstructions(instructions: [Character], part: Part) -> Int {

        var floor = 0

        for index in 0..<instructions.count {
            floor += move(instruction: instructions[index])

            if part == Part.Two && floor == -1 {
                return index + 1
            }
        }

        return floor
    }

    public func part1() -> Int {
        return followInstructions(instructions: instructions, part: Part.One)
    }

    public func part2() -> Int {
        return followInstructions(instructions: instructions, part: Part.Two)
    }
}
