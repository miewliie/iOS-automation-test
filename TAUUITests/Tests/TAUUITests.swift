//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by miewliie on 19/1/2566 BE.
//  Copyright © 2566 BE Shashikant Jagtap. All rights reserved.
//

import XCTest

final class TAUUITests: TAUUITestBase {

    func testAllElementsOnMainScreen() throws {
        app.staticTexts["welcomeMessage"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["enterCity"]/*[[".staticTexts[\"Enter Your City \"]",".staticTexts[\"enterCity\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.textFields["city"].tap()
        app.staticTexts["enterCity"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Enroll"]/*[[".buttons[\"Enroll\"].staticTexts[\"Enroll\"]",".buttons[\"enrollButton\"].staticTexts[\"Enroll\"]",".staticTexts[\"Enroll\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
        
    }
    
    func testThankYouMessage() {
        let app = XCUIApplication()
        app.staticTexts["welcomeMessage"].tap()
        XCUIApplication().textFields["city"].tap()
        XCUIApplication().textFields["city"].typeText("London")
        XCUIApplication().staticTexts["enterCity"].tap()
        XCUIApplication().buttons["enrollButton"].tap()
        XCTAssertTrue(XCUIApplication().staticTexts["Thanks for Joining!"].exists)
    }
}
