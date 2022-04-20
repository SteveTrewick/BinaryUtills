
import Foundation

extension FixedWidthInteger {
  
  public func toHex() -> String {
    
    var hexes : [String] = []
    
    for shift in stride(from: 0, to: self.bitWidth, by: 4) {
      let hex = UInt8((self >> shift) & 0xf)
      hexes.append( String(format: "%X", hex) )
    }
    return hexes.reversed().joined(separator: "")
  }
}
