//
//  SBObjectiveCWrapperTests.swift
//  SBObjectiveCWrapperTests
//
//  Created by Reese McLean on 12/21/15.
//  Copyright © 2015 Reese McLean. All rights reserved.
//

import XCTest
@testable import SBObjectiveCWrapper
import SwiftyBeaver

class SBObjectiveCWrapperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        let testLoggerClass = TestLogger.self
        testLoggerClass.lastLog = nil
        SBObjectiveCWrapper.self.logClass = testLoggerClass
    
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCanLogVerbose() {
        
        let message = "Message"
        let line = #line
        
        SBObjectiveCWrapper.logVerbose(message, filePath: #file, function: #function, line: line)
        
        let expectedLog = Log(level: .Verbose, message: message, path: #file, function: #function, line: line)
        
        XCTAssert(expectedLog == TestLogger.lastLog!, "Logger did not log.")
        
    }
    
    func testCanLogDebug() {
        
        let message = "Message"
        let line = #line

        SBObjectiveCWrapper.logDebug(message, filePath: #file, function: #function, line: line)
        
        let expectedLog = Log(level: .Debug, message: message, path: #file, function: #function, line: line)

        XCTAssert(expectedLog == TestLogger.lastLog!, "Logger did not log.")
        
    }
    
    func testCanLogInfo() {
        
        let message = "Message"
        let line = #line
        
        SBObjectiveCWrapper.logInfo(message, filePath: #file, function: #function, line: line)
        
        let expectedLog = Log(level: .Info, message: message, path: #file, function: #function, line: line)
        
        XCTAssert(expectedLog == TestLogger.lastLog!, "Logger did not log.")
        
    }
    
    func testCanLogWarning() {
        
        let message = "Message"
        let line = #line
        
        SBObjectiveCWrapper.logWarning(message, filePath: #file, function: #function, line: line)
        
        let expectedLog = Log(level: .Warning, message: message, path: #file, function: #function, line: line)
        
        XCTAssert(expectedLog == TestLogger.lastLog!, "Logger did not log.")
        
    }
    
    func testCanLogError() {
        
        let message = "Message"
        let line = #line
        
        SBObjectiveCWrapper.logError(message, filePath: #file, function: #function, line: line)
        
        let expectedLog = Log(level: .Error, message: message, path: #file, function: #function, line: line)
        
        XCTAssert(expectedLog == TestLogger.lastLog!, "Logger did not log.")
        
    }
}
