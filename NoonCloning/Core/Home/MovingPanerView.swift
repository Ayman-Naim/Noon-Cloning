//
//  MovingPanerView.swift
//  NoonCloning
//
//  Created by ayman on 29/04/2024.
//

import SwiftUI

struct MovingPanerView: View {
    let width = UIScreen.main.bounds.width
    let images = ["logo","egypt","saudi"]
    @State private var currentIndex = 0
    var body: some View {
  
        ScrollView(.horizontal, showsIndicators: false) {
                  ScrollViewReader { scrollViewProxy in
                      HStack(spacing: 0) {
                          ForEach(images.indices, id: \.self) { index in
                              Image(images[index])
                                  .resizable()
                                  .font(.title)
                                  .overlay(
                                      RoundedRectangle(cornerRadius: 10)
                                          .stroke(Color.black, lineWidth: 0)
                                  )
                                  .frame(width: width - 20, height: 200)
                                 
                              
                                  .cornerRadius(10)
                                
                                  .id(index)
                          }
                      }
                      .gesture(DragGesture()
                          .onEnded { value in
                              if value.translation.width < 0 {
                                  // Swipe left, go to next item
                                  currentIndex = min(currentIndex + 1, images.count - 1)
                              } else {
                                  // Swipe right, go to previous item
                                  currentIndex = max(currentIndex - 1, 0)
                              }
                              withAnimation {
                                  scrollViewProxy.scrollTo(currentIndex)
                              }
                          }
                      )
                  }
              }
              .padding()
          }
      }

struct MovingPanerView_Previews: PreviewProvider {
    static var previews: some View {
        MovingPanerView()
    }
}
