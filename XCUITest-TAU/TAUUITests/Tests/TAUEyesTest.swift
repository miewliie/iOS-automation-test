import Foundation
import XCTest
import EyesXCUI

class TAUEyesTest: TAUUITestBase {
    
    let application = XCUIApplication()
    let sleepDurationInSeconds: UInt32 = 2
    
        func testTAUWithEyesXCUI() {
                        
            // Start the test.
            eyes.open(withApplicationName: "TAU", testName: "Live Demo of Eye XCUI SDK")
            
            // Visual checkpoint #1.
            eyes.check(withTag: "TAU", andSettings: Target.window().timeout(inSeconds: 5))
            
            let clickMeButton = application.buttons["enrollButton"]
            // Click the "Click me!" button.
            clickMeButton.tap()
            // Wait small amount of time to make UI ready after tap.
            sleep(sleepDurationInSeconds)
            
            // Visual checkpoint #2.
            eyes.check(withTag: "Please Enter City", andSettings: Target.window())
            
        }
    
}

