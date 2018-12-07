//
//  AppDelegate.swift
//  DAKeychain
//
//  Created by dagostini on 04/25/2017.
//  Copyright (c) 2017 dagostini. All rights reserved.
//

import UIKit
import DAKeychain

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func applicationDidFinishLaunching(_ application: UIApplication) {
        exampleUsage()
    }
    
    private func exampleUsage() {

        print ("Create/Read Test  =====================================")
        // create/read test
        DAKeychain.shared["key"] = "confidential data" // Create
        let value1 = DAKeychain.shared["key"] // Read
        print("Fetched value: ", value1 ?? "FETCH FAILED")
        
        print ("Delete/Read Test  =====================================")
        // delete test
        DAKeychain.shared["key"] = nil // Delete
        let value2 = DAKeychain.shared["key"] // Read
        print("Fetched value: ", value2 ?? "FETCH FAILED")
        
        print ("Update/Read Test  =====================================")
        // update test
        DAKeychain.shared["key"] = "confidential data" // Create
        let value3 = DAKeychain.shared["key"] // Read
        print("Fetched value: ", value3 ?? "FETCH FAILED")
        
        DAKeychain.shared["key"] = "secret data" // UPdate
        let value4 = DAKeychain.shared["key"] // Read
        print("Fetched value: ", value4 ?? "FETCH FAILED")
        
    }
}

