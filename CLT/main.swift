import Foundation
import RxCocoa
import RxRelay
import RxSwift

var agePointer = UnsafeMutablePointer<Int>.allocate(capacity: 1)
defer { agePointer.deallocate() }

agePointer.initialize(to: 10)
agePointer.advanced(by: 10000).initialize(to: 20)

print(agePointer.pointee)
print(agePointer.advanced(by: 10000).pointee)



