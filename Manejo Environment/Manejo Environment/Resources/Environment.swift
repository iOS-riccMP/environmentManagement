//
//  Environment.swift
//  Manejo Environment
//
//  Created by Riccardo Mija Padilla on 21/04/21.
//

//https://thoughtbot.com/blog/let-s-setup-your-ios-environments
//https://medium.com/better-programming/how-to-create-development-staging-and-production-configs-in-xcode-ec58b2cc1df4
//

import Foundation

public enum Environment {
    // MARK: - Keys
    enum Keys {
        enum Plist {
            static let enviroment = "XCC_ENVIRONMENT"
        }
    }
    
    // MARK: - Plist
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dict
    }()
    
    // MARK: - Plist values
 
    
    static let enviroment: String = {
        guard let value = Environment.infoDictionary[Keys.Plist.enviroment] as? String else {
            fatalError("enviroment not set in plist for this environment")
        }
        return value
    }()
}

