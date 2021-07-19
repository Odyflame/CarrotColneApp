//
//  Card.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/17.
//

import SwiftUI

struct Card: View {
    var image: Image
    var name: String
    var price: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image("icybay")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 4))
            
            Text("Condo with awesome views of downtown")
                .font(.headline)
            
            Text("$42 avg/night")
                .font(.body)
                .lineLimit(1)
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(image: Image("icybay"), name: "Condo with awesome views of downtown", price: "23000")
    }
}
