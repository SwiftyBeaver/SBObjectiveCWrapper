//
//  SBObjectiveCWrapper.swift
//  SBObjectiveCWrapper
//
//  Created by Reese McLean on 12/21/15.
//  Copyright © 2015 Reese McLean. All rights reserved.
//

import SwiftyBeaver

public class SwiftyBeaverObjC: NSObject {
    
    public class func logVerbose(message: String, filePath: String, function: String, line: Int) {
        
        SwiftyBeaver.self.verbose(message, filePath, function, line: line)
        
    }
    
    public class func logDebug(message: String, filePath: String, function: String, line: Int) {
        
        SwiftyBeaver.self.debug(message, filePath, function, line: line)
        
    }
    
    public class func logInfo(message: String, filePath: String, function: String, line: Int) {
        
        SwiftyBeaver.self.info(message, filePath, function, line: line)
        
    }
    
    public class func logWarning(message: String, filePath: String, function: String, line: Int) {
        
        SwiftyBeaver.self.warning(message, filePath, function, line: line)
        
    }
    
    public class func logError(message: String, filePath: String, function: String, line: Int) {
        
        SwiftyBeaver.self.error(message, filePath, function, line: line)
        
    }
    
}
