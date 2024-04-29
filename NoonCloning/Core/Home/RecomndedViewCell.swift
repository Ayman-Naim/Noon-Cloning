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
         
                VStack(alignment: .leading, spacing: 10) {
                  
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(0..<items.count) { index in
                                    NavigationLink(destination: EmptyView()) {
                                        VStack{
                                            ZStack{
                                                
                                                Image("egypt")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 220, height: 250)
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
                                                        .offset(x: 80, y: -90)
                                                }
                                                
                                                
                                                Button{
                                                    
                                                }label: {
                                                    Image(systemName: "cart.badge.plus")
                                                        .resizable()
                                                        .clipped()
                                                        .frame(width: 20 ,height: 20)
                                                        .foregroundColor(.black)
                                                        .offset(x: 80, y: 90)
                                                }
                                                
                                                HStack{
                                                    HStack{
                                                        Text("4.3")
                                                            .font(.system(size: 15))
                                                        Image(systemName: "star.fill")
                                                            .resizable()
                                                            .frame(width: 7, height: 7)
                                                    }
                                                    Text("5.2K")
                                                        .font(.system(size: 15))
                                                } .offset(x:-60, y: 90)
                                                
                                            }
                                            .offset(x: 0, y: 9)
                                            .cornerRadius(10)
                                            
                                            VStack(alignment:.leading){
                                                Text("product name and briefin two line into two rows  ")
                                                    .font(.system(size: 15))
                                                    .lineLimit(nil)
                                                    .fontWeight(.regular)
                                                HStack{
                                                    Text("EGP ")
                                                        .font(.system(size: 15))
                                                        .fontWeight(.regular)
                                                        .lineLimit(nil)
                                                    Text("10,500")
                                                        .font(.system(size: 15))
                                                        .lineLimit(nil)
                                                        .fontWeight(.regular)
                                                }
                                            } .frame(width: 250,height: 80)
                                               
                                            Spacer()
                                        }.frame( height: 350)
                                            .foregroundColor(Color.black)
                                        
                                            .background(.white)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(.gray,lineWidth: 1)
                                            )
                                    }
                                }
                                
                            
                            
                        }
                            .padding()
                        
                    
                    
                
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
