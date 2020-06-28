#if os(iOS) || os(watchOS) || os(tvOS)
import XCTest
import UIKit
@testable import Hex

final class UIColorTests: XCTestCase {
    
}

extension UIColorTests {
    
    // MARK: RGBHexDecodable
    func testHexInit() {
        XCTAssertEqual(UIColor(hex: 0xFF3300, alpha: 1.0), UIColor(red: 1.0, green: 0.2, blue: 0.0, alpha: 1.0))
    }
}

extension UIColorTests {
    
    // MARK: RGBHexEncodable
    func testHex() {
        XCTAssertEqual(UIColor(red: 1.0, green: 0.2, blue: 0.0, alpha: 1.0).hex, 0xFF3300)
    }
}
#endif
