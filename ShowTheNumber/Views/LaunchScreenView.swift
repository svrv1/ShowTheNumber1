//
//  NavigationView.swift
//  ShowTheNumber
//
//  Created by Sasha Suvorov on 28.06.2022.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
       NavigationView {
            ZStack {
                Color(red: 0.90, green: 0.49, blue: 0.14)
                    .ignoresSafeArea(.all)
               
                
                VStack {
                    VStack(alignment: .center) {
                        Text("ПОКАЖИ ЦИФРУ")
                            .font(.system(size: 68, weight: .bold, design: .rounded))
                            .multilineTextAlignment(.center)
                            .frame(width: 320, height: 300, alignment: .center)
                            
                    } .padding(70)
                    VStack {
                     
                        NavigationLink(destination: ContentView()
                            //.navigationBarHidden(true)
                        ) {
                            Text("ИГРАТЬ")
                        .font(.system(size: 48, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                              .frame(width: 250, height: 60, alignment: .center)
                                
                                .background(.blue)
                                .cornerRadius(45)
                                
                       }
                        .navigationBarBackButtonHidden(true)
                    } .padding(1)
                    VStack {
                        NavigationLink(destination: SettingsView()
                            .navigationBarHidden(false)) {
                            Text("НАСТРОЙКИ")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .foregroundColor(.black)
                                .frame(width: 120, height: 30, alignment: .center)
                                .background(.blue)
                                .cornerRadius(45)
                        }
                    }
                    
                }
               
            }
            
        }
   }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
