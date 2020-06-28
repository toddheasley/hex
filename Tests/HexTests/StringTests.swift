import XCTest
@testable import Hex

final class StringTests: XCTestCase {
    
}

extension StringTests {
    func testHex() {
        XCTAssertEqual("#FFFFFF".hex, 0xFFFFFF)
        XCTAssertEqual("f3C".hex, 0xFF33CC)
        XCTAssertEqual("#ccc".hex, 0xCCCCCC)
        XCTAssertEqual("3".hex, 0x333333)
        XCTAssertEqual("".hex, 0x0)
    }
    
    func testHexInit() {
        XCTAssertEqual(String(hex: 0xFFFFFF), "#FFFFFF")
        XCTAssertEqual(String(hex: 0xFF), "#0000FF")
        XCTAssertEqual(String(hex: 0x0), "#000000")
    }
}
