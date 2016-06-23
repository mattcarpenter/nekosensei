//
//  MainWindowController.swift
//  NekoSensei
//
//  Created by matthew carpenter on 6/21/16.
//  Copyright © 2016 matthew carpenter. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var rangeControl: NSSegmentedControl!
    @IBOutlet weak var recallModeButton: NSButton?
    @IBOutlet weak var guessField: NSTextField?
    @IBOutlet weak var counterControl: NSSegmentedControl?
    
    var currentNumber: Int?

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func test(sender: NSButton) {
        nextNumber()
    }
    
    func nextNumber() {
        var numbers = [String]()
        
        // Grab a random number in each range selected in the configuration options then push into `numbers` array.
        for i in 0..<rangeControl.segmentCount {
            if (rangeControl.isSelectedForSegment(i)) {
                let number = randomNumberInRange(rangeControl.labelForSegment(i)!)
                numbers.append(number)
                NSLog(number)
            }
            
        }
        
        let x = TTS();
        x.speak(numbers[0])

    }
    
    func randomNumberInRange(range: String) -> String {
        var strNumber = ""
        for i in range.characters {
            if (i == "X") {
                strNumber += String(arc4random_uniform(9))
            } else if (i == "0") {
                strNumber += "0"
            }
        }
        
        // strip leading 0's
        let intNumber = Int(strNumber)!
        strNumber = String(intNumber)
        
        return strNumber
    }

}
