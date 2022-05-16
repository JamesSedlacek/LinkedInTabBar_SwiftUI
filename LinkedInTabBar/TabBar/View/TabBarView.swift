//
//  TabBarView.swift
//  iProjects
//
//  Created by James Sedlacek on 2/7/22.
//

import SwiftUI

struct TabBarView: View {
    @State var currentTab: TabBarTab
    @State var isButtonTapped: Bool = false
    @Namespace var namespace
    let tabBarItems: [TabBarItem]
    let backgroundColor = Color(uiColor: .secondarySystemBackground)
    let selectedColor: Color = .white
    let unselectedColor: Color = .secondary
    
    var body: some View {
        VStack {
            currentTab.view
            
            HStack {
                ForEach(tabBarItems) { tab in
                    if let safeTab = tab as? TabBarTab {
                        TabBarTabView(currentTab: $currentTab,
                                      namespace: namespace.self,
                                      tab: safeTab,
                                      selectedColor: selectedColor,
                                      unselectedColor: unselectedColor)
                    }
                    if let safeTab = tab as? TabBarButton {
                        TabBarButtonView(isButtonTapped: $isButtonTapped,
                                         tab: safeTab,
                                         accentColor: unselectedColor)
                    }
                }
            }.background(backgroundColor)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .fullScreenCover(isPresented: $isButtonTapped, content: {
            // This is setup for only ONE button
            // This would have to be changed if you want multiple buttons
            tabBarItems.first(where: { $0 is TabBarButton })!.view
        })
    }
}
