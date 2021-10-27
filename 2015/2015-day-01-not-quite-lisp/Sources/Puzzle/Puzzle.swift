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
        
        var floor = 0
        
        for i in 0..<instructions.count {

            if ( instructions[i] == "(") {
                floor = floor + 1
            }
            else if (instructions[i] == ")") {
                floor = floor - 1
            }
        }
        
        return floor
    }

    public func part2() -> Int {
        return 0
    }
}
