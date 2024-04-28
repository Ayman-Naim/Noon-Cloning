//
//  SwiftUIView.swift
//  NoonCloning
//
//  Created by ayman on 28/04/2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            Home().tabItem {
                Label("Home", systemImage: "house.fill")
            
            }
            Category().tabItem {
                Label("Category", systemImage: "menucard.fill")
            
            }
            Fashion().tabItem {
                Label("Fashion", systemImage: "tshirt")
            
            }
            Account().tabItem {
                Label("Account", systemImage: "person.fill")
            
            }
            Cart().tabItem {
                Label("Cart", systemImage: "cart.fill")
            
            }
           }.accentColor(Color.yellow)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
