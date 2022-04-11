//
//  Emoji.swift
//  EmojiDictionarySwiftUI
//
//  Created by Parker Rushton on 4/11/22.
//

import Foundation

struct Emoji: Identifiable { // List items need to be `Identifiable`
    var id: String
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    static var new = Emoji(id: UUID().uuidString, symbol: "", name: "", description: "", usage: "")
}

extension Emoji: Codable { }
