import AdventKit
@testable import Puzzle
import XCTest

final class PuzzleTests: XCTestCase {
    func testExample() throws {
        let puzzle = Puzzle(input: exampleText)

        XCTAssertEqual(puzzle.part1(), 150)
        XCTAssertEqual(puzzle.part2(), 900)
    }

    static var allTests = [
        ("testExample1", testExample)
    ]
}
