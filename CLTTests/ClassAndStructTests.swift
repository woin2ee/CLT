//
//  ClassAndStructTests.swift
//  CLTTests
//
//  Created by Jaewon Yun on 3/13/24.
//

import XCTest

let BASE_REPEAT_COUNT = 1_000_000

final class ClassAndStructAllocationTests: XCTestCase {

    let REPEAT_COUNT = BASE_REPEAT_COUNT
    
    func test_measureAllocationPerformanceForSimpleClass() {
        measure {
            (1...REPEAT_COUNT).forEach { i in
                let ref = SimpleClass(id: i)
            }
        }
    }
    
    func test_measureAllocationPerformanceForSimpleStruct() {
        measure {
            (1...REPEAT_COUNT).forEach { i in
                let ref = SimpleStruct(id: i)
            }
        }
    }
    
    func test_measureAllocationPerformanceForNormalClass() {
        let sampleData = "SampleDataString".data(using: .utf8)!
        
        measure {
            (1...REPEAT_COUNT).forEach { i in
                let ref = NormalClass(id: UUID(), data: sampleData, name: "\(i)", alias: "\(i)", userInfo: [:])
            }
        }
    }
    
    func test_measureAllocationPerformanceForNormalStruct() {
        let sampleData = "SampleDataString".data(using: .utf8)!
        
        measure {
            (1...REPEAT_COUNT).forEach { i in
                let ref = NormalStruct(id: UUID(), data: sampleData, name: "\(i)", alias: "\(i)", userInfo: [:])
            }
        }
    }
    
    func test_measureAllocationPerformanceForHeavyClass() {
        let largeData = Data(count: 1024 * 1024 * 1024 * 1024)
        
        measure {
            (1...REPEAT_COUNT).forEach { i in
                let ref = HeavyClass(id: UUID(), data: largeData, name: "\(i)", alias: "\(i)", userInfo: [:])
            }
        }
    }
    
    func test_measureAllocationPerformanceForHeavyStruct() {
        let largeData = Data(count: 1024 * 1024 * 1024 * 1024)
        
        measure {
            (1...REPEAT_COUNT).forEach { i in
                let ref = HeavyStruct(id: UUID(), data: largeData, name: "\(i)", alias: "\(i)", userInfo: [:])
            }
        }
    }
    
    func test_measureAllocationPerformanceForHeaviestClass() {
        let p1: Point = Point(x: 0, y: 0)
        let p2: Point = Point(x: 0, y: 0)
        let p3: Point = Point(x: 0, y: 0)
        let p4: Point = Point(x: 0, y: 0)
        let p5: Point = Point(x: 0, y: 0)
        let p6: Point = Point(x: 0, y: 0)
        let p7: Point = Point(x: 0, y: 0)
        let p8: Point = Point(x: 0, y: 0)
        let p9: Point = Point(x: 0, y: 0)
        let p10: Point = Point(x: 0, y: 0)
        let p11: Point = Point(x: 0, y: 0)
        let p12: Point = Point(x: 0, y: 0)
        let p13: Point = Point(x: 0, y: 0)
        let p14: Point = Point(x: 0, y: 0)
        let p15: Point = Point(x: 0, y: 0)
        let p16: Point = Point(x: 0, y: 0)
        let p17: Point = Point(x: 0, y: 0)
        let p18: Point = Point(x: 0, y: 0)
        let p19: Point = Point(x: 0, y: 0)
        let p20: Point = Point(x: 0, y: 0)
        
        let size = MemoryLayout.size(ofValue: HeaviestClass(p1: p1, p2: p2, p3: p3, p4: p4, p5: p5, p6: p6, p7: p7, p8: p8, p9: p9, p10: p10, p11: p11, p12: p12, p13: p13, p14: p14, p15: p15, p16: p16, p17: p17, p18: p18, p19: p19, p20: p20))
        print(size) // 8
        
        measure {
            (1...REPEAT_COUNT).forEach { i in
                let ref = HeaviestClass(p1: p1, p2: p2, p3: p3, p4: p4, p5: p5, p6: p6, p7: p7, p8: p8, p9: p9, p10: p10, p11: p11, p12: p12, p13: p13, p14: p14, p15: p15, p16: p16, p17: p17, p18: p18, p19: p19, p20: p20)
            }
        }
    }
    
    func test_measureAllocationPerformanceForHeaviestStruct() {
        let p1: Point = Point(x: 0, y: 0)
        let p2: Point = Point(x: 0, y: 0)
        let p3: Point = Point(x: 0, y: 0)
        let p4: Point = Point(x: 0, y: 0)
        let p5: Point = Point(x: 0, y: 0)
        let p6: Point = Point(x: 0, y: 0)
        let p7: Point = Point(x: 0, y: 0)
        let p8: Point = Point(x: 0, y: 0)
        let p9: Point = Point(x: 0, y: 0)
        let p10: Point = Point(x: 0, y: 0)
        let p11: Point = Point(x: 0, y: 0)
        let p12: Point = Point(x: 0, y: 0)
        let p13: Point = Point(x: 0, y: 0)
        let p14: Point = Point(x: 0, y: 0)
        let p15: Point = Point(x: 0, y: 0)
        let p16: Point = Point(x: 0, y: 0)
        let p17: Point = Point(x: 0, y: 0)
        let p18: Point = Point(x: 0, y: 0)
        let p19: Point = Point(x: 0, y: 0)
        let p20: Point = Point(x: 0, y: 0)
        
        let size = MemoryLayout.size(ofValue: HeaviestStruct(p1: p1, p2: p2, p3: p3, p4: p4, p5: p5, p6: p6, p7: p7, p8: p8, p9: p9, p10: p10, p11: p11, p12: p12, p13: p13, p14: p14, p15: p15, p16: p16, p17: p17, p18: p18, p19: p19, p20: p20))
        print(size) // 160
        
        measure {
            (1...REPEAT_COUNT).forEach { i in
                let ref = HeaviestStruct(p1: p1, p2: p2, p3: p3, p4: p4, p5: p5, p6: p6, p7: p7, p8: p8, p9: p9, p10: p10, p11: p11, p12: p12, p13: p13, p14: p14, p15: p15, p16: p16, p17: p17, p18: p18, p19: p19, p20: p20)
            }
        }
    }
    
    func test_measureAllocationPerformanceForNonReferenceHeaviestStruct() {
        let size = MemoryLayout.size(ofValue: NonReferenceHeaviestStruct(p1: 0, p2: 0, p3: 0, p4: 0, p5: 0, p6: 0, p7: 0, p8: 0, p9: 0, p10: 0, p11: 0, p12: 0, p13: 0, p14: 0, p15: 0, p16: 0, p17: 0, p18: 0, p19: 0, p20: 0))
        print(size) // 160
        
        measure {
            (1...REPEAT_COUNT).forEach { i in
                let ref = NonReferenceHeaviestStruct(p1: 0, p2: 0, p3: 0, p4: 0, p5: 0, p6: 0, p7: 0, p8: 0, p9: 0, p10: 0, p11: 0, p12: 0, p13: 0, p14: 0, p15: 0, p16: 0, p17: 0, p18: 0, p19: 0, p20: 0)
            }
        }
    }
}

final class ClassAndStructMethodDispatchTests: XCTestCase {
    
    let REPEAT_COUNT = BASE_REPEAT_COUNT * 10
    
    func test_measureMethodDispatchPerformanceForNonFinalClass() {
        var nonFinalClassList: [SimpleClass] = []
        (1...100).forEach { _ in
            nonFinalClassList.append(Simple2DerivedClass(id: 0))
        }
        (101...200).forEach { _ in
            nonFinalClassList.append(Simple4DerivedClass(id: 0))
        }
        (201...REPEAT_COUNT).forEach { _ in
            nonFinalClassList.append(Simple5DerivedClass(id: 0))
        }
        
        measure {
            nonFinalClassList.forEach { nonFinalClass in
                let ref = nonFinalClass.getID()
            }
        }
    }
    
    func test_measureMethodDispatchPerformanceForFinalClass() {
        var finalClassList: [SimpleFinalClass] = []
        (1...REPEAT_COUNT).forEach { _ in
            finalClassList.append(SimpleFinalClass(id: 0))
        }
        
        measure {
            finalClassList.forEach { finalClass in
                let ref = finalClass.getID()
            }
        }
    }
    
    func test_measureMethodDispatchPerformanceForStruct() {
        var structList: [SimpleStruct] = []
        (1...REPEAT_COUNT).forEach { _ in
            structList.append(SimpleStruct(id: 0))
        }
        
        measure {
            structList.forEach { `struct` in
                let ref = `struct`.getID()
            }
        }
    }
}

final class ClassAndStructReferenceCountingOrCopyTests: XCTestCase {
    
    let REPEAT_COUNT = BASE_REPEAT_COUNT
    
    // - Simple ------------------------------------------------------------------------
    
    // Average: 0.284 sec
    func test_measureReferenceCountingOrCopyPerformanceForSimpleClass() {
        let simpleClass = SimpleClass(id: 0)
        
        let size = MemoryLayout.size(ofValue: simpleClass)
        print(size) // 8
        
        measure {
            (1...REPEAT_COUNT).forEach { _ in
                let ref = simpleClass
            }
        }
    }
    
    // Average: 0.275 sec
    func test_measureReferenceCountingOrCopyPerformanceForSimpleStruct() {
        let simpleStruct = SimpleStruct(id: 0)
        
        let size = MemoryLayout.size(ofValue: simpleStruct)
        print(size) // 8
        
        measure {
            (1...REPEAT_COUNT).forEach { _ in
                let ref = simpleStruct
            }
        }
    }
    
    // - Normal ------------------------------------------------------------------------
    
    // Average: 0.280 sec
    func test_measureReferenceCountingOrCopyPerformanceForNormalClass() {
        let normalClass = NormalClass(id: UUID(), data: Data(), name: "name", alias: "alias", userInfo: [:])
        
        let size = MemoryLayout.size(ofValue: normalClass)
        print(size) // 8
        
        measure {
            (1...REPEAT_COUNT).forEach { _ in
                let ref = normalClass
            }
        }
    }
    
    // Average: 0.315 sec
    func test_measureReferenceCountingOrCopyPerformanceForNormalStruct() {
        let normalStruct = NormalStruct(id: UUID(), data: Data(), name: "name", alias: "alias", userInfo: [:])
        
        let size = MemoryLayout.size(ofValue: normalStruct)
        print(size) // 88
        
        measure {
            (1...REPEAT_COUNT).forEach { _ in
                let ref = normalStruct
            }
        }
    }
    
    // - Heaviest ----------------------------------------------------------------------
    
    // Average: 0.281 sec
    func test_measureReferenceCountingOrCopyPerformanceForHeaviestClass() {
        let p1: Point = Point(x: 0, y: 0)
        let p2: Point = Point(x: 0, y: 0)
        let p3: Point = Point(x: 0, y: 0)
        let p4: Point = Point(x: 0, y: 0)
        let p5: Point = Point(x: 0, y: 0)
        let p6: Point = Point(x: 0, y: 0)
        let p7: Point = Point(x: 0, y: 0)
        let p8: Point = Point(x: 0, y: 0)
        let p9: Point = Point(x: 0, y: 0)
        let p10: Point = Point(x: 0, y: 0)
        let p11: Point = Point(x: 0, y: 0)
        let p12: Point = Point(x: 0, y: 0)
        let p13: Point = Point(x: 0, y: 0)
        let p14: Point = Point(x: 0, y: 0)
        let p15: Point = Point(x: 0, y: 0)
        let p16: Point = Point(x: 0, y: 0)
        let p17: Point = Point(x: 0, y: 0)
        let p18: Point = Point(x: 0, y: 0)
        let p19: Point = Point(x: 0, y: 0)
        let p20: Point = Point(x: 0, y: 0)
        
        let heaviestClass = HeaviestClass(p1: p1, p2: p2, p3: p3, p4: p4, p5: p5, p6: p6, p7: p7, p8: p8, p9: p9, p10: p10, p11: p11, p12: p12, p13: p13, p14: p14, p15: p15, p16: p16, p17: p17, p18: p18, p19: p19, p20: p20)
        
        let size = MemoryLayout.size(ofValue: heaviestClass)
        print(size) // 8
        
        measure {
            (1...REPEAT_COUNT).forEach { _ in
                let ref = heaviestClass
            }
        }
    }
    
    // Average: 0.365 sec
    func test_measureReferenceCountingOrCopyPerformanceForHeaviestStruct() {
        let p1: Point = Point(x: 0, y: 0)
        let p2: Point = Point(x: 0, y: 0)
        let p3: Point = Point(x: 0, y: 0)
        let p4: Point = Point(x: 0, y: 0)
        let p5: Point = Point(x: 0, y: 0)
        let p6: Point = Point(x: 0, y: 0)
        let p7: Point = Point(x: 0, y: 0)
        let p8: Point = Point(x: 0, y: 0)
        let p9: Point = Point(x: 0, y: 0)
        let p10: Point = Point(x: 0, y: 0)
        let p11: Point = Point(x: 0, y: 0)
        let p12: Point = Point(x: 0, y: 0)
        let p13: Point = Point(x: 0, y: 0)
        let p14: Point = Point(x: 0, y: 0)
        let p15: Point = Point(x: 0, y: 0)
        let p16: Point = Point(x: 0, y: 0)
        let p17: Point = Point(x: 0, y: 0)
        let p18: Point = Point(x: 0, y: 0)
        let p19: Point = Point(x: 0, y: 0)
        let p20: Point = Point(x: 0, y: 0)
        
        let heaviestStruct = HeaviestStruct(p1: p1, p2: p2, p3: p3, p4: p4, p5: p5, p6: p6, p7: p7, p8: p8, p9: p9, p10: p10, p11: p11, p12: p12, p13: p13, p14: p14, p15: p15, p16: p16, p17: p17, p18: p18, p19: p19, p20: p20)
        
        let size = MemoryLayout.size(ofValue: heaviestStruct)
        print(size) // 160
        
        measure {
            (1...REPEAT_COUNT).forEach { _ in
                let ref = heaviestStruct
            }
        }
    }
    
    // Average: 0.274 sec
    func test_measureReferenceCountingOrCopyPerformanceForNonReferenceHeaviestStruct() {
        let nonReferenceStruct = NonReferenceHeaviestStruct(p1: 0, p2: 0, p3: 0, p4: 0, p5: 0, p6: 0, p7: 0, p8: 0, p9: 0, p10: 0, p11: 0, p12: 0, p13: 0, p14: 0, p15: 0, p16: 0, p17: 0, p18: 0, p19: 0, p20: 0)
        
        let size = MemoryLayout.size(ofValue: nonReferenceStruct)
        print(size) // 160
        
        measure {
            (1...REPEAT_COUNT).forEach { _ in
                let ref = nonReferenceStruct
            }
        }
    }
}

// MARK: Class

class SimpleClass {
    var id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    func getID() -> Int {
        return id
    }
}

class Simple1DerivedClass: SimpleClass {
    override func getID() -> Int {
        return id
    }
}
class Simple2DerivedClass: Simple1DerivedClass {
    override func getID() -> Int {
        return id
    }
}
class Simple3DerivedClass: Simple2DerivedClass {
    override func getID() -> Int {
        return id
    }
}
class Simple4DerivedClass: Simple3DerivedClass {
    override func getID() -> Int {
        return id
    }
}
class Simple5DerivedClass: Simple4DerivedClass {
    override func getID() -> Int {
        return id
    }
}
class Simple6DerivedClass: Simple5DerivedClass {
    override func getID() -> Int {
        return id
    }
}

final class SimpleFinalClass {
    let id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    func getID() -> Int {
        return id
    }
}

class HeavyClass {
    let id: UUID
    var data: Data
    var name: String
    var alias: String?
    var thumbnailData: Data?
    var userInfo: [String: Any]
    
    init(id: UUID, data: Data, name: String, alias: String? = nil, thumbnailData: Data? = nil, userInfo: [String : Any]) {
        self.id = id
        self.data = data
        self.name = name
        self.alias = alias
        self.thumbnailData = thumbnailData
        self.userInfo = userInfo
    }
}

typealias NormalClass = HeavyClass

class HeaviestClass {
    var p1: Point
    var p2: Point
    var p3: Point
    var p4: Point
    var p5: Point
    var p6: Point
    var p7: Point
    var p8: Point
    var p9: Point
    var p10: Point
    var p11: Point
    var p12: Point
    var p13: Point
    var p14: Point
    var p15: Point
    var p16: Point
    var p17: Point
    var p18: Point
    var p19: Point
    var p20: Point
    
    init(p1: Point, p2: Point, p3: Point, p4: Point, p5: Point, p6: Point, p7: Point, p8: Point, p9: Point, p10: Point, p11: Point, p12: Point, p13: Point, p14: Point, p15: Point, p16: Point, p17: Point, p18: Point, p19: Point, p20: Point) {
        self.p1 = p1
        self.p2 = p2
        self.p3 = p3
        self.p4 = p4
        self.p5 = p5
        self.p6 = p6
        self.p7 = p7
        self.p8 = p8
        self.p9 = p9
        self.p10 = p10
        self.p11 = p11
        self.p12 = p12
        self.p13 = p13
        self.p14 = p14
        self.p15 = p15
        self.p16 = p16
        self.p17 = p17
        self.p18 = p18
        self.p19 = p19
        self.p20 = p20
    }
}

// MARK: Struct

struct SimpleStruct {
    let id: Int
    
    func getID() -> Int {
        return id
    }
}

struct HeavyStruct {
    let id: UUID
    var data: Data
    var name: String
    var alias: String?
    var thumbnailData: Data?
    var userInfo: [String: Any]
}

typealias NormalStruct = HeavyStruct

struct HeaviestStruct {
    var p1: Point
    var p2: Point
    var p3: Point
    var p4: Point
    var p5: Point
    var p6: Point
    var p7: Point
    var p8: Point
    var p9: Point
    var p10: Point
    var p11: Point
    var p12: Point
    var p13: Point
    var p14: Point
    var p15: Point
    var p16: Point
    var p17: Point
    var p18: Point
    var p19: Point
    var p20: Point
}

struct NonReferenceHeaviestStruct {
    var p1: Int
    var p2: Int
    var p3: Int
    var p4: Int
    var p5: Int
    var p6: Int
    var p7: Int
    var p8: Int
    var p9: Int
    var p10: Int
    var p11: Int
    var p12: Int
    var p13: Int
    var p14: Int
    var p15: Int
    var p16: Int
    var p17: Int
    var p18: Int
    var p19: Int
    var p20: Int
}

// MARK: Helpers

class Point {
    var x: CGFloat
    var y: CGFloat
    
    init(x: CGFloat, y: CGFloat) {
        self.x = x
        self.y = y
    }
}
