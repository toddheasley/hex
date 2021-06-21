import SwiftUI

extension Color: HexDecodable {
    
    // MARK: HexDecodable
    public init(hex: Int, opacity: Double) {
        self.init(.displayP3, red: hex.red, green: hex.green, blue: hex.blue, opacity: opacity)
    }
}

extension Color: HexEncodable {
    
    // MARK: HexEncodable
    public var hex: Int {
        return Int(cgColor?.components)
    }
}
