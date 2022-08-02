#if canImport(UIKit)
import UIKit

extension UIColor: HexCodable {
    
}

extension HexDecodable where Self: UIColor {
    
    // MARK: HexDecodable
    public init(hex: Int, opacity: Double) {
        self.init(red: hex.red, green: hex.green, blue: hex.blue, alpha: opacity)
    }
}

extension HexEncodable where Self: UIColor {
    
    // MARK: HexEncodable
    public var hex: Int {
        return Int(cgColor.components)
    }
}
#endif
