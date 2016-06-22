//
//  MainWindowController.swift
//  NekoSensei
//
//  Created by matthew carpenter on 6/21/16.
//  Copyright © 2016 matthew carpenter. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func test(sender: NSButton) {
        let x = TTS();
        x.speak("ありがとう")
    }

}
