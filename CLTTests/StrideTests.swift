import XCTest

final class StrideTests: XCTestCase {

    let ELEMENT_COUNT = 10_000_000
    
    func test_preCheck() {
        // Check 64-bit platforms
        XCTAssertEqual(MemoryLayout<Int>.stride, MemoryLayout<Int64>.stride)
        
        // Check size of strides
        XCTAssertEqual(MemoryLayout<Stride2>.stride, 2)
        XCTAssertEqual(MemoryLayout<Stride4>.stride, 4)
        XCTAssertEqual(MemoryLayout<Stride6>.stride, 6)
        XCTAssertEqual(MemoryLayout<Stride8>.stride, 8)
        XCTAssertEqual(MemoryLayout<Stride10>.stride, 10)
    }
    
    func test_stride2() {
        let stride2Array = [Stride2](repeating: Stride2(), count: ELEMENT_COUNT)
        stride2Array.withUnsafeBytes { bufferPointer in
            print(bufferPointer.count)
        }
        
        measure {
            stride2Array.forEach { element in
                _ = element.a
            }
        }
    }
    
    func test_stride6() {
        let stride6Array = [Stride6](repeating: Stride6(), count: ELEMENT_COUNT)
        stride6Array.withUnsafeBytes { bufferPointer in
            print(bufferPointer.count)
        }
        
        measure {
            stride6Array.forEach { element in
                _ = element.a
            }
        }
    }
    
    func test_stride8() {
        let stride8Array = [Stride8](repeating: Stride8(), count: ELEMENT_COUNT)
        stride8Array.withUnsafeBytes { bufferPointer in
            print(bufferPointer.count)
        }
        
        measure {
            stride8Array.forEach { element in
                _ = element.a
            }
        }
    }
    
    func test_stride10() {
        let stride10Array = [Stride10](repeating: Stride10(), count: ELEMENT_COUNT)
        stride10Array.withUnsafeBytes { bufferPointer in
            print(bufferPointer.count)
        }
        
        measure {
            stride10Array.forEach { element in
                _ = element.a
            }
        }
    }
}

struct Stride2 {
    let a: CShort = 0
}

struct Stride4 {
    let a: CShort = 0
    let b: CShort = 0
}

struct Stride6 {
    let a: CShort = 0
    let b: CShort = 0
    let c: CShort = 0
}

struct Stride8 {
    let a: CShort = 0
    let b: CShort = 0
    let c: CShort = 0
    let d: CShort = 0
}

struct Stride10 {
    let a: CShort = 0
    let b: CShort = 0
    let c: CShort = 0
    let d: CShort = 0
    let e: CShort = 0
}
