import AdventKit
@testable import Puzzle
import XCTest

final class PuzzleTests: XCTestCase {
    func testExample() throws {
        let puzzle = Puzzle(input: exampleText)

        XCTAssertEqual(puzzle.part1(), 7)
        XCTAssertEqual(puzzle.part2(), "Part Two")
    }

    static var allTests = [
        ("testExample1", testExample)
    ]
}
