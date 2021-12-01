import AdventKit
import Foundation

public class Puzzle {
    let input: String

    public init(input: String) {
        self.input = input
    }

    public func part1() -> Int {
        let depth_measurements = self.input.split(separator: "\n").map { Int($0)! }
        var last_measurement = 0
        var count_larger_measurements = 0

        for index in 0 ..< depth_measurements.count {
            if index == 0 {
                print("(N/A - no previous measurement)")
            }
            else if depth_measurements[index] > last_measurement {
                print("increased")
                count_larger_measurements = count_larger_measurements + 1
            }
            else {
                print("decreased")
                // evaluate next
            }

            last_measurement = depth_measurements[index]
        }

        print("count for task: \(count_larger_measurements)")
        return count_larger_measurements
    }

    public func part2() -> String {
        return "Part Two"
    }
}
