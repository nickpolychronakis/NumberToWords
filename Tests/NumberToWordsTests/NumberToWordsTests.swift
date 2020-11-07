import XCTest
@testable import NumberToWords

final class NumberToWordsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(NumberToWords().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
