import AdventKit
import Foundation

public class Puzzle {
    let input: String

    public init(input: String) {
        self.input = input
    }

    private struct Step {
        let direction: String
        let distance: Int
    }

    private struct Position {
        var horizontal: Int
        var depth: Int
        var aim: Int
    }

    private func get_step(step: String) -> Step {
        let stepValues = step.split(separator: " ")
        return Step(direction: String(stepValues[0]), distance: Int(stepValues[1])!)
    }

    private enum Part {
        case ONE
        case TWO
    }

    private func getNewPositionMoveForward(position: Position, step: Step, part: Part) -> Position {
        var newPosition = position
        if part == Part.ONE {
            newPosition.horizontal += step.distance
        } else {
            newPosition.horizontal += step.distance
            newPosition.depth += newPosition.aim * step.distance
        }

        return newPosition
    }

    private func getNewPositionMoveUp(position: Position, step: Step, part: Part) -> Position {
        var newPosition = position
        if part == Part.ONE {
            newPosition.depth -= step.distance
        } else {
            newPosition.aim -= step.distance
        }

        return newPosition
    }

    private func getNewPositionMoveDown(position: Position, step: Step, part: Part) -> Position {
        var newPosition = position
        if part == Part.ONE {
            newPosition.depth += step.distance
        } else {
            newPosition.aim += step.distance
        }

        return newPosition
    }

    private func get_final_position(steps: [String.SubSequence], part: Part) -> Position {
        let directionForward: String = "forward"
        let directionUp: String = "up"
        let directionDown: String = "down"
        var currentPosition = Position(horizontal: 0, depth: 0, aim: 0)

        for index in 0 ..< (steps.count) {
            let step = get_step(step: String(steps[index]))
            let shouldMoveForward = step.direction == directionForward
            let shouldMoveUp = step.direction == directionUp
            let shouldMoveDown = step.direction == directionDown

            if shouldMoveForward {
                currentPosition = getNewPositionMoveForward(position: currentPosition, step: step, part: part)
            } else if shouldMoveUp {
                currentPosition = getNewPositionMoveUp(position: currentPosition, step: step, part: part)
            } else if shouldMoveDown {
                currentPosition = getNewPositionMoveDown(position: currentPosition, step: step, part: part)
            } else {
                print("Incorrect direction!")
            }
        }

        return Position(horizontal: currentPosition.horizontal, depth: currentPosition.depth, aim: currentPosition.aim)
    }

    public func part1() -> Int {
        let steps = input.split(separator: "\n")
        let finalPosition = get_final_position(steps: steps, part: Part.ONE)

        return finalPosition.horizontal * finalPosition.depth
    }

    public func part2() -> Int {
        let steps = input.split(separator: "\n")
        let finalPosition = get_final_position(steps: steps, part: Part.TWO)

        return finalPosition.horizontal * finalPosition.depth
    }
}
