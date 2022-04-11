//
//  EmojiEditView.swift
//  EmojiDictionarySwiftUI
//
//  Created by Parker Rushton on 4/11/22.
//

import SwiftUI

struct EmojiEditView: View {
    
    @Binding var emoji: Emoji
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Symbol")
                .underline()
            TextField("Symbol", text: $emoji.symbol)
            
            Text("Name")
                .underline()
            TextField("Name", text: $emoji.name)
            
            Text("Description")
                .underline()
            TextField("Description", text: $emoji.description)
            
            Text("Usage")
                .underline()
            TextField("Usage", text: $emoji.usage)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Edit Emoji")
        .navigationBarTitleDisplayMode(.inline)
        .textFieldStyle(.roundedBorder)
    }
    
}

// MARK: - Previews

struct EmojiEditView_Previews: PreviewProvider {
    
    static var previews: some View {
        EmojiEditView(emoji: .constant(EmojiHelper.shared.emojis.first!))
    }
    
}
