import Foundation
import CoreGraphics

public typealias HexCodable = HexDecodable & HexEncodable

public protocol HexDecodable {
    init(hex: Int, alpha: CGFloat)
}

extension HexDecodable {
    public init(hexString: String) {
        self.init(hex: hexString.hex)
    }
    
    public init(hex: Int) {
        self.init(hex: hex, alpha: 1.0)
    }
}

public protocol HexEncodable {
    var hex: Int {
        get
    }
}

extension HexEncodable {
    public var hexString: String {
        return String(hex: hex)
    }
}
