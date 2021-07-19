//
//  ContentView.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/15.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .home
    
    enum Tab {
        case home
        case life
        case nearby
        case chat
        case my
    }
    
    var body: some View {
        TabView(selection: $selection,
                content:  {
                    HomeView().tabItem { Label("홈", systemImage: "homepod") }.tag(Tab.home)
                    Text("Tab Content 2\n Not yet implement").tabItem { Label("동네생활", systemImage: "list.and.film") }.tag(Tab.life)
                    NearbyView().tabItem { Label("내 근처", systemImage: "location.viewfinder") }.tag(Tab.nearby)
                    ChatView().tabItem { Label("채팅", systemImage: "arrow.up.message") }.tag(Tab.chat)
                    MyCarrotView().tabItem { Label("나의 당근", systemImage: "person.2.circle") }.tag(Tab.my)
                })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
