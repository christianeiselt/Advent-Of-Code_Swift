@testable import Puzzle
import AdventKit
import XCTest

final class PuzzleTests: XCTestCase {
    func testExample() throws {

        let puzzle = Puzzle(input: exampleText)

        XCTAssertEqual(puzzle.part1(), 0)
        XCTAssertEqual(puzzle.part2(), 0)
    }

    static var allTests = [
        ("testExample", testExample)
    ]
}
