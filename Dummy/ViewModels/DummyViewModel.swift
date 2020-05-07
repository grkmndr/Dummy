//
//  DummyModel.swift
//  Dummy
//
//  Created by Gorkem Onder on 6.05.2020.
//  Copyright © 2020 Gorkem Onder. All rights reserved.
//

import Foundation

/// A dummy model that serves absolutely no purpose.
public class DummyViewModel {
    /// Describes how dummy a model is.
    public enum DumminessLevel: String {
        /// Used when a view model argues that the earth is flat.
        case ultraDummy = "DUMMY!!!"
        /// Used when a view model is so dumb that your IQ level drops by a significant amount when you come into contact with it.
        case veryDummy = "DUMMY"
        /// Used when a view model is a newborn baby.
        case justDummy = "Dummy"
        /// Used when a view model is not dummy.
        case notDummy = "Not Dummy"
    }
    
    public enum DummyError: Error {
        case dummyError
    }
    
    /// Rates how dummy this model is on a scale of 1 to 10. (Cannot be changed because this model is extremely dummy no matter what.)
    let dummyConstant: Int = 9000
    /// The dumminess level of this model.
    var dummyVar: DumminessLevel
    
    /// Initializes a dummy model.
    /// - Parameter dummyVar: A dummy string.
    init(dummyVar: DumminessLevel) {
        self.dummyVar = dummyVar
    }
    
    /**
     Does some dummy stuff and returns an even dummier stuff.
     
     [Google]: https://www.google.com/
     
     If you want a function that does absolutely nothing, use [dummyFuncWithTag()](x-source-tag://dummyMethod)
     ### Useful links
     * [Google]
     
     - Parameters:
       - dummyInt: An integer value for doing dummy stuff.
       - dummyCompletion: A completion block for doing some stuff after some dummy stuff is done.
     - Returns: An even more dummy string.
     - throws: An error of type DummyError.
     - author: Görkem Önder
     - requires: This model to be dummy.
     - todo: Needs to be dummier.
     - note: Have I told you that this model was dummy?
     
     */
    func dummyFunc(dummyInt: Int, dummyCompletion: () -> ()) throws -> String {
        print(dummyVar)
        dummyCompletion()
        
        if dummyVar == .notDummy {
            throw DummyError.dummyError
        }
        
        return dummyVar.rawValue + dummyVar.rawValue
    }
    
    /**
     A function that accomplishes absolutely nothing.
     
     This method is created for demonstrating the tagging mechanism.
     
     - Tag: dummyMethod
     */
    func dummyFuncWithTag() {
        
    }
}

public class ChildDummyViewModel: DummyViewModel {
    
}
