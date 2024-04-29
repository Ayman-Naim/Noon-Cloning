//
//  CircleScrollView.swift
//  NoonCloning
//
//  Created by ayman on 29/04/2024.
//

import SwiftUI

struct CircleScrollView: View {
    let items = (1...10).map { "Item \($0)" }
    let width =  UIScreen.main.bounds.width
        var body: some View {
            NavigationView {
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(0..<2) { row in
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 10) {
                                    ForEach(0..<items.count) { index in
                                        NavigationLink(destination: EmptyView()) {
                                            VStack{
                                                Image("logo")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .font(.headline)
                                                    .foregroundColor(.white)
                                                    .frame(width: 70, height: 70)
                                                    .clipShape(Circle())
                                                    .overlay(
                                                        Circle()
                                                            .stroke(Color.black , lineWidth: 1)
                                                        
                                                        
                                                    )
                                                    .clipped()
                                                
                                                    .cornerRadius(10)
                                                Text("item Name")
                                                    .fontWeight(.regular)
                                                    .font(.subheadline)
                                                   .foregroundColor(.black)
                                                    
                                            }
                                        }
                                        
                                    }
                                }
                            }
                        }
                    }
                    
                }.frame(width: width - 30, height: 350)
            }
            .padding()
        }
}

struct CircleScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CircleScrollView()
    }
}
