//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Zabeehullah Qayumi on 11/5/18.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {
    
    var gameUnderTest : BullsEyeGame!

    override func setUp() {
        
        gameUnderTest = BullsEyeGame()
        gameUnderTest.startNewGame()
        
        
  
    }

    override func tearDown() {
        gameUnderTest = nil
    }
    
    
    func testScoreIsCompleted(){
        
        
        let guess = gameUnderTest.targetValue + 5
        
        _ = gameUnderTest.check(guess: guess)
        
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong !")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
