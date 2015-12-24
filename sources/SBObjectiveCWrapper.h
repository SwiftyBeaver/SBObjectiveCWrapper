//
//  SBObjectiveCWrapper.h
//  SBObjectiveCWrapper
//
//  Created by Reese McLean on 12/21/15.
//  Copyright © 2015 Reese McLean. All rights reserved.
//

@import Foundation;

#define SBLogWarning(message) [SBObjectiveCWrapper logWarning: message filePath:[NSString stringWithUTF8String:__FILE__] function:[NSString stringWithUTF8String:__FUNCTION__] line:__LINE__]
#define SBLogInfo(message) [SBObjectiveCWrapper logInfo: message filePath:[NSString stringWithUTF8String:__FILE__] function:[NSString stringWithUTF8String:__FUNCTION__] line:__LINE__]
#define SBLogDebug(message) [SBObjectiveCWrapper logDebug: message filePath:[NSString stringWithUTF8String:__FILE__] function:[NSString stringWithUTF8String:__FUNCTION__] line:__LINE__]
#define SBLogVerbose(message) [SBObjectiveCWrapper logVerbose: message filePath:[NSString stringWithUTF8String:__FILE__] function:[NSString stringWithUTF8String:__FUNCTION__] line:__LINE__]
#define SBLogError(message) [SBObjectiveCWrapper logError: message filePath:[NSString stringWithUTF8String:__FILE__] function:[NSString stringWithUTF8String:__FUNCTION__] line:__LINE__]
