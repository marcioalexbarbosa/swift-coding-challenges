// Challenge 3 - Do two strings contains the same characters?

import Foundation
import XCTest

struct Challenge03 {

    func containsSameCharacters(_ str1: String, _ str2: String) -> Bool {
        String(str1.sorted()) == String(str2.sorted())
    }
}

class Challenge03Tests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }

    func test01() {
        let str1 = "abca"
        let str2 = "abca"
        let containsSameCharacters = Challenge03().containsSameCharacters(str1, str2)
        XCTAssertTrue(containsSameCharacters)
    }

    func test02() {
        let str1 = "abc"
        let str2 = "cba"
        let containsSameCharacters = Challenge03().containsSameCharacters(str1, str2)
        XCTAssertTrue(containsSameCharacters)
    }

    func test03() {
        let str1 = "a1 b2"
        let str2 = "b1 a2"
        let containsSameCharacters = Challenge03().containsSameCharacters(str1, str2)
        XCTAssertTrue(containsSameCharacters)
    }

    func test04() {
        let str1 = "abc"
        let str2 = "abca"
        let containsSameCharacters = Challenge03().containsSameCharacters(str1, str2)
        XCTAssertFalse(containsSameCharacters)
    }
    
    func test05() {
        let str1 = "abc"
        let str2 = "Abc"
        let containsSameCharacters = Challenge03().containsSameCharacters(str1, str2)
        XCTAssertFalse(containsSameCharacters)
    }
    
    func test06() {
        let str1 = "abc"
        let str2 = "cbAa"
        let containsSameCharacters = Challenge03().containsSameCharacters(str1, str2)
        XCTAssertFalse(containsSameCharacters)
    }
    
    func test07() {
        let str1 = "abcc"
        let str2 = "abca"
        let containsSameCharacters = Challenge03().containsSameCharacters(str1, str2)
        XCTAssertFalse(containsSameCharacters)
    }
}

Challenge03Tests.defaultTestSuite.run()
