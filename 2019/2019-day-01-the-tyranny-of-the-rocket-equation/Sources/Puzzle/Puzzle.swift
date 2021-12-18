import AdventKit
import Foundation

public class Puzzle {
    let input: String
    let divisor: Int = 3
    let subtrahend: Int = 2

    public init(input: String) {
        self.input = input
    }

    public func part1() -> Int {
        let modules = input.split(separator: "\n").map { Int($0)! }
        var mass = 0

        for index in 0 ..< modules.count {
            mass += (modules[index] / divisor) - subtrahend
        }

        return mass
    }

    public func part2() -> Int {
        return 0
    }
}
