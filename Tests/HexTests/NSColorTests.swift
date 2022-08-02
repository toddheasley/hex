#if canImport(Cocoa)
import XCTest
import Cocoa
@testable import Hex

final class NSColorTests: XCTestCase {
    
}

extension NSColorTests {
    
    // MARK: HexDecodable
    func testHexInit() {
        XCTAssertEqual(NSColor(hex: 0xFF3300, opacity: 0.5), NSColor(red: 1.0, green: 0.2, blue: 0.0, alpha: 0.5))
    }
}

extension NSColorTests {
    
    // MARK: HexEncodable
    func testHex() {
        XCTAssertEqual(NSColor(red: 1.0, green: 0.2, blue: 0.0, alpha: 1.0).hex, 0xFF3300)
    }
}
#endif
