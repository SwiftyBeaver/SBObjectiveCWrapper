//
//  TestLogger.swift
//  SBObjectiveCWrapper
//
//  Created by Reese McLean on 12/21/15.
//  Copyright © 2015 Reese McLean. All rights reserved.
//

import Foundation
@testable import SBObjectiveCWrapper

@objc enum LogLevel: Int {
    case Verbose, Debug, Info, Warning, Error
}

class Log: NSObject {
    let level: LogLevel
    let message: String
    let path: String
    let function: String
    let line: Int
    
    @objc init(level: LogLevel, message: String, path: String, function: String, line: Int) {
        self.level = level
        self.message = message
        self.path = path
        self.function = function
        self.line = line
    }
    
    override func isEqual(object: AnyObject?) -> Bool {
        
        guard let object = object as? Log else { return false }
        
        return self.level == object.level && self.message == object.message && self.path == object.path && self.function == object.function && self.line == object.line
    }
}

class TestLogger: NSObject, Loggable {
    
    static var lastLog: Log?
    
//    class func setLastLog(log: Log?) {
//        _lastLog = log
//    }
//    
//    class func lastLog() -> Log? {
//        return _lastLog
//    }
    
    class func verbose(msg: Any, _ path: String, _ function: String, line: Int) {
        lastLog = Log(level: .Verbose, message: String(msg), path: path, function: function, line: line)
    }
    
    class func debug(msg: Any, _ path: String, _ function: String, line: Int) {
        lastLog = Log(level: .Debug, message: String(msg), path: path, function: function, line: line)
    }
    
    class func info(msg: Any, _ path: String, _ function: String, line: Int) {
        lastLog = Log(level: .Info, message: String(msg), path: path, function: function, line: line)
    }
    
    class func warning(msg: Any, _ path: String, _ function: String, line: Int) {
        lastLog = Log(level: .Warning, message: String(msg), path: path, function: function, line: line)
    }
    
    class func error(msg: Any, _ path: String, _ function: String, line: Int) {
        lastLog = Log(level: .Error, message: String(msg), path: path, function: function, line: line)
    }
    
}

func ==(lhs: Log, rhs: Log) -> Bool {
    return lhs.level == rhs.level && lhs.message == rhs.message && lhs.path == rhs.path && lhs.function == rhs.function && lhs.line == rhs.line
}
