//
//  ContentView.swift
//  ShowTheNumber
//
//  Created by Sasha Suvorov on 28.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSettingsView = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.90, green: 0.49, blue: 0.14)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer(minLength: 50)
                    VStack {
                        ModelView()
                    }
                  
                 
                }
             
                }

            }
        }
        
    }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
