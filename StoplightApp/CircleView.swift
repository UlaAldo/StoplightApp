//
//  CircleView.swift
//  StoplightApp
//
//  Created by Юлия Алдохина on 26/03/22.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        VStack() {
            CircleView(color: .red, opacity: 1)
        }
    }
}
