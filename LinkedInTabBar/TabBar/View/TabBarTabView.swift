//
//  TabBarTabView.swift
//  LinkedInTabBar
//
//  Created by James Sedlacek on 5/15/22.
//

import SwiftUI

struct TabBarTabView: View {
    @Binding var currentTab: TabBarTab
    let namespace: Namespace.ID
    let tab: TabBarTab
    let selectedColor: Color
    let unselectedColor: Color
    
    var body: some View {
        Button {
            currentTab = tab
        } label: {
            VStack(alignment: .center, spacing: 4) {
                if isTabSelected() {
                    selectedColor
                        .frame(height: 2)
                        .matchedGeometryEffect(id: "line",
                                               in: namespace,
                                               properties: .frame)
                } else {
                    Color.clear.frame(height: 2)
                }
                
                IconView(image: isTabSelected() ? tab.selectedImage : tab.image,
                         foregroundColor: isTabSelected() ? selectedColor : unselectedColor)
                Text(tab.title)
                    .foregroundColor(isTabSelected() ? selectedColor : unselectedColor)
                    .font(.system(size: 12, weight: .regular))
            }
        }
        .buttonStyle(.plain)
        .animation(.spring(), value: currentTab)
    }
    
    private func isTabSelected() -> Bool {
        return currentTab == tab
    }
}
