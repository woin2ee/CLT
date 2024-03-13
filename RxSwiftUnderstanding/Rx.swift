//
//  Rx.swift
//  RxSwiftUnderstanding
//
//  Created by Jaewon Yun on 3/4/24.
//

import Foundation

/// Swift does not implement abstract methods. This method is used as a runtime check to ensure that methods which intended to be abstract (i.e., they should be implemented in subclasses) are not called directly on the superclass.
func rxAbstractMethod(file: StaticString = #file, line: UInt = #line) -> Swift.Never {
    rxFatalError("Abstract method", file: file, line: line)
}

func rxFatalError(_ lastMessage: @autoclosure () -> String, file: StaticString = #file, line: UInt = #line) -> Swift.Never  {
    fatalError(lastMessage(), file: file, line: line)
}

/// Represents a disposable resource.
public protocol Disposable {
    /// Dispose resource.
    func dispose()
}

/// Represents disposable resource with state tracking.
public protocol Cancelable : Disposable {
    /// Was resource disposed.
    var isDisposed: Bool { get }
}
