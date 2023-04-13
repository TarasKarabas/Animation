//
//  ContentView.swift
//  Animations
//
//  Created by Taras Kyparenko on 13/4/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var animatiomAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                animatiomAmount += 360
            }
//            animatiomAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animatiomAmount),
                          axis: (x: 1, y: 0, z: 0))
//        .overlay(Circle()
//            .stroke(.red)
//            .scaleEffect(animatiomAmount)
//            .opacity(2 - animatiomAmount)
//            .animation(.easeOut(duration: 1)
//                .repeatForever(autoreverses: false),
//                       value: animatiomAmount)
//        )
//        .onAppear {
//            animatiomAmount = 2
//        }
//        .scaleEffect(animatiomAmount)
//        .blur(radius: (animatiomAmount - 1) * 2)
//        .animation(.easeOut(duration: 2).repeatForever(autoreverses: true), value: animatiomAmount)
//        .animation(.easeOut(duration: 2).repeatCount(2,autoreverses: true), value: animatiomAmount)
//        .animation(.easeInOut(duration: 2).delay(0.5), value: animatiomAmount)
//        .animation(.interactiveSpring(), value: animatiomAmount)
//        .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animatiomAmount)
//        .animation(.easeIn(duration: 0.5), value: animatiomAmount)
//        .animation(.easeOut, value: animatiomAmount)
//        .animation(.default, value: animatiomAmount)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
