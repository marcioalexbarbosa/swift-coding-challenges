// Challenge 1: Are the letters unique?

import Foundation
import XCTest

struct Challenge01 {

    func hasUniqueLetters(value: String) -> Bool {
        var uniques = Set<Character>()
        for character in value {
            if character.isLetter && uniques.contains(character) {
                return false
            }
            uniques.insert(character)
        }
        return true
    }
}

class Challenge01Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func test01() {
        let entry = "No duplicates"
        let hasUniqueLetters = Challenge01().hasUniqueLetters(value: entry)
        XCTAssertTrue(hasUniqueLetters)
    }

    func test02() {
        let entry = "abcdefghijklmnopqrstuwxyz"
        let hasUniqueLetters = Challenge01().hasUniqueLetters(value: entry)
        XCTAssertTrue(hasUniqueLetters)
    }

    func test03() {
        let entry = "AaBbCc"
        let hasUniqueLetters = Challenge01().hasUniqueLetters(value: entry)
        XCTAssertTrue(hasUniqueLetters)
    }

    func test04() {
        let entry = "Hello, world"
        let hasUniqueLetters = Challenge01().hasUniqueLetters(value: entry)
        XCTAssertFalse(hasUniqueLetters)
    }
}

Challenge01Tests.defaultTestSuite.run()
