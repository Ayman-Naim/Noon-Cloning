//
//  Auth.swift
//  NoonCloning
//
//  Created by ayman on 29/04/2024.
//

import SwiftUI
import Lottie
enum AuthOptions:String,CaseIterable,Identifiable{
    var id :AuthOptions{self}
    case login  = "Log in"
    case Register = "Sign Up"
}

struct Auth: View {
    @State var NavigateToAnotherView =  false
    @State var authSelection : AuthOptions = .login
    @State var invalidEmail  = false
    @StateObject var viewModel = AuthViewModel()
    
    var body: some View {
        NavigationStack{
            VStack(spacing:10){
                HStack{
                    LottieView(animation: .named("SplashScreen"))
                        .configuration(LottieConfiguration(renderingEngine: .mainThread))
                        .playing()
                        .looping()
                    
                } .background(Color("backColor"))
                
                VStack(spacing:5){
                    Text("Hala! Let's get Started")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    RoundedSegmentedPicker(selectedIndex: $authSelection).frame(width: 250)
                    VStack(alignment: .leading){
                        TextField("Please enter email address or mobile number", text: $viewModel.email)
                            .frame(height:10)
                            .font(.subheadline)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                        
                            .padding()
                        
                        if invalidEmail{
                            Text("Invalid email address")
                                .foregroundColor(.red)
                                .font(.subheadline)
                                .fontWeight(.regular)
                                .padding(.leading)
                            
                        }
                        
                    }
                    
           
                    
                        VStack{
                                             
                                if authSelection == .login{
                                    
                                    NavigationLink(destination:Register(email: viewModel.email)) {
                                        HStack {
                                            Text("CONTINUE")
                                            //  .fontWeight(.regular)
                                                .foregroundColor(viewModel.email.isEmpty && !invalidEmail ? .white:.white)
                                            
                                            
                                            
                                        }.frame(width: 360, height: 50)
                                            .background( viewModel.email.isEmpty ? Color("lightGray"):.blue)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .allowsHitTesting(viewModel.email.isEmpty && !invalidEmail ? false:true)
                                    }
                                }else{
                                    NavigationLink(destination: Register(email: viewModel.email)) {
                                        HStack {
                                            Text("CONTINUE")
                                            //  .fontWeight(.regular)
                                                .foregroundColor(viewModel.email.isEmpty && !invalidEmail ? .white:.white)
                                            
                                            
                                            
                                        }.frame(width: 360, height: 50)
                                            .background( viewModel.email.isEmpty ? Color("lightGray"):.blue)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .allowsHitTesting(viewModel.email.isEmpty && !invalidEmail ? false:true)
                                        
                                    }
                                
                                
                            }
                            
                        }
                    }
                   
                        
                    
                }.padding()
                //.background(Color("backColor").edgesIgnoringSafeArea(.all))
                
                Spacer()
                
                
            }
            .onReceive(viewModel.$email, perform: { _ in
                if !viewModel.isValidEmail{
                    self.invalidEmail = true
                }else{
                    self.invalidEmail = false
                }
            })
            
        }
        
    }



struct Auth_Previews: PreviewProvider {
    static var previews: some View {
        Auth()
    }
}




// rounded custom login
struct RoundedSegmentedPicker: View {
    
    @Binding var selectedIndex: AuthOptions
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(AuthOptions.allCases,id: \.self) { index in
                Button(action: {
                    selectedIndex = index
                }) {
                    Text(index.rawValue)
                        .foregroundColor(selectedIndex == index ? .black : .black)
                        .padding()
                        .frame(maxWidth: .infinity)
                }
                .background(selectedIndex == index ? Color.white : Color.clear)
                .frame(height:35)
                .clipShape(
                    RoundedRectangle(cornerRadius: 40)
                    
                    
                    
                )
                .padding(5)
                
            }
        }.frame(height: 40)
            .background(Color("Button"))
            .cornerRadius(40)
    }
}
