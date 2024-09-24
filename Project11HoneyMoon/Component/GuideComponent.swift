//
//  GuiderComponentr.swift
//  Project11HoneyMoon
//
//  Created by Kayque Dos anjos on 23/09/24.
//

import SwiftUI

struct GuideComponent: View {
    //MARK: - <PROPERTIES>
    var title: String
    var subTitle: String
    var description: String
    var icon: String
    
    //MARK: - <BODY>
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(subTitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.pink)
                }
                Divider().padding(.bottom, 4)
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
                
            }
            
        }
    }
}

#Preview {
    GuideComponent(
        title: "Title",
        subTitle: "Swipe right to see more",
        description: "This is a placeholder sentence, This is a placeholder sentence xereca ",
        icon: "heart.circle")
}
