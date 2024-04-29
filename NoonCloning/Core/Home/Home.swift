//
//  Home.swift
//  NoonCloning
//
//  Created by ayman on 28/04/2024.
//

import SwiftUI

struct Home: View {
    let width = UIScreen.main.bounds.width
    @State var searchText = ""
    var body: some View {
        NavigationStack{
            VStack(spacing:1){
                
                HStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 100 , height: 100)
                    Spacer()
                    ZStack(alignment: .leading) {
                        TextField("What are you lookig for ? ", text: $searchText)
                            .padding()
                            .background(Color(.white))
                            .cornerRadius(10)
                            .padding(.trailing, 50)
                            .frame(width: 300, height: 35)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                        
                        if searchText.isEmpty{
                            Image(systemName: "magnifyingglass")
                                .padding(.trailing, 10).opacity(0.5)
                        }
                        
                    }
                    
                }
                ScrollView{
                    HStack{
                        Image(systemName: "mappin.circle")
                        Text("Deliver to ")
                            .font(.subheadline)
                        Text("19-37 - Nile corniche - old cairosdfsdf ")
                        Button{}label: {
                            Image(systemName: "chevron.down")
                                .foregroundColor(.black)
                        }
                        
                        
                    }
                    
                    HStack{
                        
                        NavigationLink(destination: EmptyView()) {
                            HStack{
                                Text("CIB noon credit card")
                                    .foregroundColor(.white)
                                Image("logo")
                                    .resizable()
                                    .frame(width: 40 , height: 40)
                            }.frame(maxWidth:.infinity,idealHeight: 40)
                                .background(Color("Button"))
                            
                        }
                    }
                    VStack{
                        MovingPanerView()
                            .cornerRadius(10)
                        
                    }.background(Color("lightGray"))
                    VStack{
                        Image("egypt")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width - 40, height: 60)
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black , lineWidth: 1)
                            )
                    }
                        .padding(5)
                    
                    
                    VStack{
                        CircleScrollView()
                    }.frame(width: width, height: 250)
                      
                        
                        
                    VStack{
                        Image("egypt")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width - 40, height: 60)
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black , lineWidth: 1)
                            )
                    }
                        .padding(10)
                    VStack(alignment:.leading,spacing: 15){
                        HStack{
                            Text("Recommended For You")
                                .font(.headline)
                                .fontWeight(.regular)
                               
                        }.padding(.leading, 20)
                        RecomndedViewCell()  .frame( height: 400)
                            
                    }
                    
                  
                 
                 
                    VStack(alignment:.leading){
                       
                        HStack{
                            Text("any section Title")
                                .font(.headline)
                                .fontWeight(.regular)
                           
                        }.padding(.leading,20)
                        CircleScrollView()
                        .frame(width: width, height: 280)
                            
                            
                    }
                    
                }
                
            }.padding()
        }
    }}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
