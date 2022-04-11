//
//  NewEmojiSheetView.swift
//  EmojiDictionarySwiftUI
//
//  Created by Parker Rushton on 4/11/22.
//

import SwiftUI

struct NewEmojiSheetView: View {
    
    @State private var newEmoji = Emoji.new
    
    
    var body: some View {
        NavigationView {
            EmojiEditView(emoji: $newEmoji, isNew: true)
        }
    }
    
}

// MARK: - Previews

struct NewEmojiSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NewEmojiSheetView()
    }
}
