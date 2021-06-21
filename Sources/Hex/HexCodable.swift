import Foundation

public typealias HexCodable = HexDecodable & HexEncodable

public protocol HexDecodable {
    init(hex: Int, opacity: Double)
}

extension HexDecodable {
    public init(hex string: String, opacity: Double = 1.0) {
        self.init(hex: string.hex, opacity: opacity)
    }
    
    public init(hex: Int) {
        self.init(hex: hex, opacity: 1.0)
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
