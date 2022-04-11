//
//  ContentView.swift
//  EmojiDictionarySwiftUI
//
//  Created by Parker Rushton on 4/11/22.
//

import SwiftUI

struct EmojiListView: View {
    
    @StateObject private var emojiHelper = EmojiHelper.shared
    
    @State private var isShowingNewEmojiView = false
    
    var body: some View {
        NavigationView {
            List($emojiHelper.emojis) { $emoji in
                NavigationLink(destination: EmojiEditView(emoji: $emoji)) {
                    EmojiCell(emoji: emoji)
                }
            }
            .sheet(isPresented: $isShowingNewEmojiView) {
                NewEmojiSheetView()
            }
            .listStyle(.plain)
            .navigationBarTitle("Emojis")
            .toolbar {
                Button(action: createNewEmoji) {
                    Image(systemName: "plus")
                }
            }
        }
    }
    
    func createNewEmoji() {
        isShowingNewEmojiView = true
    }
    
}

struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
