//
//  EmojiCell.swift
//  EmojiDictionarySwiftUI
//
//  Created by Parker Rushton on 4/11/22.
//

import SwiftUI

struct EmojiCell: View {
    
    let emoji: Emoji
    
    var body: some View {
        HStack(spacing: 12) {
            Text(emoji.symbol)
                .font(.system(.title2))
            
            VStack(alignment: .leading) {
                Text(emoji.name)
                    .font(.system(.title3))
                    .bold()
                
                Text(emoji.description)
            }
            
            Spacer()
        }
    }
    
}


// MARK: - Previews

struct EmojiCell_Previews: PreviewProvider {
    static var previews: some View {
        EmojiCell(emoji: EmojiHelper.shared.emojis.first!)
    }
}
