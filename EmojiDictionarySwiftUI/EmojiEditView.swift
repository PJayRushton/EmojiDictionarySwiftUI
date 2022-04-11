//
//  EmojiEditView.swift
//  EmojiDictionarySwiftUI
//
//  Created by Parker Rushton on 4/11/22.
//

import SwiftUI

struct EmojiEditView: View {
    @Environment(\.dismiss) private var dismiss

    @Binding var emoji: Emoji
    
    let isNew: Bool
    
    private var canSaveEmoji: Bool {
        !emoji.symbol.isEmpty &&
        !emoji.name.isEmpty &&
        !emoji.description.isEmpty
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Symbol")
                    .underline()
                TextField("Symbol", text: $emoji.symbol)
            }

            VStack(alignment: .leading, spacing: 8) {
                Text("Name")
                    .underline()
                TextField("Name", text: $emoji.name)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Description")
                    .underline()
                TextField("Description", text: $emoji.description)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Usage")
                    .underline()
                TextField("Usage", text: $emoji.usage)
            }
            
            Spacer()
            
            HStack {
                if isNew {
                    Button(action: cancel) {
                        Text("Cancel")
                            .foregroundColor(.black)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.red)
                    )
                }
                
                Button(action: saveNewEmoji) {
                    Text("Save")
                        .foregroundColor(.white)
                }
                .disabled(!canSaveEmoji)
                .opacity(canSaveEmoji ? 1 : 0.3)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue))
            }
        }
        .padding()
        .navigationTitle(isNew ? "New Emoji" : "Edit Emoji")
        .navigationBarTitleDisplayMode(.inline)
        .textFieldStyle(.roundedBorder)
    }
 
    func cancel() {
        dismiss()
    }
    
    func saveNewEmoji() {
        guard canSaveEmoji else { return }
        if isNew {
            EmojiHelper.shared.emojis.append(emoji)
        }
        // if not new the values are saved as you go through the bindings
        dismiss()
    }
    
}

// MARK: - Previews

struct EmojiEditView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            EmojiEditView(emoji: .constant(EmojiHelper.shared.emojis.first!), isNew: false)
            EmojiEditView(emoji: .constant(EmojiHelper.shared.emojis.first!), isNew: true)
        }
    }
    
}
