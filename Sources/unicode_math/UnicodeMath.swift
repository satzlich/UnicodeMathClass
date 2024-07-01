

/// Math symbol defined in LaTeX unicode-math package.
public class MathSymbol {
    public let codepoint: UnicodeScalar

    /// Command without backslash. E.g. `\neg` is stored as `neg`
    public let command: String
    public let description: String

    init(_ codepoint: UnicodeScalar, _ command: String, _ description: String) {
        self.codepoint = codepoint
        self.command = command
        self.description = description
    }
}
