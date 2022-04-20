
import Foundation

extension FixedWidthInteger {
  
  public func toHex() -> String {
    
    var hexes : [String] = []
    
    for shift in stride(from: 0, to: self.bitWidth - 4, by: 4) {
      let hex = UInt8((self >> shift) & 0xff)
      hexes.append( String(format: "%02X", hex) )
    }
    return hexes.reversed().joined(separator: "")
  }
}
