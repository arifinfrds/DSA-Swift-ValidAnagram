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
        
        if s.isEmpty && t.isEmpty {
            return false
        }
        
        var firstHashTable = [Character: Int]()
        
        for character in s {
            if let count = firstHashTable[character], count == 1 {
                firstHashTable[character] = count + 1
            } else {
                firstHashTable[character] = 1
            }
        }
        
        var secondHashTable = [Character: Int]()
        
        for character in t {
            if let count = secondHashTable[character], count == 1 {
                secondHashTable[character] = count + 1
            } else {
                secondHashTable[character] = 1
            }
        }
        
        if firstHashTable == secondHashTable {
            return true
        } else {
            return false
        }
    }
}

final class ValidAnagramTests: XCTestCase {

    func test_isAnagram_returnsFalseOnBothStringsAreEmpty() {
        let sut = Solution()
        
        let result = sut.isAnagram("", "")
        
        XCTAssertEqual(result, false)
    }
    
    func test_isAnagram_returnsFalseOnFirstStringIsEmpty() {
        let sut = Solution()
        
        let result = sut.isAnagram("non-empty-string", "")
        
        XCTAssertEqual(result, false)
    }
    
    func test_isAnagram_returnsFalseOnSecondStringIsEmpty() {
        let sut = Solution()
        
        let result = sut.isAnagram("", "non-empty-string")
        
        XCTAssertEqual(result, false)
    }
    
    func test_isAnagram_returnsFalseOnDifferentStringsCount() {
        let sut = Solution()
        
        let result = sut.isAnagram("abc", "a")
        
        XCTAssertEqual(result, false)
    }
    
    func test_isAnagram_returnsFalseOnNotAnagram() {
        let sut = Solution()
        
        let result = sut.isAnagram("rat", "car")
        
        XCTAssertEqual(result, false)
    }
    
    func test_isAnagram_returnsTrueOnAnagram() {
        let sut = Solution()
        
        let result = sut.isAnagram("anagram", "nagaram")
        
        XCTAssertEqual(result, true)
    }
}
