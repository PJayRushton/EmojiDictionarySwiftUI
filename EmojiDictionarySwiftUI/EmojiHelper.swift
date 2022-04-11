//
//  EmojiHelper.swift
//  EmojiDictionarySwiftUI
//
//  Created by Parker Rushton on 4/11/22.
//

import SwiftUI

class EmojiHelper: ObservableObject {
    
    static let shared = EmojiHelper()
    
    @Published var emojis = [
        Emoji(id: UUID().uuidString, symbol: "😀", name: "Happy Face", description: "A typical smiley face.", usage: "happiness"),
        Emoji(id: UUID().uuidString, symbol: "😕", name: "Confused Face", description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
        Emoji(id: UUID().uuidString, symbol: "😍", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive"),
        Emoji(id: UUID().uuidString, symbol: "👮", name: "Police Officer", description: "A police officer wearing a blue cap with a gold badge.", usage: "person of authority"),
        Emoji(id: UUID().uuidString, symbol: "🐢", name: "Turtle", description: "A cute turtle.", usage: "Something slow"),
        Emoji(id: UUID().uuidString, symbol: "🐘", name: "Elephant", description: "A gray elephant.", usage: "good memory"),
        Emoji(id: UUID().uuidString, symbol: "🍝", name: "Spaghetti", description: "A plate of spaghetti.", usage: "spaghetti"),
        Emoji(id: UUID().uuidString, symbol: "🎲", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
        Emoji(id: UUID().uuidString, symbol: "⛺️", name: "Tent", description: "A small tent.", usage: "camping"),
        Emoji(id: UUID().uuidString, symbol: "📚", name: "Stack of Books", description: "Three colored books stacked on each other.", usage: "homework, studying"),
        Emoji(id: UUID().uuidString, symbol: "💔", name: "Broken Heart", description: "A red, broken heart.", usage: "extreme sadness"),
        Emoji(id: UUID().uuidString, symbol: "💤", name: "Snore", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
        Emoji(id: UUID().uuidString, symbol: "🏁", name: "Checkered Flag", description: "A black-and-white checkered flag.", usage: "completion")
    ]
}
