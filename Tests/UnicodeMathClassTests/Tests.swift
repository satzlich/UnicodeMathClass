@testable import UnicodeMathClass
import XCTest

final class Tests: XCTestCase {
    
    func testUnicodeMathClass() {
        XCTAssertEqual(getMathClass("0"), MathClass.Normal)
        XCTAssertEqual(getMathClass("a"), MathClass.Alphabetic)
        XCTAssertEqual(getMathClass("𝔸"), MathClass.Alphabetic)
        XCTAssertEqual(getMathClass("+"), MathClass.Vary)
        XCTAssertEqual(getMathClass("×"), MathClass.Binary)
        XCTAssertEqual(getMathClass("("), MathClass.Opening)
        XCTAssertEqual(getMathClass(","), MathClass.Punctuation)
        XCTAssertEqual(getMathClass("|"), MathClass.Fence)
        XCTAssertEqual(getMathClass("😃"), nil)
    }
}
