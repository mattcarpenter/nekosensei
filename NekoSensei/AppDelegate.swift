//
//  AppDelegate.swift
//  NekoSensei
//
//  Created by matthew carpenter on 6/18/16.
//  Copyright © 2016 matthew carpenter. All rights reserved.
//

import Cocoa
import JSON

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        NSLog("foobar");
        
        var users: AnyObject?
        do {
            users = try JSON.from("dictionary.json")
            NSLog("hello");
        } catch {
            // Handle error
        }
        let x = TTS();
        x.speak("2500");
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
}

