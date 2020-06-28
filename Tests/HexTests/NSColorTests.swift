#if os(macOS)
import XCTest
import Cocoa
@testable import Hex

final class NSColorTests: XCTestCase {
    
}

extension NSColorTests {
    
    // MARK: RGBHexDecodable
    func testHexInit() {
        XCTAssertEqual(NSColor(hex: 0xFF3300, alpha: 1.0), NSColor(red: 1.0, green: 0.2, blue: 0.0, alpha: 1.0))
    }
}

extension NSColorTests {
    
    // MARK: RGBHexEncodable
    func testHex() {
        XCTAssertEqual(NSColor(red: 1.0, green: 0.2, blue: 0.0, alpha: 1.0).hex, 0xFF3300)
    }
}
#endif
