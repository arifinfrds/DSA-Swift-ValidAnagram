//
//  ValidAnagramTests.swift
//  ValidAnagramTests
//
//  Created by arifinfrds.engineer on 17/01/23.
//

import XCTest
@testable import ValidAnagram

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        return false
    }
}

final class ValidAnagramTests: XCTestCase {

    func test_isAnagram_returnsFalseOnBothStringsAreEmpty() {
        let sut = Solution()
        
        let result = sut.isAnagram("", "")
        
        XCTAssertEqual(result, false)
    }

}