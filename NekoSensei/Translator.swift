//
//  Translator.swift
//  NekoSensei
//
//  Created by matthew carpenter on 6/23/16.
//  Copyright © 2016 matthew carpenter. All rights reserved.
//

import Foundation
import Just
import JSON

class Translator {
    
    let OAUTH_URL = "http://datamarket.accesscontrol.windows.net/v2/OAuth2-13/"
    let CLIENT_ID = "1113625571073686"
    var CLIENT_SECRET: String
    
    init() {
        var configDict: NSDictionary?
        if let path = NSBundle.mainBundle().pathForResource("config", ofType: "plist") {
            configDict = NSDictionary(contentsOfFile: path)
            self.CLIENT_SECRET = configDict!.valueForKey("client_secret") as! String
        } else {
            self.CLIENT_SECRET = ""
        }
    }
    
    func translate(input: String) {
        let translator = Polyglot(clientId: CLIENT_ID, clientSecret: CLIENT_SECRET)
        translator.fromLanguage = Language.English
        translator.toLanguage = Language.Japanese
        translator.translate("Thank you very much") { translation in
            print(translation)
        }
        
    }
}
