//
//  ContentView.swift
//  GitHub Day
//
//  Created by Phan Phúc on 20/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var age = 0.0
    
    func calculateDogYears() -> Double {
        return age * 7
    }
    
    var body: some View {
        ZStack {
            Color.purple
                .opacity(0.3)
        
            VStack {
                if age < 15 {
                 Text ("🙆🏻‍♀️")
                        .font(.system(size: 100, weight: .bold, design: .default))
                } else {
                    Text("☠️")
                        .font(.system(size: 100, weight: .bold, design: .default))
                }
                
                
                switch age {
                    case 0...15:
                    Text("You sweetie!")
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .foregroundStyle(.cyan)
    
                default:
                    Text("Bye doggie!")
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .foregroundStyle(.red)

                }
                Text("Dog Years Calculator!")
                    .font(.largeTitle)
                    .fontDesign(.rounded)
                    .foregroundStyle(.indigo)
                    .fontWeight(.bold)
                
                Slider(value: $age, in: 0...30, step: 1)
                
                Text("My age: \(Int(age))")
                    .font(.title2)
                
                Text("Dog's age: \(Int(calculateDogYears ()))")
                    .font(.title2)
         //dfdshfdsjfhddsjhjdbfkjgmghg
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
