//
//  SBObjectiveCMacroTests.m
//  SBObjectiveCWrapper
//
//  Created by Reese McLean on 12/21/15.
//  Copyright © 2015 Reese McLean. All rights reserved.
//

#import <XCTest/XCTest.h>

@import SBObjectiveCWrapper;
#import "SBObjectiveCWrapperTests-Swift.h"

@interface SBObjectiveCMacroTests : XCTestCase

@end

@implementation SBObjectiveCMacroTests

- (void)setUp {
    [super setUp];
    
    [TestLogger setLastLog:nil];
    [SBObjectiveCWrapper setLogClassForTesting:[TestLogger class]];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCanUseVerboseMacro {

    NSString *message = @"Message";
    NSInteger line = __LINE__;
    NSInteger lineOffset = 4;
    
    Log *log = [[Log alloc] initWithLevel: LogLevelVerbose message: message path: [NSString stringWithUTF8String:__FILE__] function: [NSString stringWithUTF8String:__FUNCTION__] line: line + lineOffset];
    SBLogVerbose(message);
    XCTAssert([log isEqual:[TestLogger lastLog]]);
    
}

- (void)testCanUseDebugMacro {
    
    NSString *message = @"Message";
    NSInteger line = __LINE__;
    NSInteger lineOffset = 4;
    
    Log *log = [[Log alloc] initWithLevel: LogLevelDebug message: message path: [NSString stringWithUTF8String:__FILE__] function: [NSString stringWithUTF8String:__FUNCTION__] line: line + lineOffset];
    SBLogDebug(message);
    XCTAssert([log isEqual:[TestLogger lastLog]]);
    
}

- (void)testCanUseInfoMacro {
    
    NSString *message = @"Message";
    NSInteger line = __LINE__;
    NSInteger lineOffset = 4;
    
    Log *log = [[Log alloc] initWithLevel: LogLevelInfo message: message path: [NSString stringWithUTF8String:__FILE__] function: [NSString stringWithUTF8String:__FUNCTION__] line: line + lineOffset];
    SBLogInfo(message);
    XCTAssert([log isEqual:[TestLogger lastLog]]);
    
}

- (void)testCanUseWarningMacro {
    
    NSString *message = @"Message";
    NSInteger line = __LINE__;
    NSInteger lineOffset = 4;
    
    Log *log = [[Log alloc] initWithLevel: LogLevelWarning message: message path: [NSString stringWithUTF8String:__FILE__] function: [NSString stringWithUTF8String:__FUNCTION__] line: line + lineOffset];
    SBLogWarning(message);
    XCTAssert([log isEqual:[TestLogger lastLog]]);
    
}

- (void)testCanUseErrorMacro {
    
    NSString *message = @"Message";
    NSInteger line = __LINE__;
    NSInteger lineOffset = 4;
    
    Log *log = [[Log alloc] initWithLevel: LogLevelError message: message path: [NSString stringWithUTF8String:__FILE__] function: [NSString stringWithUTF8String:__FUNCTION__] line: line + lineOffset];
    SBLogError(message);
    XCTAssert([log isEqual:[TestLogger lastLog]]);
    
}

@end
