#if os(macOS)
import Cocoa

extension NSColor: HexCodable {
    
}

extension HexDecodable where Self: NSColor {
    
    // MARK: HexDecodable
    public init(hex: Int, opacity: Double) {
        self.init(red: hex.red, green: hex.green, blue: hex.blue, alpha: opacity)
    }
}

extension HexEncodable where Self: NSColor {
    
    // MARK: HexEncodable
    public var hex: Int {
        return Int(cgColor.components)
    }
}
#endif
