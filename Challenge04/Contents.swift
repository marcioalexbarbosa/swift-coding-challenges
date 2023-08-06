// Challenge 4 - Does one string contain another?

import Foundation
import XCTest

extension String {
    
    func fuzzyContains(_ another: String) -> Bool {
        let normalized = self.lowercased()
        let search = Array(another.lowercased())
        
        var lengthScanning = 0
        
        for element in normalized {
            if element == search[lengthScanning] {
                lengthScanning += 1
            } else {
                lengthScanning = 0
            }
            
            if lengthScanning == search.count {
                return true
            } else if lengthScanning > search.count {
                return false
            }
        }
        
        return false
    }
}

class Challenge04Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func test01() {
        let str1 = "Hello, world"
        let str2 = "Hello"
        let contains = str1.fuzzyContains(str2)
        XCTAssertTrue(contains)
    }
    
    func test02() {
        let str1 = "Hello, world"
        let str2 = "WORLD"
        let contains = str1.fuzzyContains(str2)
        XCTAssertTrue(contains)
    }
    
    func test03() {
        let str1 = "Hello, world"
        let str2 = "Goodbye"
        let contains = str1.fuzzyContains(str2)
        XCTAssertFalse(contains)
    }
    
    func test04() {
        let str1 = "marcio"
        let str2 = "marcio"
        let contains = str1.fuzzyContains(str2)
        XCTAssertTrue(contains)
    }
    
    func test05() {
        let str1 = "marcio"
        let str2 = "alexandre"
        let contains = str1.fuzzyContains(str2)
        XCTAssertFalse(contains)
    }

    func test06() {
        let str1 = "marcio alexandre barbosa"
        let str2 = "alexandre"
        let contains = str1.fuzzyContains(str2)
        XCTAssertTrue(contains)
    }

    
}

Challenge04Tests.defaultTestSuite.run()
