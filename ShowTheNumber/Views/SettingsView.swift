//
//  SettingsView.swift
//  ShowTheNumber
//
//  Created by Sasha Suvorov on 28.06.2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color(red: 0.90, green: 0.49, blue: 0.14)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Link(destination: URL(string: "https://www.buymeacoffee.com/suvorau")!) {
                    Image("bmac1")
                        .resizable()
                        .frame(width: 200, height: 50)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(45)
                }

            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

