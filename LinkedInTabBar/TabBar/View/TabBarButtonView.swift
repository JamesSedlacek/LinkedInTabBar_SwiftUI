//
//  TabBarButtonView.swift
//  LinkedInTabBar
//
//  Created by James Sedlacek on 5/15/22.
//

import SwiftUI

struct TabBarButtonView: View {
    @Binding var isButtonTapped: Bool
    let tab: TabBarButton
    let accentColor: Color
    
    var body: some View {
        Button {
            isButtonTapped = true
        } label: {
            VStack(alignment: .center, spacing: 4) {
                Color.clear.frame(height: 2)
                IconView(image: tab.image,
                         foregroundColor: accentColor)
                Text(tab.title)
                    .foregroundColor(accentColor)
                    .font(.system(size: 12, weight: .regular))
            }
        }.buttonStyle(.plain)
    }
}
