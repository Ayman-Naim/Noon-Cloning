//
//  Account.swift
//  NoonCloning
//
//  Created by ayman on 28/04/2024.
//

import SwiftUI

struct Account: View {
    var body: some View {
        VStack(spacing:25){
            HStack{
               
                VStack(alignment:.leading,spacing: 5){
                    Text("Ahln! Nice to meet you")
                        .font(.headline)
                    Text("The regions favourite online marketPlace")
                        .font(.footnote)
                        .fontWeight(.light)
                    HStack {
                        Button{
                            
                        }label: {
                            HStack(){
                                ZStack{
                                    Circle()
                                        .fill(.yellow)
                                    .frame(width: 30 , height: 30)
                                    Image(systemName: "person.crop.circle.fill")
                                        .foregroundColor(.black)
                                }
                               
                                Text("Log in / SignUp")
                                    .foregroundColor(.white)
                            }
                                .frame(maxWidth: .infinity , maxHeight:50)
                                .background(Color("Button"))
                                    .cornerRadius(15)
                            
                    }
                    }
                }
                Spacer()
                
               
            }.padding()
            .background(.white)
            .cornerRadius(10)
            HStack{
                Text("Settings").fontWeight(.regular)
                Spacer()
            }
           
                
                VStack {
                    Button{

                    }label: {
                        HStack{
                            ZStack{
                                Circle()
                                    .fill(.yellow)
                                    .frame(width: 30 , height: 30)
                                Image(systemName: "person.crop.circle.fill")
                                    .foregroundColor(.black)
                            }
                            Spacer()
                            
                            Text("Country")
                                .foregroundColor(.black)
                            Spacer()
                            Image(systemName: "flag")
                                .foregroundColor(.black)
                            Image(systemName: "chevron.right")
                                .foregroundColor(.black)
                            
                            
                            
                        }}.padding()
                            .frame(maxWidth: .infinity , maxHeight:50)
                            .background(.white)
                            .cornerRadius(15)
                        
                    //
                    Divider()
                    Button{
                        
                    }label: {
                        HStack{
                            ZStack{
                                Circle()
                                    .fill(.yellow)
                                    .frame(width: 30 , height: 30)
                                Image(systemName: "flag")
                                    .foregroundColor(.black)
                            }
                            Spacer()
                            
                            Text("Language")
                                .foregroundColor(.black)
                            Spacer()
                            Text( "العربية")
                                .foregroundColor(.black)
                            Image(systemName: "chevron.right")
                                .foregroundColor(.black)
                            
                            
                            
                        }.padding()
                            .frame(maxWidth: .infinity , maxHeight:50)
                            .background(.white)
                            .cornerRadius(15)
                        
                        
                    }
                }
                .background(.white)
                .cornerRadius(10)
            Divider()
            VStack(spacing: 15){
                
                HStack(alignment:.center){
                    Spacer()
                                    
                    Link("Sell with us", destination: URL(string: "https://sell.withnoon.com/en/")!)
                        .font(.headline)
                        .foregroundColor(.blue)
                    Spacer()
                }
                Divider()
                HStack{
                    Button{
                        Link("Sell with us", destination: URL(string: "https://sell.withnoon.com/en/")!)
                    }label: {
                        Image("face")
                            .resizable()
                            .frame(width: 25 , height: 25)
                    }
                    
                    Button{
                        Link("Sell with us", destination: URL(string: "https://sell.withnoon.com/en/")!)
                    }label: {
                        Image("insta")
                            .resizable()
                            .frame(width: 25 , height: 25)
                    }
                    
                    Button{
                        Link("Sell with us", destination: URL(string: "https://sell.withnoon.com/en/")!)
                    }label: {
                        Image("linked")
                            .resizable()
                            .frame(width: 25 , height: 25)
                    }
                    
                    Button{
                        
                    }label: {
                        Image("twitter")
                            .resizable()
                            .frame(width: 25 , height: 25)
                    }
                }
                HStack{
                    Link("Terms of Use", destination: URL(string: "https://sell.withnoon.com/en/")!)
                     
                    Link("Terms of Sale", destination: URL(string: "https://sell.withnoon.com/en/")!)
                      
                     
                    Link("Privacy Policy", destination: URL(string: "https://sell.withnoon.com/en/")!)
                     
                }
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(.gray)
                
                HStack{
                    Link("Warrannty Policy", destination: URL(string: "https://sell.withnoon.com/en/")!)
                     
                    Link("Return Policy", destination: URL(string: "https://sell.withnoon.com/en/")!)
                      
                     
                    Link("Help Center Articles", destination: URL(string: "https://sell.withnoon.com/en/")!)
                    
                  
                        
                        
                }
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(.gray)
                
            }.background(.white)
                .cornerRadius(10)
            
               Spacer()
            VStack{
                Text("Version v4.11(3996)")
                    .font(.footnote)
                    .fontWeight(.ultraLight)
                Text("@2024 noon.com All rights reserves.").font(.footnote)
                    .fontWeight(.ultraLight)
                
            }
            Spacer()
            Spacer()
            Spacer()
        }.padding()
        .background(Color("Background"))
       
           
           
        
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
