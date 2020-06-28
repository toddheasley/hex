#if os(macOS)
import Cocoa

extension NSColor: HexCodable {
    
}

extension HexDecodable where Self: NSColor  {
    
    // MARK: HexDecodable
    public init(hex: Int, alpha: CGFloat = 1.0) {
        self.init(red: hex.red, green: hex.green, blue: hex.blue, alpha: alpha)
    }
}

extension HexEncodable where Self: NSColor {
    
    // MARK: HexEncodable
    public var hex: Int {
        return Int(components: cgColor.components)
    }
}
#endif
