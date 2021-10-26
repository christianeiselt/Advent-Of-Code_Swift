@testable import Puzzle
import XCTest

final class PuzzleTests: XCTestCase {
    func testExample() throws {
        
        let puzzle = Puzzle(input: try! String(contentsOfFile: "example.txt"))

        XCTAssertEqual(puzzle.part1(), 0)
        XCTAssertEqual(puzzle.part2(), 0)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
