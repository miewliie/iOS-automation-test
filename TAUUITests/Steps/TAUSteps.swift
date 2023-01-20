import Foundation
import XCTest

extension TAUUITestBase {
    func givenAppIsReady(){
        XCTContext.runActivity(named: "Given App is Ready") { _ in
            XCTAssertTrue(TAUScreen.enrollButton.element.exists)
        }
    }
    
    func whenIEnter(city: String){
        XCTContext.runActivity(named: "When I enter city London") { _ in
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText(city)
            TAUScreen.enterCityLable.element.tap()
        }
    }
    
    func whenIEnrolled(){
        XCTContext.runActivity(named: "When I Enrolled") { _ in
            TAUScreen.enrollButton.element.tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I Should See Thanks message") { _ in
            XCTAssertTrue(TAUScreen.thankYouMessage.element.exists)
        }
    }
}


