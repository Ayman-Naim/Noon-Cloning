//
//  AuthViewModel.swift
//  NoonCloning
//
//  Created by ayman on 29/04/2024.
//

import Foundation
class AuthViewModel:ObservableObject {
    
    @Published var email = ""

    var isValidEmail: Bool {
            // Regular expression pattern for validating email format
            let emailRegex = #"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"#
            let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self.email)
        }
    
}
