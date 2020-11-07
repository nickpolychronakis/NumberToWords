import XCTest
@testable import NumberToWords

final class StringConvertNumberToWordsTests: XCTestCase {
    static var allTests = [
        ("testStringNumberToWords", testStringNumberToWords),
    ]
    
    // Δοκιμάζει την μετατροπή ενός string που περιέχει αριθμό double, σε words "1.0" -> ένα
    func testStringNumberToWords() {
        let testingNumber = "2.4".convertNumberToWords
        let stringedNumber = Locale.preferredLanguages[0] == "el" ? "δύο κόμμα τέσσερα" : "two point four"
        
        XCTAssertEqual(testingNumber, stringedNumber)
    }
    
    // Όταν το string δεν περιέχει έναν αριθμό double, ξαναεπιστρέφει το string
    func testStringNoNumberToWords() {
        let testingNumber = "2.4d".convertNumberToWords
        let stringedNumber = "2.4d"
        
        XCTAssertEqual(testingNumber, stringedNumber)
    }
    
}

final class DoubleConvertNumberToWordsTests: XCTestCase {
    // Δοκιμάζει την μετατροπή ενός double σε λέξεις 1 -> ένα
    func testDoubleToWords() {
        let testingNumber = 2.4.convertNumberToWords
        let stringedNumber = Locale.preferredLanguages[0] == "el" ? "δύο κόμμα τέσσερα" : "two point four"
        
        XCTAssertEqual(testingNumber, stringedNumber)
    }
}
