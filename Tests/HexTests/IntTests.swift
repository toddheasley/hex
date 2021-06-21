import XCTest
@testable import Hex

final class IntTests: XCTestCase {
    
}

extension IntTests {
    func testRed() {
        XCTAssertEqual(0x000000.red, 0.0)
        XCTAssertEqual(0x333333.red, 0.2)
        XCTAssertEqual(0xCCCCCC.red, 0.8)
        XCTAssertEqual(0xFFFFFF.red, 1.0)
        XCTAssertEqual(0xFF0000.red, 1.0)
        XCTAssertEqual(0x00FF00.red, 0.0)
        XCTAssertEqual(0x0000FF.red, 0.0)
    }
    
    func testGreen() {
        XCTAssertEqual(0x000000.green, 0.0)
        XCTAssertEqual(0x333333.green, 0.2)
        XCTAssertEqual(0xCCCCCC.green, 0.8)
        XCTAssertEqual(0xFFFFFF.green, 1.0)
        XCTAssertEqual(0xFF0000.green, 0.0)
        XCTAssertEqual(0x00FF00.green, 1.0)
        XCTAssertEqual(0x0000FF.green, 0.0)
    }
    
    func testBlue() {
        XCTAssertEqual(0x000000.blue, 0.0)
        XCTAssertEqual(0x333333.blue, 0.2)
        XCTAssertEqual(0xCCCCCC.blue, 0.8)
        XCTAssertEqual(0xFFFFFF.blue, 1.0)
        XCTAssertEqual(0xFF0000.blue, 0.0)
        XCTAssertEqual(0x00FF00.blue, 0.0)
        XCTAssertEqual(0x0000FF.blue, 1.0)
    }
    
    func testComponentsInit() {
        XCTAssertEqual(Int([0.0, 0.0, 0.0, 1.0]), 0x000000)
        XCTAssertEqual(Int([0.0, 1.0]), 0x000000)
        XCTAssertEqual(Int([0.2, 0.2, 0.2, 1.0]), 0x333333)
        XCTAssertEqual(Int([0.2, 1.0]), 0x333333)
        XCTAssertEqual(Int([0.8, 0.8, 0.8, 1.0]), 0xCCCCCC)
        XCTAssertEqual(Int([0.8, 1.0]), 0xCCCCCC)
        XCTAssertEqual(Int([1.0, 1.0, 1.0, 1.0]), 0xFFFFFF)
        XCTAssertEqual(Int([1.0, 1.0]), 0xFFFFFF)
        XCTAssertEqual(Int([1.0, 0.0, 0.0, 1.0]), 0xFF0000)
        XCTAssertEqual(Int([0.0, 1.0, 0.0, 1.0]), 0x00FF00)
        XCTAssertEqual(Int([0.0, 0.0, 1.0, 1.0]), 0x0000FF)
        XCTAssertEqual(Int([]), 0x000000)
        XCTAssertEqual(Int(nil), 0x000000)
        XCTAssertEqual(Int(), 0x000000)
    }
}
