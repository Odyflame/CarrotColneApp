//
//  HomRow.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/15.
//

import SwiftUI

struct HomRow: View {
    var item: Item
    
    var body: some View {
        HStack {
            item.image
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(5)
            
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                        Text(item.name)
                            .bold()
                        Text(item.city)
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text(item.sellPrice ?? "")
                            .bold()
                            .font(.caption)
                    })
                    
                    Spacer()
                    
                    if item.isFavorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
                
                Spacer()
                
                HStack() {
                    Spacer()
                    
                    Image("msg")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .cornerRadius(5)
                    
                    Text("\(item.chatNum)")
                        .font(.caption)
                    Image("heart")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .cornerRadius(5)
                    
                    Text("\(item.heartNum)")
                        .font(.caption)

                }.padding(.horizontal, 5)
            }.padding(.vertical, 5)
            
        }.padding(.horizontal, 5)
        
    }
}

struct HomRow_Previews: PreviewProvider {
    static var items = ModelData().items
    
    static var previews: some View {
        Group {
            HomRow(item: items[0])
            HomRow(item: items[1])
        }
        .previewLayout(.fixed(width: 300, height: 100))
        
    }
}
