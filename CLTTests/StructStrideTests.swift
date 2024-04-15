//
//  StructStrideTests.swift
//  CLTTests
//
//  Created by Jaewon Yun on 4/15/24.
//

import XCTest

final class StructStrideTests: XCTestCase {

    let ELEMENT_COUNT = 1_000_000
    
    func test_machineA() {
        measure {
            let machines = (1...ELEMENT_COUNT).reduce(into: [MachineA]()) { partialResult, number in
                partialResult.append(MachineA(id: number, isRunning: .random(), needsRepair: .random()))
            }
            let faultyMachines = machines.filter(\.needsRepair)
            print(faultyMachines.count)
        }
    }
    
    func test_machineB() {
        measure {
            let machines = (1...ELEMENT_COUNT).reduce(into: [MachineB]()) { partialResult, number in
                partialResult.append(MachineB(isRunning: .random(), id: number, needsRepair: .random()))
            }
            let faultyMachines = machines.filter(\.needsRepair)
            print(faultyMachines.count)
        }
    }
}

struct MachineA {
    let id: Int // 8 byte
    let isRunning: Bool // 1 byte
    let needsRepair: Bool // 1 byte
}

struct MachineB {
    let isRunning: Bool // 1 byte
    let id: Int // 8 byte
    let needsRepair: Bool // 1 byte
}
