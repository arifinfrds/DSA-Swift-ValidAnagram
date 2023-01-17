//
//  ValidAnagramTests.swift
//  ValidAnagramTests
//
//  Created by arifinfrds.engineer on 17/01/23.
//

import XCTest
@testable import ValidAnagram

class Solution {
    func isAnagram(_ firstString: String, _ secondString: String) -> Bool {
        
        if firstString.isEmpty && secondString.isEmpty {
            return false
        }
        
        return hashTable(for: firstString) == hashTable(for: secondString)
    }
    
    private func hashTable(for string: String) -> [Character: Int] {
        
        var hashTable = [Character: Int]()
        
        for character in string {
            if let count = hashTable[character] {
                hashTable[character] = count + 1
            } else {
                hashTable[character] = 1
            }
        }
        
        return hashTable
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
