import AdventKit
@testable import Puzzle
import XCTest

final class PuzzleTests: XCTestCase {
    func testExample1() throws {
        let puzzle = Puzzle(input: exampleText1)

        XCTAssertEqual(puzzle.part1(), 2)
        XCTAssertEqual(puzzle.part2(), 0)
    }

    func testExample2() throws {
        let puzzle = Puzzle(input: exampleText2)

        XCTAssertEqual(puzzle.part1(), 2)
        XCTAssertEqual(puzzle.part2(), 0)
    }

    func testExample3() throws {
        let puzzle = Puzzle(input: exampleText3)

        XCTAssertEqual(puzzle.part1(), 654)
        XCTAssertEqual(puzzle.part2(), 0)
    }

    func testExample4() throws {
        let puzzle = Puzzle(input: exampleText4)

        XCTAssertEqual(puzzle.part1(), 33583)
        XCTAssertEqual(puzzle.part2(), 0)
    }

    static var allTests = [
        ("testExample1", testExample1),
        ("testExample2", testExample2),
        ("testExample3", testExample3),
        ("testExample4", testExample4)
    ]
}
