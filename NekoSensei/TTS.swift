//
//  TTS.swift
//  NekoSensei
//
//  Created by matthew carpenter on 6/18/16.
//  Copyright © 2016 matthew carpenter. All rights reserved.
//

import Foundation
import AppKit

class TTS {
    func speak(phrase: String) {
        let loop = NSRunLoop.currentRunLoop()
        let synth = NSSpeechSynthesizer()
        synth.setVoice("com.apple.speech.synthesis.voice.otoya.premium");
        synth.startSpeakingString(phrase)
        let mode = loop.currentMode ?? NSDefaultRunLoopMode
        while loop.runMode(mode, beforeDate: NSDate(timeIntervalSinceNow: 0.1))
            && synth.speaking {}
    }
}