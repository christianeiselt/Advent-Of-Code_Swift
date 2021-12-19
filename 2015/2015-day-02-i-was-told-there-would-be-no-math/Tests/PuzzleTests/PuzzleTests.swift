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

    func testGetArea() throws {
        let puzzle = Puzzle(input: example1.input)

        XCTAssertEqual(puzzle.getArea(dimensions: [2, 3, 4]), 52)
    }

    func testGetShortestSide() throws {
        let puzzle = Puzzle(input: example1.input)

        XCTAssertEqual(puzzle.getAreaSmallestSide(dimensions: [3, 2, 4]), 6)
    }

    func testGetAreaForBox() throws {
        let puzzle = Puzzle(input: example1.input)

        XCTAssertEqual(puzzle.getAreaForBox(boxMeasure: puzzle.input), 58)
    }


    //    static var allTests = [
//        ("testExample1", testExample1),
//        ("testExample2", testExample2)
//    ]
}
