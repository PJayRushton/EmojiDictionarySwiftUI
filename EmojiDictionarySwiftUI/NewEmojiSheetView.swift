//
//  NewEmojiSheetView.swift
//  EmojiDictionarySwiftUI
//
//  Created by Parker Rushton on 4/11/22.
//

import SwiftUI

struct NewEmojiSheetView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var newEmoji = Emoji.new
    
    private var canSaveEmoji: Bool {
        !newEmoji.symbol.isEmpty &&
        !newEmoji.name.isEmpty &&
        !newEmoji.description.isEmpty
    }
    
    var body: some View {
        NavigationView {
            EmojiEditView(emoji: $newEmoji)
                .navigationBarItems(
                    leading:
                        Button(action: dismissView) {
                            Text("Cancel")
                        }
                    , trailing:
                        Button(action: saveNewEmoji) {
                            Text("Save")
                        }
                        .disabled(!canSaveEmoji)
                        .opacity(canSaveEmoji ? 1 : 0.3)
                )
        }
    }
    
    func dismissView() {
        dismiss()
    }
    
    func saveNewEmoji() {
        guard canSaveEmoji else { return }
        EmojiHelper.shared.emojis.append(newEmoji)
        dismissView()
    }
    
}

// MARK: - Previews

struct NewEmojiSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NewEmojiSheetView()
    }
}
