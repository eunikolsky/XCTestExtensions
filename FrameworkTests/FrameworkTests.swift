//
//  FrameworkTests.swift
//  FrameworkTests
//
//  Created by u on 28.11.20.
//  Copyright © 2020 yes. All rights reserved.
//

import Framework
import XCTest
import XCTestExtensions

/// Asserts that the string `s` is at least of the length `minCount`. If `s` is `nil`, the assertion fails.
func XCTAssertStringHasMinimalCount(_ s: String?, _ minCount: Int, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) throws {
    let s = try XCTUnwrap(s, "Expected string to have at least \(minCount) characters, but it was nil: \(message())", file: file, line: line)
    XCTAssertGreaterThanOrEqual(s.count, minCount, "Expected string \(s) to have at least \(minCount) characters, but it had \(s.count): \(message())", file: file, line: line)
}

class FrameworkTests: XCTestCase {
    func testMagicNumberShouldBeWithinCertainBounds() {
        let magicNumber = Framework.magicNumber
        XCTAssertWithinBounds(magicNumber, 8...9000, "The magic number should really be within the specified bounds to work")
    }

    func testMagicStringShouldHaveMinimalLength() throws {
        let magicString = Framework.magicString
        try XCTAssertStringHasMinimalCount(magicString, 3)
    }
}
