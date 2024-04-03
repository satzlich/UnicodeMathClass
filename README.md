# Swift UnicodeMath

Swift equivalent of [typst/unicode-math-class] plus [latex3/unicode-math/unicode-math-table.tex].

* [typst/unicode-math-class]: Determine the Unicode class of a mathematical character.
* [latex3/unicode-math/unicode-math-table.tex]: Define Unicode math symbols, associated LaTeX commands, etc.

## Example

The `class(...)` function of [typst/unicode-math-class] is here renamed as `getMathClass(...)`.

```swift
XCTAssertEqual(getMathClass("0"), MathClass.Normal)
XCTAssertEqual(getMathClass("a"), MathClass.Alphabetic)
XCTAssertEqual(getMathClass("𝔸"), MathClass.Alphabetic)
XCTAssertEqual(getMathClass("+"), MathClass.Vary)
XCTAssertEqual(getMathClass("×"), MathClass.Binary)
XCTAssertEqual(getMathClass("("), MathClass.Opening)
XCTAssertEqual(getMathClass(","), MathClass.Punctuation)
XCTAssertEqual(getMathClass("|"), MathClass.Fence)
XCTAssertEqual(getMathClass("😃"), nil)
```

For more details, see [Section 5.1 of Unicode Technical Report #25][report]
and [this data file][data].


The symbols defined in [latex3/unicode-math/unicode-math-table.tex] are available as `MATH_SYMBOLS`.

```swift
let symbol = MATH_SYMBOLS[0]

XCTAssertEqual(symbol.codepoint, "!")
XCTAssertEqual(symbol.command, "mathexclam") // not "\\mathexclam"
XCTAssertEqual(symbol.description, "exclamation mark")

// LaTeX unicode-math marks it as `\mathclose`
// Unicode MathClass marks it as `Normal`
XCTAssertEqual(getMathClass(symbol.codepoint), MathClass.Normal)
```

## License
This package is dual-licensed under the MIT and Apache 2.0 licenses.

[typst/unicode-math-class]: https://github.com/typst/unicode-math-class
[latex3/unicode-math/unicode-math-table.tex]: https://github.com/latex3/unicode-math/blob/master/unicode-math-table.tex
[report]: https://www.unicode.org/reports/tr25/tr25-15.pdf
[data]: https://www.unicode.org/Public/math/revision-15/MathClass-15.txt
