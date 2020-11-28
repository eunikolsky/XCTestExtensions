//
//  FrameworkTests.swift
//  FrameworkTests
//
//  Created by u on 28.11.20.
//  Copyright © 2020 yes. All rights reserved.
//

import XCTest
import Framework

/// Asserts that `x` is within the given `bounds`.
func XCTAssertWithinBounds <T: Comparable> (_ x: T, _ bounds: ClosedRange<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) {
    XCTAssertTrue(bounds.contains(x), "Expected \(x) to be within the bounds \(bounds): \(message())", file: file, line: line)
}

class FrameworkTests: XCTestCase {
    func testMagicNumberShouldBeWithinCertainBounds() {
        let magicNumber = Framework.magicNumber
        XCTAssertWithinBounds(magicNumber, 8...9000, "The magic number should really be within the specified bounds to work")
    }
}
