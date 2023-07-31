// Challenge 2: Is a string a palindrome?

import Foundation
import XCTest

struct Challenge02 {

    func isPalindrome(value: String) -> Bool {
        String(value.lowercased().reversed()) == value.lowercased()
    }
}

class Challenge02Tests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }

    func test01() {
        let entry = "rotator"
        let isPalindrome = Challenge02().isPalindrome(value: entry)
        XCTAssertTrue(isPalindrome)
    }

    func test02() {
        let entry = "Rats live on no evil star"
        let isPalindrome = Challenge02().isPalindrome(value: entry)
        XCTAssertTrue(isPalindrome)
    }

    func test03() {
        let entry = "Never odd or even"
        let isPalindrome = Challenge02().isPalindrome(value: entry)
        XCTAssertFalse(isPalindrome)
    }

    func test04() {
        let entry = "Hello, world"
        let isPalindrome = Challenge02().isPalindrome(value: entry)
        XCTAssertFalse(isPalindrome)
    }
}

Challenge02Tests.defaultTestSuite.run()

