#if canImport(UIKit)
import XCTest
import UIKit
@testable import Hex

final class UIColorTests: XCTestCase {
    
}

extension UIColorTests {
    
    // MARK: HexDecodable
    func testHexInit() {
        XCTAssertEqual(UIColor(hex: 0xFF3300, opacity: 0.5), UIColor(red: 1.0, green: 0.2, blue: 0.0, alpha: 0.5))
    }
}

extension UIColorTests {
    
    // MARK: HexEncodable
    func testHex() {
        XCTAssertEqual(UIColor(red: 1.0, green: 0.2, blue: 0.0, alpha: 1.0).hex, 0xFF3300)
    }
}
#endif
