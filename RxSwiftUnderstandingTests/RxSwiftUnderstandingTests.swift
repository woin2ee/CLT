//
//  RxSwiftUnderstandingTests.swift
//  RxSwiftUnderstandingTests
//
//  Created by Jaewon Yun on 3/4/24.
//

import RxSwiftUnderstanding

import XCTest

final class RxSwiftUnderstandingTests: XCTestCase {

    func test_basicRx() {
        
        
        let disposeBag = DisposeBag()
        let observable: Observable<Int> // 초기화는 어떻게...?
        let observer = AnyObserver<Int> { event in
            switch event {
            case .next(let element):
                print(element)
            case .error(let error):
                print(error)
            case .completed:
                print("completed!")
            }
        }
        
        observable
            .subscribe(observer) // abstract method 인데...? `ObserverType.on(_:)` 언제 호출...? ㅇㅅㅇ
            .disposed(by: disposeBag)
        
        
    }
    
//    func test_() {
//        let disposeBag: DisposeBag = .init()
//
//        func double(_ number: Int) -> Observable<Int> {
//            return .just(number * 2)
//        }
//
//        let observable: Observable<Int> = .just(1)
//
//        observable
//            .map { $0 + 1 }
//            .flatMap { double($0) }
//            .subscribe(onNext: {
//                print($0)
//            })
//            .disposed(by: disposeBag)
//
//    }
}
