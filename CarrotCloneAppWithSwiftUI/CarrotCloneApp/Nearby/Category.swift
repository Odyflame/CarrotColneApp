//
//  Category.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/18.
//

import SwiftUI

struct Category: View {
    var image: Image
    var name: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image("icybay")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 4))
            
            Text("Condo with awesome views of downtown")
                .font(.headline)
        }
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category(image: Image("silversalmoncreek"), name: "silversalmoncreek")
    }
}
