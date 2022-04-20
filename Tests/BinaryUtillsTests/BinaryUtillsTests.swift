import XCTest
@testable import BinaryUtills

final class BinaryUtillsTests: XCTestCase {
  
  func testHexExtension() {
    
    let u8  : UInt8  = 0xef
    let u16 : UInt16 = 0xbeef
    let u32 : UInt32 = 0xdeadbeef
    let u64 : UInt64 = 0xdeadbeefcafef00d
    
    XCTAssert( u8.toHex()  == "EF")
    XCTAssert( u16.toHex() == "BEEF")
    XCTAssert( u32.toHex() == "DEADBEEF")
    XCTAssert( u64.toHex() == "DEADBEEFCAFEF00D")
  }
}
