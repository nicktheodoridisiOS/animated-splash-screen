//
//  ContentView.swift
//  animated-splash-screen
//
//  Created by Nick Theodoridis on 25/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var isHomeScreen = false
    @State var scaleAmmount: CGFloat = 1 
    var body: some View {
        ZStack{
            if(isHomeScreen){
                Home()
            }
            else{
                Circle()
                    .frame(width: 30,height: 30)
                    .scaleEffect(scaleAmmount)
            }
        }
        .onAppear(){
            withAnimation(.easeOut(duration: 0.4)){
                scaleAmmount = 0.6
            }
            
            withAnimation(.easeInOut(duration: 0.5).delay(0.8)){
                scaleAmmount = 80
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                isHomeScreen  = true
            }
        }
       
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
