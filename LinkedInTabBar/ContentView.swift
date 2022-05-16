//
//  ContentView.swift
//  LinkedInTabBar
//
//  Created by James Sedlacek on 5/13/22.
//

import SwiftUI

struct ContentView: View {
    let tabs: [TabBarItem] = [TabBarTab(title: "Home",
                                        image: Image(systemName: "house"),
                                        selectedImage: Image(systemName: "house.fill"),
                                        view: AnyView(HomeView())),
                              TabBarTab(title: "My Network",
                                        image: Image(systemName: "person.2"),
                                        selectedImage: Image(systemName: "person.2.fill"),
                                        view: AnyView(NetworkView())),
                              TabBarButton(title: "Post",
                                           image: Image(systemName: "plus.square.fill"),
                                           view: AnyView(PostView())),
                              TabBarTab(title: "Notifications",
                                        image: Image(systemName: "bell"),
                                        selectedImage: Image(systemName: "bell.fill"),
                                        view: AnyView(NotificationsView())),
                              TabBarTab(title: "Jobs",
                                        image: Image(systemName: "briefcase"),
                                        selectedImage: Image(systemName: "briefcase.fill"),
                                        view: AnyView(JobsView()))]
    
    var body: some View {
        TabBarView(currentTab: tabs[0] as! TabBarTab,
                   tabBarItems: tabs)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}

struct HomeView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Home")
            Spacer()
        }.frame(maxWidth: .infinity).background(Color(uiColor: .systemBackground))
    }
}

struct NetworkView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("My Network").foregroundColor(.black)
            Spacer()
        }.frame(maxWidth: .infinity).background(Color(uiColor: .secondaryLabel))
    }
}

struct NotificationsView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Notifications")
            Spacer()
        }.frame(maxWidth: .infinity).background(Color(uiColor: .tertiarySystemBackground))
    }
}

struct JobsView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Jobs")
            Spacer()
        }.frame(maxWidth: .infinity).background(Color(uiColor: .quaternaryLabel))
    }
}

struct PostView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 22, height: 22)
                        .foregroundColor(.black)
                }.padding()
                Spacer()
            }
            Spacer()
            Text("Post")
                .foregroundColor(.black)
            Spacer()
        }.frame(maxWidth: .infinity).background(Color(uiColor: .systemGray))
    }
}
