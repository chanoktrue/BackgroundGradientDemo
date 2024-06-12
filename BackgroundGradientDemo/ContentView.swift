//
//  ContentView.swift
//  BackgroundGradientDemo
//
//  Created by Thongchai Subsaidee on 12/6/24.
//

import SwiftUI
import MulticolorGradient

struct ContentView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            MulticolorGradient {
               ColorStop(position: .top, color: .red)
               ColorStop(position: .bottomLeading, color: .blue)
               ColorStop(position: .topTrailing, color: .green)
            }
            Text("Test .....")
                .foregroundStyle(.white)
                .font(.largeTitle)
        }
        .onAppear{
            withAnimation {
                withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)) {
                    isAnimating.toggle()
                }
            }
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
