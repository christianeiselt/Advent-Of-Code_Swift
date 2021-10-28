@testable import Puzzle
import AdventKit
import XCTest

final class PuzzleTests: XCTestCase {
    func testExample1() throws {

        let puzzle = Puzzle(input: exampleText1.instructions)

        XCTAssertEqual(puzzle.part1(), exampleText1.floor)
    }

    func testExample2() throws {

        let puzzle = Puzzle(input: exampleText2.instructions)

        XCTAssertEqual(puzzle.part1(), exampleText2.floor)
    }

    func testExample3() throws {

        let puzzle = Puzzle(input: exampleText3.instructions)

        XCTAssertEqual(puzzle.part1(), exampleText3.floor)
    }

    func testExample4() throws {

        let puzzle = Puzzle(input: exampleText4.instructions)

        XCTAssertEqual(puzzle.part1(), exampleText4.floor)
    }

    func testExample5() throws {

        let puzzle = Puzzle(input: exampleText5.instructions)

        XCTAssertEqual(puzzle.part1(), exampleText5.floor)
    }

    func testExample6() throws {

        let puzzle = Puzzle(input: exampleText6.instructions)

        XCTAssertEqual(puzzle.part1(), exampleText6.floor)
    }

    func testExample7() throws {

        let puzzle = Puzzle(input: exampleText7.instructions)

        XCTAssertEqual(puzzle.part1(), exampleText7.floor)
    }

    func testExample8() throws {

        let puzzle = Puzzle(input: exampleText8.instructions)

        XCTAssertEqual(puzzle.part1(), exampleText8.floor)
    }

    func testExample9() throws {

        let puzzle = Puzzle(input: exampleText9.instructions)

        XCTAssertEqual(puzzle.part1(), exampleText9.floor)
    }

    func testExample10() throws {

        let puzzle = Puzzle(input: exampleText10.instructions)

        XCTAssertEqual(puzzle.part2(), exampleText10.basement)
    }

    func testExample11() throws {

        let puzzle = Puzzle(input: exampleText11.instructions)

        XCTAssertEqual(puzzle.part2(), exampleText11.basement)
    }

    static var allTests = [
        ("testExample1", testExample1),
        ("testExample2", testExample2),
        ("testExample3", testExample3),
        ("testExample4", testExample4),
        ("testExample5", testExample5),
        ("testExample6", testExample6),
        ("testExample7", testExample7),
        ("testExample8", testExample8),
        ("testExample9", testExample9),
        ("testExample10", testExample10),
        ("testExample11", testExample11)
    ]
}
