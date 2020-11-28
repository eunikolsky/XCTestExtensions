//
//  FrameworkTests.swift
//  FrameworkTests
//
//  Created by u on 28.11.20.
//  Copyright © 2020 yes. All rights reserved.
//

import XCTest
import Framework

class FrameworkTests: XCTestCase {
    func testMagicNumberShouldBeWithinCertainBounds() {
        let magicNumber = Framework.magicNumber
        XCTAssertGreaterThanOrEqual(magicNumber, 8)
        XCTAssertLessThanOrEqual(magicNumber, 9000)
    }
}
