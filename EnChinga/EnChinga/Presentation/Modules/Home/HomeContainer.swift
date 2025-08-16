//
//  HomeContainer.swift
//  EnChinga
//
//  Created by Norman Sanchez on 15/08/25.
//

import SwiftUI

struct HomeContainer: View {
    @State var selectedTab = 0
    @State var tabs = [
            TabItem(title: "home_text", systemImage: "house.fill"),
            TabItem(title: "search_text", systemImage: "magnifyingglass"),
            TabItem(title: "cart_text", systemImage: "magnifyingglass"),
            TabItem(title: "profile_text", systemImage: "person.fill")
        ]
    
    var body: some View {
        CustomTabView(selectedIndex: $selectedTab, tabs: tabs) {
                    Group {
                        if selectedTab == 0 {
                            HomeView()
                        } else if selectedTab == 1 {
                            SearchView()
                        } else if selectedTab == 2 {
                            CartView()
                        } else if selectedTab == 3 {
                            ProfileView()
                        }
                    }
                }
    }
}
