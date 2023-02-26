//
//  Home.swift
//  animated-splash-screen
//
//  Created by Nick Theodoridis on 26/2/23.
//

import SwiftUI

struct Home: View {
    @State var visibility :CGFloat = 0
    var body: some View {
        ZStack{
            Color(.black)
            Text("CREATED WITH SWIFTUI").font(.system(.body)).bold().foregroundColor(.white).opacity(visibility)
        }.ignoresSafeArea(.all)
            .onAppear(){
                withAnimation(.easeInOut){
                    visibility = 1
                }
            }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
