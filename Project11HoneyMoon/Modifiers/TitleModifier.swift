//
//  TitleModifier.swift
//  Project11HoneyMoon
//
//  Created by Kayque Dos anjos on 23/09/24.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
