import Foundation
import XCTest
import EyesXCUI

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    var config = Configuration()
    var eyes = Eyes()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        // Initialize configuration

        config.apiKey = "oN9iSFJnHtjPDjeVaxe30g40k75hR2Iov2oxdgG1Yik110";
        if #available(iOS 13, *) {
            config.statusBarExists = true
        }
        
        // Initialize the eyes SDK and set up with configuration.
        eyes.configuration = config

    }

    override func tearDown() {
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        // End the test.
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
    }
}
