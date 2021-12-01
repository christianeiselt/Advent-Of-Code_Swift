import AdventKit
@testable import Puzzle
import XCTest

final class PuzzleTests: XCTestCase {
    func testExample1() throws {
        let puzzle = Puzzle(input: example1.input)

        XCTAssertEqual(puzzle.part1(), example1.result)
        // XCTAssertEqual(puzzle.part2(), "Part Two")
    }

    func testExample2() throws {
        let puzzle = Puzzle(input: example2.input)

        XCTAssertEqual(puzzle.part1(), example2.result)
        // XCTAssertEqual(puzzle.part2(), "Part Two")
    }

    func testSplitDimensions() throws {
        let puzzle = Puzzle(input: example1.input)

        XCTAssertEqual(puzzle.splitDimensions(dimensions: example1.input), [2, 3, 4])
    }

    func testGetArea() throws {
        let puzzle = Puzzle(input: "2x3x4")

        XCTAssertEqual(puzzle.getArea(dimensions: [2, 3, 4]), 52)
    }

    func testGetShortestSide() throws {
        let puzzle = Puzzle(input: example1.input)

        XCTAssertEqual(puzzle.getAreaSmallestSide(dimensions: [3, 2, 4]), 6)
    }

//    static var allTests = [
//        ("testExample1", testExample1),
//        ("testExample2", testExample2)
//    ]
}
