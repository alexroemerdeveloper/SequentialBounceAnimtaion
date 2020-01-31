//
//  ContentView.swift
//  SequentialBounceAnimtaion
//
//  Created by Alexander Römer on 31.01.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var aquaBounce = false
    @State private var blueberryBounce = false
    @State private var purpleBounce = false
    @State private var pinkBounce = false
    @State private var redBounce = false

    
    var body: some View {
        
        ZStack {
            
            HStack {
                
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.blue)
                    .offset(y: aquaBounce ? 0 : -300)
                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 5).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.aquaBounce.toggle()
                    }
                
                Circle()
                        .frame(width: 30, height: 30)
                    .foregroundColor(Color.green)
                        .offset(y: blueberryBounce ? 0 : -300)
                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 5).repeatForever(autoreverses: false).delay(0.03))
                        .onAppear() {
                            self.blueberryBounce.toggle()
                        }
                
                
                Circle()
                        .frame(width: 30, height: 30)
                    .foregroundColor(Color.purple)
                        .offset(y: purpleBounce ? 0 : -300)
                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 5).repeatForever(autoreverses: false).delay(0.03*2))
                        .onAppear() {
                            self.purpleBounce.toggle()
                        }
                
                Circle()
                        .frame(width: 30, height: 30)
                    .foregroundColor(Color.pink)
                        .offset(y: pinkBounce ? 0 : -300)
                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 5).repeatForever(autoreverses: false).delay(0.03*3))
                        .onAppear() {
                            self.pinkBounce.toggle()
                        }
                
                Circle()
                        .frame(width: 30, height: 30)
                    .foregroundColor(Color.red)
                        .offset(y: redBounce ? 0 : -300)
                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 5).repeatForever(autoreverses: false).delay(0.03*4))
                        .onAppear() {
                            self.redBounce.toggle()
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
