import XCTest
@testable import HelloWorld

final class HelloWorldTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(HelloWorld().text, "Hello, World!")
    }
}
