
/// The revision of the used data file.
public let REVISION = 15

/// Classification of a mathematical character.
public enum MathClass: UInt8, CaseIterable {
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
}

/// Determine the class of a mathematical character.
///
/// Returns `nil` if the character isn't part of any class.
@inline(__always)
public func getMathClass(_ ch: UnicodeScalar) -> MathClass? {
    CLASSES[ch]
}
