
import Foundation

extension FixedWidthInteger {
  
  // I'm not sure that *is* nicer, but it's definitely swiftyer
  
  public func toHex() -> String {
    
    stride(from: 0, to: self.bitWidth, by: 4)
      .map { String(format: "%X", UInt8((self >> $0) & 0xf) ) }
      .reversed()
      .joined(separator: "")
  }
}
