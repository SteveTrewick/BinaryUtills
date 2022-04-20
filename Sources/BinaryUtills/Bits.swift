
import Foundation


extension FixedWidthInteger {
  
  
  public func toBits() -> [Int] {
    
    Array (
      (0..<self.bitWidth).map { Int((self >> $0) & 1) }
                         .reversed()
    )
  }
  
  
  public func toBitString() -> String {
    
    self.toBits().map { String($0) }
                 .joined(separator: "")
  }
  
}
