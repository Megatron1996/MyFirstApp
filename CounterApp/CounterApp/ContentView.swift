//
//  ContentView.swift
//  CounterApp
//
//  Created by Zohidjon 
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        ZStack {
            Color.accentColor.ignoresSafeArea(.all)
            VStack() {
                Text("\(count)")
                    .font(.system(size: 64, weight: .bold, design: .rounded))
                    .monospacedDigit()
                    .animation(.spring(), value: count)

                HStack(spacing: 30) {
                   

                    Button {
                        count += 1
                    } label: {
                        Label("Add", systemImage: "plus.circle.fill")
                    }
                    .buttonStyle(.glassProminent)
                    .tint(.green)
                    .shadow(radius: 10)
//                    .disabled(count == 5)
                
                    Button {
                        count -= 1
                    } label: {
                        Label("Substract", systemImage: "minus.circle.fill")
                    }
                    .buttonStyle(.glassProminent)
                    .tint(.red)
                    .shadow(radius: 10)
//                    .disabled(count == 0)
                    
                    Button {
                                        count = 0
                                    } label: {
                                        Label("Reset", systemImage: "arrow.counterclockwise.circle.fill")
                                    }
                                    .buttonStyle(.glassProminent)
                                    .tint(.blue)
                                    .shadow(radius: 10)
                }
            }
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
