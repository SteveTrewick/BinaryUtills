
import Foundation

extension FixedWidthInteger {
  
  // I'm sure there is a nicer way to do this,
  // me, I like quick and dirty.
  
  public func toHex() -> String {
    
      var hexes : [String] = []
    
      for shift in stride(from: 0, to: self.bitWidth, by: 4) {
      
          let hex = UInt8((self >> shift) & 0xf)
      
          hexes.append( String(format: "%X", hex) )
      }
      return hexes.reversed().joined(separator: "")
  }
}
