
/// The revision of the used data file.
public let REVISION = 15

/// Classification of a mathematical character.
public enum MathClass: UInt8, Comparable, CaseIterable {
    case Normal
    case Alphabetic
    case Binary
    case Closing
    case Diacritic
    case Fence
    case GlyphPart
    case Large
    case Opening
    case Punctuation
    case Relation
    case Space
    case Unary
    case Vary
    case Special

    public static func < (lhs: MathClass, rhs: MathClass) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}

/// Determine the class of a mathematical character.
///
/// Returns `nil` if the character isn't part of any class.
@inlinable
public func math_class(_ codepoint: UnicodeScalar) -> MathClass? {
    MATH_CLASSES[codepoint]
}
