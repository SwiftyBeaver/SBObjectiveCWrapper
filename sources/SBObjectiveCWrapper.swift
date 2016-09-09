//
//  SBObjectiveCWrapper.swift
//  SBObjectiveCWrapper
//
//  Created by Reese McLean on 12/21/15.
//  Copyright © 2015 Reese McLean. All rights reserved.
//

import Foundation
import SwiftyBeaver

protocol Loggable: class {
    
    static func verbose(@autoclosure msg: () -> Any, _ path: String, _ function: String, line: Int)
    static func debug(@autoclosure msg: () -> Any, _ path: String, _ function: String, line: Int)
    static func info(@autoclosure msg: () -> Any, _ path: String, _ function: String, line: Int)
    static func warning(@autoclosure msg: () -> Any, _ path: String, _ function: String, line: Int)
    static func error(@autoclosure msg: () -> Any, _ path: String, _ function: String, line: Int)
    
}

extension SwiftyBeaver: Loggable {}

public class SBObjectiveCWrapper: NSObject {
    
    @objc class func _setLogClassForTesting(logClass: AnyObject) {
        self.logClass = logClass as! Loggable.Type
    }
    
    static var logClass: Loggable.Type = SwiftyBeaver.self
    
    public class func logVerbose(message: String, filePath: String, function: String, line: Int) {
        
        logClass.verbose(message, filePath, self.convertFunction(function), line: line)
        
    }
    
    public class func logDebug(message: String, filePath: String, function: String, line: Int) {
        
        logClass.debug(message, filePath, self.convertFunction(function), line: line)
        
    }
    
    public class func logInfo(message: String, filePath: String, function: String, line: Int) {
        
        logClass.info(message, filePath, self.convertFunction(function), line: line)
        
    }
    
    public class func logWarning(message: String, filePath: String, function: String, line: Int) {
        
        logClass.warning(message, filePath, self.convertFunction(function), line: line)
        
    }
    
    public class func logError(message: String, filePath: String, function: String, line: Int) {
        
        logClass.error(message, filePath, self.convertFunction(function), line: line)
        
    }
    
    public class func convertFunction(function: String) -> String {
        var strippedFunction = function
        
        if let match = function.rangeOfString("\\w+:*[\\w*:*]*]", options: .RegularExpressionSearch) {
            let endIndex = match.endIndex.predecessor()
            let functionParts = function[match.startIndex..<endIndex].componentsSeparatedByString(":")

            guard functionParts.count > 0 else { return function }
            
            for (index, part) in functionParts.enumerate() {
                switch index {
                case 0:
                    strippedFunction = part
                    if functionParts.count > 1 { strippedFunction += "(_:" }
                default:
                    if !part.isEmpty {
                        strippedFunction += "\(part):"
                    }
                }
            }
            if functionParts.count > 1 { strippedFunction += ")" }
            else if functionParts.count == 1 { strippedFunction += "()" }
            
        }
        return strippedFunction
    }
    
}
