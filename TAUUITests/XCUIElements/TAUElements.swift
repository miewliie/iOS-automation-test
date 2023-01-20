import Foundation
import XCTest

enum TAUScreen: String {
    case welcomeMessage = "welcomMessage"
    case taulogo = "TAUlogo"
    case enterCityLable = "enterCity"
    case cityTextField = "city"
    case enrollButton = "enrollButton"
    case thankYouMessage = "Thanks for Joining!"
    case errorMessage = "Please Enter City"
    
    var element: XCUIElement {
        switch self {
        case .welcomeMessage, .enterCityLable, .thankYouMessage, .errorMessage:
            return XCUIApplication().staticTexts[self.rawValue]
        case .cityTextField:
            return XCUIApplication().textFields[self.rawValue]
        case .enrollButton:
            return XCUIApplication().buttons[self.rawValue]
        case .taulogo:
            if UIDevice.current.userInterfaceIdiom == .pad {
                return XCUIApplication().images["iPad xx"]
            } else {
                return XCUIApplication().images[self.rawValue]
            }
        }
    }
}
