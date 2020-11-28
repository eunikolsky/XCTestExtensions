//
//  XCTestExtensions.swift
//  XCTestExtensions
//
// Created by u on 28.11.20.
// Copyright (c) 2020 yes. All rights reserved.
//

import XCTest

/// Asserts that `x` is within the given `bounds`.
public func XCTAssertWithinBounds <T: Comparable> (_ x: T, _ bounds: ClosedRange<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) {
    XCTAssertTrue(bounds.contains(x), "Expected \(x) to be within the bounds \(bounds): \(message())", file: file, line: line)
}

/// Asserts that the string `s` is at least of the length `minCount`. If `s` is `nil`, the assertion fails.
public func XCTAssertStringHasMinimalCount(_ s: String?, _ minCount: Int, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) throws {
    let s = try XCTUnwrap(s, "Expected string to have at least \(minCount) characters, but it was nil: \(message())", file: file, line: line)
    XCTAssertGreaterThanOrEqual(s.count, minCount, "Expected string \(s) to have at least \(minCount) characters, but it had \(s.count): \(message())", file: file, line: line)
}
