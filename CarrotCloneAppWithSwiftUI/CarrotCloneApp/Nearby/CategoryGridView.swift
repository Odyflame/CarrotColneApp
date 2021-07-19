//
//  CategoryGridView.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/18.
//

import SwiftUI

struct CategoryGridView: View {
    @EnvironmentObject var modelData: ModelData
    
    let data = (1...17)
    
    var columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    var body: some View {
        
        LazyVGrid(columns: columns, content: {
            ForEach(data, id: \.self) {_ in
                Image("CarrotBusket")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
        })
        
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .environmentObject(ModelData())
    }
}
