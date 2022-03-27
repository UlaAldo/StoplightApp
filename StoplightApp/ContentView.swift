//
//  ContentView.swift
//  StoplightApp
//
//  Created by Юлия Алдохина on 26/03/22.
//

import SwiftUI

struct ContentView: View {
    @State private var title = "START"
    
    @State private var red = CircleView(color: .red, opacity: 0.3)
    @State private var yellow = CircleView(color: .yellow, opacity: 0.3)
    @State private var green = CircleView(color: .green, opacity: 0.3)
    
    @State private var colors: CircleColors = .red
    
    enum CircleColors {
        case red, yellow, green
    }
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack {
                red
                yellow
                    .padding()
                green
                Spacer()
                button
            }
            .padding()
        }
    }
    
    private var button: some View {
        Button(action: { getButton() }) {
            Text("\(title)")
                .font(.title)
                .foregroundColor(Color.white)
                .bold()
                .frame(width: 150, height: 50)
                .background(.blue)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white, lineWidth: 4)
                )
        }
    }
    
    private func getButton() {
        title = "NEXT"
        
        switch colors {
        case .red:
            green.opacity = 0.3
            red.opacity = 1
            colors = .yellow
        case .yellow:
            red.opacity = 0.3
            yellow.opacity = 1
            colors = .green
        case .green:
            yellow.opacity = 0.3
            green.opacity = 1
            colors = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
