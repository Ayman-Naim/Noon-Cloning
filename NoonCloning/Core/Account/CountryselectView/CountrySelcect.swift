//
//  CountrySelcect.swift
//  NoonCloning
//
//  Created by ayman on 29/04/2024.
//

import SwiftUI

struct PickerSelcect: View {
    @Binding var selcectedOption : Country
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
 
            VStack{
              
                HStack{
                    Text("Select Country")
                 Spacer()
                }.padding(.leading,30)
                
                List(Country.allCases) { option in
                        Button(action: {
                            self.selcectedOption = option
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            
                            HStack {
                                Image(option.icon)
                                    .resizable()
                                    .frame(width: 30, height: 25)
                                Text(option.rawValue)
                                    .foregroundColor(.black)
                                    .font(.subheadline)
                                    .fontWeight(.regular)
                                Spacer()
                                if self.selcectedOption == option{
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(.blue)
                                }else{
                                    Image(systemName: "circle")
                                        .foregroundColor(.black)
                                }
                                
                                
                            }
                            
                        }
                }
                
            }
               
            
            
        
    }
}

struct CountrySelcect_Previews: PreviewProvider {
    static var previews: some View {
        PickerSelcect(selcectedOption:  .constant(Country.egypt) )
    }
}
