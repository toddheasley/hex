import XCTest
import SwiftUI
@testable import Hex

final class ColorTests: XCTestCase {
    
}

extension ColorTests {
    
    // MARK: HexDecodable
    func testHexInit() {
        XCTAssertEqual(Color(hex: 0xFF3300, opacity: 0.5), Color(.displayP3, red: 1.0, green: 0.2, blue: 0.0, opacity: 0.5))
    }
}

extension ColorTests {
    
    // MARK: HexEncodable
    func testHex() {
        XCTAssertEqual(Color(.displayP3, red: 1.0, green: 0.2, blue: 0.0, opacity: 1.0).hex, 0xFF3300)
    }
}
