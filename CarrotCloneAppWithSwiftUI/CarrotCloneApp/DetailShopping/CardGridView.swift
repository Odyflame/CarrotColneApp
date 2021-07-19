//
//  CardGridView.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/17.
//

import SwiftUI

struct CardGridView: View {
    @EnvironmentObject var modelData: ModelData

    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(modelData.sellerItems, id: \.self) { item in
                    Card(image: item.itemImage, name: item.name, price: item.sellPrice ?? "0원")
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: 300)
    }
}

struct CardGridView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        CardGridView()
            .environmentObject(ModelData())
    }
}
