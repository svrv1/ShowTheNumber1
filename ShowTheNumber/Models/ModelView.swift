//
//  ModelView.swift
//  ShowTheNumber
//
//  Created by Sasha Suvorov on 29.06.2022.
//

import SwiftUI

struct ModelView: View {
    @State private var numbers = ["один", "два", "три", "четыре", "пять", "шесть", "семь", "восемь", "девять", "десять"].shuffled()
    @State private var correctAnswer = Int.random(in: 0..<3)
    @State private var correctScore = 0
    @State private var incorrectScore = 0
    @State private var alertTitle = ""
    @State private var showingAlert = false
var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.90, green: 0.49, blue: 0.14)
                    .edgesIgnoringSafeArea(.all)
                    .navigationBarBackButtonHidden(true)
                VStack {
                   
                    HStack {
                        Text("Правильно: \(correctScore)")
                            .font(.system(size: 18, weight: .bold, design: .rounded)).foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0)).frame(width: 170, height: 50, alignment: .center)
                            .background(Color.green).cornerRadius(35)
                            
                        Text("Неправильно: \(incorrectScore)")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .frame(width: 170, height: 50, alignment: .center)
                            .background(Color.red).cornerRadius(35)
                    } .padding(50)
                    HStack { Text("Покажи цифру: " + (numbers[correctAnswer]))    .font(.system(size: 28, weight: .bold, design: .rounded)) }  .padding(50)
                    HStack {
                        ForEach(0..<3) { number in
                            Image(self.numbers[number])
                                .frame(width: 120, height: 80)
                                .onTapGesture {
                                    self.numberTapped(number)
                                } } }
                    .padding(.horizontal, 10)
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text(alertTitle), dismissButton: .default(Text("Продолжить")) {
                            self.askQuestion()
                        })
                    }
                    Spacer()
                }
            }
            
        }
    }
    func numberTapped(_ tag: Int) {
        if tag == correctAnswer {
            //right answer
            correctScore += 1
            alertTitle = "🟩🟩 Правильно 🟩🟩"
        } else {
            //wrong answer
            incorrectScore += 1
            alertTitle = "🟥🟥 Неправильно 🟥🟥"
        }
        showingAlert = true
    }
    func askQuestion() {
        numbers.shuffle()
        correctAnswer = Int.random(in: 0..<3)
        
    }
    struct ModelView_Previews: PreviewProvider {
        static var previews: some View {
            ModelView()
        }
    }
}
