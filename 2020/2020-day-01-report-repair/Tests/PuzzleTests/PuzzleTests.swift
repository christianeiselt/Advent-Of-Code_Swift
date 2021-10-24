@testable import Puzzle
import XCTest

final class PuzzleTests: XCTestCase {
    func testExample() throws {
        
        let puzzle = Puzzle(input: "")
        XCTAssertEqual(puzzle.part1(), 514_579)
        XCTAssertEqual(puzzle.part2(), 241_861_950)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
