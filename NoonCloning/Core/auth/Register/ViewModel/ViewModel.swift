//
//  ViewModel.swift
//  NoonCloning
//
//  Created by ayman on 29/04/2024.
//

import Foundation
class ViewModel:ObservableObject{
    @Published var OTP = "" {
        didSet{
            guard OTP.count<=6,OTP.last?.isNumber ?? true  else {
                OTP = oldValue
                return
            }
        }
    }
    
    var opt1 : String {
        guard OTP.count >= 1 else {
            return ""
        }
        return(String(Array(OTP)[0]))
    }
    var opt2 : String {
        guard OTP.count >= 2 else {
            return ""
        }
        return(String(Array(OTP)[1]))
    }
    var opt3 : String {
        guard OTP.count >= 3 else {
            return ""
        }
        return(String(Array(OTP)[2]))
    }
    var opt4 : String {
        guard OTP.count >= 4 else {
            return ""
        }
        return(String(Array(OTP)[3]))
    }
    var opt5 : String {
        guard OTP.count >= 5 else {
            return ""
        }
        return(String(Array(OTP)[4]))
    }
    var opt6 : String {
        guard OTP.count >= 6 else {
            return ""
        }
        return(String(Array(OTP)[5]))
    }
    
    
    
}
