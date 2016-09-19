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

@interface SBObjectiveCWrapper ()

-(void) _setLogClassForTesting:(id)logClass;

@end

@interface SBObjectiveCMacroTests : XCTestCase

@end

@implementation SBObjectiveCMacroTests

- (void)setUp {
    [super setUp];
    
    [TestLogger setLastLog:nil];
    [SBObjectiveCWrapper performSelector:@selector(_setLogClassForTesting:) withObject:[TestLogger class]];
    
}

- (void)tearDown {
    [super tearDown];
}

- (void)testCanUseVerboseMacro {

    NSString *message = @"Message";
    NSInteger line = __LINE__;
    NSInteger lineOffset = 4;
        
    Log *log = [[Log alloc] initWithLevel: LogLevelVerbose message: message path: [NSString stringWithUTF8String:__FILE__] function: @"testCanUseVerboseMacro()" line: line + lineOffset];
    SBLogVerbose(@"%@", message);
    Log *lastLog = [TestLogger lastLog];
    XCTAssert([log isEqual:lastLog]);
    
}

- (void)testCanUseDebugMacro {
    
    NSString *message = @"Message";
    NSInteger line = __LINE__;
    NSInteger lineOffset = 4;
    
    Log *log = [[Log alloc] initWithLevel: LogLevelDebug message: message path: [NSString stringWithUTF8String:__FILE__] function: @"testCanUseDebugMacro()" line: line + lineOffset];
    SBLogDebug(@"%@", message);
    XCTAssert([log isEqual:[TestLogger lastLog]]);
    
}

- (void)testCanUseInfoMacro {
    
    NSString *message = @"Message";
    NSInteger line = __LINE__;
    NSInteger lineOffset = 4;
    
    Log *log = [[Log alloc] initWithLevel: LogLevelInfo message: message path: [NSString stringWithUTF8String:__FILE__] function: @"testCanUseInfoMacro()" line: line + lineOffset];
    SBLogInfo(@"%@", message);
    XCTAssert([log isEqual:[TestLogger lastLog]]);
    
}

- (void)testCanUseWarningMacro {
    
    NSString *message = @"Message";
    NSInteger line = __LINE__;
    NSInteger lineOffset = 4;
    
    Log *log = [[Log alloc] initWithLevel: LogLevelWarning message: message path: [NSString stringWithUTF8String:__FILE__] function: @"testCanUseWarningMacro()" line: line + lineOffset];
    SBLogWarning(@"%@", message);
    XCTAssert([log isEqual:[TestLogger lastLog]]);
    
}

- (void)testCanUseErrorMacro {
    
    NSString *message = @"Message";
    NSInteger line = __LINE__;
    NSInteger lineOffset = 4;
    
    Log *log = [[Log alloc] initWithLevel: LogLevelError message: message path: [NSString stringWithUTF8String:__FILE__] function: @"testCanUseErrorMacro()" line: line + lineOffset];
    SBLogError(@"%@", message);
    XCTAssert([log isEqual:[TestLogger lastLog]]);
    
}

@end
