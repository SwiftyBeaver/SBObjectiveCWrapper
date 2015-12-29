//
//  SBObjectiveCWrapper.h
//  SBObjectiveCWrapper
//
//  Created by Reese McLean on 12/21/15.
//  Copyright © 2015 Reese McLean. All rights reserved.
//

@import Foundation;

#define SBLogWarning(message, ...) [SBObjectiveCWrapper logWarning: [NSString stringWithFormat: message, ##__VA_ARGS__] filePath:[NSString stringWithUTF8String:__FILE__] function:[NSString stringWithUTF8String:__FUNCTION__] line:__LINE__]
#define SBLogInfo(message, ...) [SBObjectiveCWrapper logInfo: [NSString stringWithFormat: message, ##__VA_ARGS__] filePath:[NSString stringWithUTF8String:__FILE__] function:[NSString stringWithUTF8String:__FUNCTION__] line:__LINE__]
#define SBLogDebug(message, ...) [SBObjectiveCWrapper logDebug: [NSString stringWithFormat: message, ##__VA_ARGS__] filePath:[NSString stringWithUTF8String:__FILE__] function:[NSString stringWithUTF8String:__FUNCTION__] line:__LINE__]
#define SBLogVerbose(message, ...) [SBObjectiveCWrapper logVerbose: [NSString stringWithFormat: message, ##__VA_ARGS__] filePath:[NSString stringWithUTF8String:__FILE__] function:[NSString stringWithUTF8String:__FUNCTION__] line:__LINE__]
#define SBLogError(message, ...) [SBObjectiveCWrapper logError: [NSString stringWithFormat: message, ##__VA_ARGS__] filePath:[NSString stringWithUTF8String:__FILE__] function:[NSString stringWithUTF8String:__FUNCTION__] line:__LINE__]
