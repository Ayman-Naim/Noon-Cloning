//
//  ContentView.swift
//  NoonCloning
//
//  Created by ayman on 27/04/2024.
//

import SwiftUI
import Lottie


struct ContentView: View {
    @State var NavigateToAnotherView =  false
    var body: some View {
       
        VStack{
            NavigationStack{
                VStack{
                    HStack{
                        Spacer()
                        Button("Skip Intro"){
                            NavigateToAnotherView.toggle()
                        }
                            .foregroundColor(.gray)
                            
                    }.padding()
                    HStack{
                        LottieView(animation: .named("SplashScreen"))
                            .configuration(LottieConfiguration(renderingEngine: .mainThread))
                            .playing()
                            .onAppear{
                                Timer.scheduledTimer(withTimeInterval: 70, repeats: false){_ in
                                    NavigateToAnotherView.toggle()
                                    
                                    UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: SwiftUIView())
                                }
                                
                            }.navigationDestination(isPresented: $NavigateToAnotherView) {
                                SwiftUIView().navigationBarBackButtonHidden()
                            }
                        
                    }
                    
                }
                .background(Color("backColor"))
            }
           
        }
       
        .padding()
        .background(Color("backColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



