@testable import UnicodeMath
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

    func testUnicodeMathSymbol() {
        let symbol = MATH_SYMBOLS[0]
        
        XCTAssertEqual(symbol.codepoint, "!")
        XCTAssertEqual(symbol.command, "mathexclam") // not "\\mathexclam"
        XCTAssertEqual(symbol.description, "exclamation mark")

        // LaTeX unicode-math marks it as `\mathclose`
        // Unicode MathClass marks it as `Normal`
        XCTAssertEqual(getMathClass(symbol.codepoint), MathClass.Normal)
    }
}
