#if os(iOS) || os(watchOS) || os(tvOS)
import UIKit

extension UIColor: HexCodable {
    
}

extension HexDecodable where Self: UIColor  {
    
    // MARK: HexDecodable
    public init(hex: Int, alpha: CGFloat = 1.0) {
        self.init(red: hex.red, green: hex.green, blue: hex.blue, alpha: alpha)
    }
}

extension HexEncodable where Self: UIColor {
    
    // MARK: HexEncodable
    public var hex: Int {
        return Int(components: cgColor.components)
    }
}
#endif
