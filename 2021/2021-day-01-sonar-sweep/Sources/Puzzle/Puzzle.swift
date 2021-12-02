import AdventKit
import Foundation

public class Puzzle {
    let input: String

    public init(input: String) {
        self.input = input
    }

    public func isIncrease(first: Int, second: Int) -> Bool {
        if second > first {
            return true
        }
        else {
            return false
        }
    }

    public func part1() -> Int {
        let measurements = input.split(separator: "\n").map { Int($0)! }
        var last_measurement = 0
        var count_increased = 0

        for index in 0 ..< measurements.count {
            if index == 0 {
                // no previous measurement
            }
            else if isIncrease(first: last_measurement, second: measurements[index]) {
                count_increased += 1
            }
            else {
                // no increase
            }

            last_measurement = measurements[index]
        }

        return count_increased
    }

    func getThreeMeasurementWindow(first: Int, second: Int, third: Int) -> Int {
        return first+second+third
    }

    public func part2() -> Int {
        let measurements = input.split(separator: "\n").map { Int($0)! }
        var count_increased = 0

        for index in 0 ..< (measurements.count - 3) {
            let firstWindow = getThreeMeasurementWindow(first: measurements[index], second: measurements[index+1], third: measurements[index+2])
            let secondWindow = getThreeMeasurementWindow(first: measurements[index+1], second: measurements[index+2], third: measurements[index+3])

            if isIncrease(first: firstWindow, second: secondWindow) {
                count_increased += 1
            }
            else {
                // no increase
            }
        }

        return count_increased
    }
}
