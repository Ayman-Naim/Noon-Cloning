//
//  Reigster.swift
//  NoonCloning
//
//  Created by ayman on 29/04/2024.
//

import SwiftUI

struct Register: View {
    @State  var email : String
    @StateObject var viewModel = ViewModel()
    @State var timerRemining = 11
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let textBoxWidth = UIScreen.main.bounds.width / 8
    let textBoxHeight = UIScreen.main.bounds.width / 8
    let spaceBetweenBoxes: CGFloat = 10
    @State var isFocused = false
    var textFieldOriginalWidth: CGFloat {
        (textBoxWidth*6)+(spaceBetweenBoxes*3)+((1*2)*3)
    }
    
    @State var OPT : String = ""
    var body: some View {
        
        VStack(spacing:40){
            
            VStack{
                Text("Verify your email")
                    .font(.title)
                    .fontWeight(.regular)
                Text("OTP has been sent to ")
                    .font(.title3)
                    .fontWeight(.light)
                Text(email)
                    .font(.title3)
                    .fontWeight(.light)
            }
            VStack{
                ZStack {
                    HStack(spacing:spaceBetweenBoxes){
                        otpText(text: viewModel.opt1)
                        otpText(text: viewModel.opt2)
                        otpText(text: viewModel.opt3)
                        otpText(text: viewModel.opt4)
                        otpText(text: viewModel.opt5)
                        otpText(text: viewModel.opt6)
                       
                    }
                    TextField("", text: $viewModel.OTP)
                        .frame(width: isFocused ? 0 : textFieldOriginalWidth, height: textBoxHeight)
                        .disabled(false)
                        .textContentType(.oneTimeCode)
                        .foregroundColor(.clear)
                        .accentColor(.clear)
                        .background(Color.clear)
                        .keyboardType(.numberPad)
                }
            }
            HStack{
            
            Text("00:\(timerRemining < 10 ? "0\(timerRemining)": "\(timerRemining)")")
                .fontWeight(.bold)
                .onReceive(timer) { _ in
                    if timerRemining>0{
                        timerRemining -= 1
                    }
                }
            Button{
                viewModel.OTP = ""
                timerRemining = 11
            }label: {
                Text("Resend OTP")
                    .foregroundColor(.gray)
            }
        }
            
           // Spacer()
            
        }
        
    }
    
    private func otpText(text: String) -> some View {
        
        return Text(text)
            .font(.title)
            .frame(width: textBoxWidth, height: textBoxHeight)
            .background(VStack{
                Spacer()
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.black, lineWidth: 1)
                    .frame(height: textBoxHeight )
            })
            .padding(1)
    }
}

struct Reigster_Previews: PreviewProvider {
    static var previews: some View {
        Register(email: "test@test.com")
    }
}
