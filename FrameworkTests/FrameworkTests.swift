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

class FrameworkTests: XCTestCase {
    func testMagicNumberShouldBeWithinCertainBounds() {
        let magicNumber = Framework.magicNumber
        XCTAssertWithinBounds(magicNumber, 8...9000, "The magic number should really be within the specified bounds to work")
    }
}
