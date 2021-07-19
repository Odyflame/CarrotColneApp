//
//  CircleImage.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/16.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var size: CGFloat
    
    var body: some View {
        image
            .resizable()
            .frame(width: size, height: size)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"), size: 60)
    }
}
