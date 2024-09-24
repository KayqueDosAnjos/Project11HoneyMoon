//
//  GuideView.swift
//  Project11HoneyMoon
//
//  Created by Kayque Dos anjos on 23/09/24.
//

import SwiftUI

struct GuideView: View {
    //MARK: - <PROPERTIES>
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                Text("Discover and pick the perfect destination for your romantic honeymoon")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25) {
                    GuideComponent(title: "Like",
                                   subTitle: "Swipe Right",
                                   description: "Do you life this destination? Toutch the screen  and swipe rigth. it will be saved to the favourite",
                                   icon: "heart.circle")
                    
                    GuideComponent(title: "Dissmiss",
                                   subTitle: "Swipe Left",
                                   description: "Should you rather skip this place? Toutch the screen and swipe left. You wil no longer see it",
                                   icon: "xmark.circle")
                    
                    GuideComponent(title: "Book", subTitle: "Tap the button", description: "Our selection of honeymoon resorts is perfect setting for you embark your new life together",
                                   icon: "checkmark.square")
                }
                
                Spacer(minLength: 10)
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                 
                }) {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }
        
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 25)
            .padding(.horizontal, 25)
        }
    }
}

#Preview {
    GuideView()
}
