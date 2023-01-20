//
//  BDDTest.swift
//  TAUUITests
//
//  Created by miewliie on 19/1/2566 BE.
//  Copyright © 2566 BE Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BDDTest: TAUUITestBase {
    func testThankYouMessageInBDStyle(){
        givenAppIsReady()
        whenIEnter(city: "London")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}

