//
//  GoogleMapTests.swift
//  GoogleMapTests
//
//  Created by MobioApp on 5/23/17.
//  Copyright © 2017 MobioApp. All rights reserved.
//

import XCTest
@testable import GoogleMap

class GoogleMapTests: XCTestCase {
    
    var converter: Converter!

    override func setUp() {
      super.setUp()
      converter = Converter()
    }

    override func tearDown() {
      converter = nil
      super.tearDown()
    }

    func testConversionForOne() {
      let result = converter.convert(1)
      XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }
}
