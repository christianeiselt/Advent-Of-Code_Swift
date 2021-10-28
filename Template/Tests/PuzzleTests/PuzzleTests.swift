@testable import Puzzle
import AdventKit
import XCTest

final class PuzzleTests: XCTestCase {
    func testExample() throws {

        let puzzle = Puzzle(input: exampleText)

        XCTAssertEqual(puzzle.part1(), "Part One")
        XCTAssertEqual(puzzle.part2(), "Part Two")
    }

    static var allTests = [
        ("testExample1", testExample)
    ]
}
