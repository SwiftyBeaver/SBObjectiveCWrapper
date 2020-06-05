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

    override func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? Log else { return false }
        
        return self.level == object.level && self.message == object.message && self.path == object.path && self.function == object.function && self.line == object.line
    }
}

@objc class TestLogger: NSObject, Loggable {
    
    @objc static var lastLog: Log?

    static func verbose(_ msg: @autoclosure () -> Any, _ path: String, _ function: String, line: Int, context: Any?) {
        lastLog = Log(level: .Verbose, message: String(describing: msg()), path: path, function: function, line: line)
    }

    static func debug(_ msg: @autoclosure () -> Any, _ path: String, _ function: String, line: Int, context: Any?) {
        lastLog = Log(level: .Debug, message: String(describing: msg()), path: path, function: function, line: line)
    }

    static func info(_ msg: @autoclosure () -> Any, _ path: String, _ function: String, line: Int, context: Any?) {
        lastLog = Log(level: .Info, message: String(describing: msg()), path: path, function: function, line: line)
    }

    static func warning(_ msg: @autoclosure () -> Any, _ path: String, _ function: String, line: Int, context: Any?) {
        lastLog = Log(level: .Warning, message: String(describing: msg()), path: path, function: function, line: line)
    }

    static func error(_ msg: @autoclosure () -> Any, _ path: String, _ function: String, line: Int, context: Any?) {
        lastLog = Log(level: .Error, message: String(describing: msg()), path: path, function: function, line: line)
    }

}

func ==(lhs: Log, rhs: Log) -> Bool {
    return lhs.level == rhs.level && lhs.message == rhs.message && lhs.path == rhs.path && lhs.function == rhs.function && lhs.line == rhs.line
}
