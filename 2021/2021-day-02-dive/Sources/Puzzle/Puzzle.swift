import AdventKit
import Foundation

public class Puzzle {
    let input: String

    public init(input: String) {
        self.input = input
    }

    public func part1() -> Int {
        let steps = input.split(separator: "\n")
        var horizontal = 0
        var depth = 0

        for index in 0 ..< (steps.count) {
            let step_values = steps[index].split(separator: " ")
            let step_direction = step_values[0]
            let distance = Int(step_values[1])!

            if step_direction == "forward" {
                horizontal += distance
            }
            else if step_direction == "up" {
                depth -= distance
            }
            else if step_direction == "down" {
                depth += distance
            }
            else {
                print("Incorrect direction!")
            }
        }

        return horizontal * depth
    }

    public func part2() -> Int {
        let steps = input.split(separator: "\n")
        var horizontal = 0
        var depth = 0
        var aim = 0

        for index in 0 ..< (steps.count) {
            let step_values = steps[index].split(separator: " ")
            let step_direction = step_values[0]
            let distance = Int(step_values[1])!

            if step_direction == "forward" {
                horizontal += distance
                depth += aim * distance
            }
            else if step_direction == "up" {
                aim -= distance
            }
            else if step_direction == "down" {
                aim += distance
            }
            else {
                print("Incorrect direction!")
            }
        }

        return horizontal * depth
    }
}
