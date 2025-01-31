//
//  CryptoApp.swift
//  Crypto
//
//  Created by Suelio Sousa on 26/01/25.
//

import SwiftUI

@main
struct CryptoApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView().onAppear {
                // A lógica para imprimir as fontes
                for familyName in UIFont.familyNames {
                    print("Family: \(familyName)")
                    for fontName in UIFont.fontNames(forFamilyName: familyName) {
                        print("    Font: \(fontName)")
                    }
                }
            }
        }
    }
}
