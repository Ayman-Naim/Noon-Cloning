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
                                    Timer.scheduledTimer(withTimeInterval: 2.8, repeats: false){_ in
                                        NavigateToAnotherView.toggle()
                                        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
                                        if let window = windowScene?.windows.first {
                                            window.rootViewController = UIHostingController(rootView: TabBar())
                                                   window.makeKeyAndVisible()
                                        } 
                                      /*  UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: TabBar())
                                       */
                                    }
                                    
                                }.navigationDestination(isPresented: $NavigateToAnotherView) {
                                    TabBar().navigationBarBackButtonHidden()
                                }
                            
                        }
                        
                    }.background(Color("backColor").edgesIgnoringSafeArea(.all))
                    
                }
                
                
            }
            
          
            
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



