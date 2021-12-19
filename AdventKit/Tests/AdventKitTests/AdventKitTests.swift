@testable import AdventKit
import XCTest

final class AdventKitTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(AdventKit().text, "Hello, World!")
    }

    func testGetDimensionsArray() throws {
        XCTAssertEqual(AdventKit().getDimensionsArray(input: "2x3x4"), [2, 3, 4])
    }

    func testGetLinesAsList() throws {
        XCTAssertEqual(AdventKit().getLinesAsList(input: "2x3x4\n3x4x5"), ["2x3x4", "3x4x5"])
    }
}
