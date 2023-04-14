//
//  ContentView.swift
//  Animations
//
//  Created by Taras Kyparenko on 13/4/2023.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading),
                  identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}
                  
                  struct ContentView: View {
            
            @State private var isShowingRed = false
            ////    let letters = Array("Hello, SwiftUI")
            ////    @State private var enabled = false
            ////    @State private var dragAmount = CGSize.zero
            
            var body: some View {
                ZStack {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 200, height: 200)
                    
                    if isShowingRed {
                        Rectangle()
                            .fill(.red)
                            .frame(width: 200, height: 200)
                            .transition(.pivot)
                    }
                }
                .onTapGesture {
                    withAnimation {
                        isShowingRed.toggle()
                    }
                }
//        VStack {
//            Button("Tap Me") {
//                withAnimation {
//                    isShowingRed.toggle()
//                }
//            }
//        }
//
//        if isShowingRed {
//            Rectangle()
//            .fill(.red)
//            .frame(width: 200, height: 200)
//            .transition(.asymmetric(insertion: .scale, removal: .opacity))
//        }
////        HStack(spacing: 0) {
////            ForEach(0..<letters.count) { num in
////                Text(String(letters[num]))
////                    .padding(5)
////                    .font(.title)
////                    .background(enabled ? .blue : .red)
////                    .offset(dragAmount)
////                    .animation(.default.delay(Double(num) / 20),
////                               value: dragAmount)
////            }
////        }
////        .gesture(
////        DragGesture()
////            .onChanged { dragAmount = $0.translation }
////            .onEnded { _ in
////                dragAmount = .zero
////                enabled.toggle()
////            }
////        )
////
//////        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//////            .frame(width: 300, height: 200)
//////            .clipShape(RoundedRectangle(cornerRadius: 10))
//////            .offset(dragAmount)
//////            .gesture(
//////                DragGesture()
//////                    .onChanged { dragAmount = $0.translation }
//////                    .onEnded { _ in
//////                        withAnimation {
//////                            dragAmount = .zero
//////                        }
//////                    }
//////
//////            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct ContentView: View {
//    @State private var enabled = false
//    //    @State private var animatiomAmount = 1.0
//
//    var body: some View {
//        Button("Tap Me") {
//            enabled.toggle()
//            //            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
//            //                animatiomAmount += 360
//            //            animatiomAmount += 1
//        }
//        .frame(width: 200, height: 200)
//        .background(enabled ? .blue : .red)
//        .animation(.default, value: enabled)
//        //        .frame(width: 200, height: 200)
//        .foregroundColor(.white)
//        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
//        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
////        .animation(.default, value: enabled)
////        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
//    }
//}
//        //        .padding(50)
//        //        .background(.red)
//        //        .foregroundColor(.white)
//        //        .clipShape(Circle())
//        //        .rotation3DEffect(.degrees(animatiomAmount),
//        //                          axis: (x: 1, y: 0, z: 0))
//        ////        .overlay(Circle()
//        ////            .stroke(.red)
//        ////            .scaleEffect(animatiomAmount)
//        ////            .opacity(2 - animatiomAmount)
//        ////            .animation(.easeOut(duration: 1)
//        ////                .repeatForever(autoreverses: false),
//        ////                       value: animatiomAmount)
//        ////        )
//        ////        .onAppear {
//        ////            animatiomAmount = 2
//        ////        }
//        ////        .scaleEffect(animatiomAmount)
//        ////        .blur(radius: (animatiomAmount - 1) * 2)
//        ////        .animation(.easeOut(duration: 2).repeatForever(autoreverses: true), value: animatiomAmount)
//        ////        .animation(.easeOut(duration: 2).repeatCount(2,autoreverses: true), value: animatiomAmount)
//        ////        .animation(.easeInOut(duration: 2).delay(0.5), value: animatiomAmount)
//        ////        .animation(.interactiveSpring(), value: animatiomAmount)
//        ////        .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animatiomAmount)
//        ////        .animation(.easeIn(duration: 0.5), value: animatiomAmount)
//        ////        .animation(.easeOut, value: animatiomAmount)
//        ////        .animation(.default, value: animatiomAmount)
//        //
