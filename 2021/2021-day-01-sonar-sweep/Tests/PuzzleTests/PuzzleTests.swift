import AdventKit
@testable import Puzzle
import XCTest

final class PuzzleTests: XCTestCase {
    func testPartOne() throws {
        let puzzle = Puzzle(input: exampleText)

        XCTAssertEqual(puzzle.part1(), 7)
    }

    func testGetThreeMeasurementWindow() throws {
        let puzzle = Puzzle(input: exampleText)

        XCTAssertEqual(puzzle.getThreeMeasurementWindow(first: 199, second: 200, third: 208), 607)
        XCTAssertEqual(puzzle.getThreeMeasurementWindow(first: 200, second: 208, third: 210), 618)
        XCTAssertEqual(puzzle.getThreeMeasurementWindow(first: 208, second: 210, third: 200), 618)
        XCTAssertEqual(puzzle.getThreeMeasurementWindow(first: 210, second: 200, third: 207), 617)
        XCTAssertEqual(puzzle.getThreeMeasurementWindow(first: 200, second: 207, third: 240), 647)
        XCTAssertEqual(puzzle.getThreeMeasurementWindow(first: 207, second: 240, third: 269), 716)
        XCTAssertEqual(puzzle.getThreeMeasurementWindow(first: 240, second: 269, third: 260), 769)
        XCTAssertEqual(puzzle.getThreeMeasurementWindow(first: 269, second: 260, third: 263), 792)
    }

    func testIsIncrease() throws {
        let puzzle = Puzzle(input: exampleText)

        XCTAssertEqual(puzzle.isIncrease(first: 199, second: 200), true)
        XCTAssertEqual(puzzle.isIncrease(first: 200, second: 208), true)
        XCTAssertEqual(puzzle.isIncrease(first: 208, second: 210), true)
        XCTAssertEqual(puzzle.isIncrease(first: 210, second: 200), false)
        XCTAssertEqual(puzzle.isIncrease(first: 200, second: 207), true)
        XCTAssertEqual(puzzle.isIncrease(first: 207, second: 240), true)
        XCTAssertEqual(puzzle.isIncrease(first: 240, second: 269), true)
        XCTAssertEqual(puzzle.isIncrease(first: 269, second: 260), false)
        XCTAssertEqual(puzzle.isIncrease(first: 260, second: 263), true)
    }

    func testPartTwo() throws {
        let puzzle = Puzzle(input: exampleText)

        XCTAssertEqual(puzzle.part2(), 5)
    }

    static var allTests = [
        ("testGetThreeMeasurementWindow", testGetThreeMeasurementWindow),
        ("testIsIncrease", testIsIncrease),
        ("testPartOne", testPartOne),
        ("testPartTwo", testPartTwo)
    ]
}
