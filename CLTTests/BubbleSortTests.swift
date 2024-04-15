//
//  BubbleSortTests.swift
//  CLTTests
//
//  Created by Jaewon Yun on 4/15/24.
//

import XCTest

final class BubbleSortTests: XCTestCase {

    let ELEMENT_COUNT = 20_000
    
    func test_bubbleSort_a() {
        var array: [Int] = []
        (1...ELEMENT_COUNT).shuffled().forEach { array.append($0) }
        
        measure {
            bubbleSort_a(&array)
        }
    }
    
    func test_bubbleSort_b() {
        var array: [Int] = []
        (1...ELEMENT_COUNT).shuffled().forEach { array.append($0) }
        
        measure {
            bubbleSort_b(&array)
        }
    }

}

func bubbleSort_a<T: Comparable>(_ array: inout [T]) {
    guard !array.isEmpty else { return }

    for n in 1..<array.count {
        for i in 1...(array.count - n) {
            if array[i - 1] > array[i] {
                array.swapAt(i - 1, i)
            }
        }
    }
}

func bubbleSort_b<T: Comparable>(_ array: inout [T]) {
    guard !array.isEmpty else { return }

    array.withUnsafeMutableBufferPointer { buffer in
        for n in 1..<buffer.count {
            for i in 1...(buffer.count - n) {
                if buffer[i - 1] > buffer[i] {
                    buffer.swapAt(i - 1, i)
                }
            }
        }
    }
}
