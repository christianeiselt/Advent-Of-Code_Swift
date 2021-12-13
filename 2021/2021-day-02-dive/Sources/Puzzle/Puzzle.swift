import AdventKit
import Foundation

public class Puzzle {
    let input: String
    let DirectionForward: String = "forward"
    let DirectionUp: String = "up"
    let DirectionDown: String = "down"

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
        let step_values = step.split(separator: " ")
        return Step(direction: String(step_values[0]), distance: Int(step_values[1])!)
    }

    private enum Part {
        case ONE
        case TWO
    }

    private func getNewPositionMoveForward(position: Position, step: Step, part: Part) -> Position {
        var newPosition = position
        if part == Part.ONE {
            newPosition.horizontal += step.distance
        }
        else {
            newPosition.horizontal += step.distance
            newPosition.depth += newPosition.aim * step.distance
        }

        return newPosition
    }

    private func getNewPositionMoveUp(position: Position, step: Step, part: Part) -> Position {
        var newPosition = position
        if part == Part.ONE {
            newPosition.depth -= step.distance
        }
        else {
            newPosition.aim -= step.distance
        }

        return newPosition
    }

    private func getNewPositionMoveDown(position: Position, step: Step, part: Part) -> Position {
        var newPosition = position
        if part == Part.ONE {
            newPosition.depth += step.distance
        }
        else {
            newPosition.aim += step.distance
        }

        return newPosition
    }

    private func get_final_position(steps: [String.SubSequence], part: Part) -> Position {
        var currentPosition = Position(horizontal: 0, depth: 0, aim: 0)

        for index in 0 ..< (steps.count) {
            let step = get_step(step: String(steps[index]))
            let shouldMoveForward = step.direction == DirectionForward
            let shouldMoveUp = step.direction == DirectionUp
            let shouldMoveDown = step.direction == DirectionDown

            if shouldMoveForward {
                currentPosition = getNewPositionMoveForward(position: currentPosition, step: step, part: part)
            }
            else if shouldMoveUp {
                currentPosition = getNewPositionMoveUp(position: currentPosition, step: step, part: part)
            }
            else if shouldMoveDown {
                currentPosition = getNewPositionMoveDown(position: currentPosition, step: step, part: part)
            }
            else {
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
