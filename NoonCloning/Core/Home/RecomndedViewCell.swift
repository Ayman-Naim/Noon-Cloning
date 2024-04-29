//
//  RecomndedViewCell.swift
//  NoonCloning
//
//  Created by ayman on 29/04/2024.
//

import SwiftUI

struct RecomndedViewCell: View {
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
                                            ZStack{
                                                
                                                Image("egypt")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 100, height: 130)
                                                    .clipped()
                                                    .cornerRadius(10)
                                                    .background(Color("lightGray"))
                                                    .clipShape(
                                                        RoundedRectangle(cornerRadius: 10)
                                                        
                                                    )
                                                
                                                Button{
                                                    
                                                }label: {
                                                    Image(systemName: "heart")
                                                        .resizable()
                                                        .clipped()
                                                        .frame(width: 20 ,height: 20)
                                                        .foregroundColor(.black)
                                                        .offset(x: 30, y: -50)
                                                }
                                                
                                                
                                                Button{
                                                    
                                                }label: {
                                                    Image(systemName: "cart.badge.plus")
                                                        .resizable()
                                                        .clipped()
                                                        .frame(width: 20 ,height: 20)
                                                        .foregroundColor(.black)
                                                        .offset(x: 30, y: 40)
                                                }
                                                
                                                HStack{
                                                    HStack{
                                                        Text("4.3")
                                                            .font(.system(size: 7))
                                                        Image(systemName: "star.fill")
                                                            .resizable()
                                                            .frame(width: 7, height: 7)
                                                    }
                                                    Text("5.2K")
                                                        .font(.system(size: 7))
                                                } .offset(x:-17, y: 45)
                                                
                                            }
                                            .offset(x: 0, y: 9)
                                            .cornerRadius(10)
                                            
                                            VStack(alignment:.leading){
                                                Text("product name and briefin two line into two rows  ")
                                                    .font(.system(size: 5))
                                                    .lineLimit(nil)
                                                    .fontWeight(.regular)
                                                HStack{
                                                    Text("EGP ")
                                                        .font(.system(size: 5))
                                                        .fontWeight(.regular)
                                                        .lineLimit(nil)
                                                    Text("10,500")
                                                        .font(.system(size: 5))
                                                        .lineLimit(nil)
                                                        .fontWeight(.regular)
                                                }
                                            } .frame(width: 120,height: 30)
                                               
                                            Spacer()
                                        }.frame(height: 180)
                                            .foregroundColor(Color.black)
                                        
                                            .background(.white)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(.gray,lineWidth: 1)
                                            )
                                    }
                                }
                                
                            }
                            
                        }
                        
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
}


struct RecomndedViewCell_Previews: PreviewProvider {
    static var previews: some View {
        RecomndedViewCell()
    }
}
