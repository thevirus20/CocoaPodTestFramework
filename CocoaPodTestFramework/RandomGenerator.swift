//
//  RandomGenerator.swift
//  CocoaPodTestFramework
//
//  Created by Azam Shaikh on 20/01/18.
//  Copyright © 2018 Azam Shaikh. All rights reserved.
//

import Foundation

public class RandomGenerator{
    public init(){}
    
    public func str() -> String{
        return UUID().uuidString
    }
    
    public func intt2() -> Int {
        return Int(arc4random())
    }
    
    public func anotherMethod() {
        print("nothing")
    }
}

