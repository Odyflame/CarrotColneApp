//
//  DetailShoppingView.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/16.
//

import SwiftUI

struct DetailShoppingView: View {
    @EnvironmentObject var modelData: ModelData
    var item: Item
    
    var body: some View {
        
        ScrollView(.vertical) {
            GeometryReader { g in
                let yOffset = g.frame(in: .global).minY > 0 ? -g.frame(in: .global).minY : 0
                
                item.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: g.size.width, height: g.size.height - yOffset)
                    .offset(y: yOffset)
                
            }
            .frame(height: UIScreen.main.bounds.height / 2)
            
                HStack {
                    
                    CircleImage(image: item.sellerImg, size: 60)
    
                    VStack(alignment: .leading) {
                        Text("Article by")
                            .font(.custom("AvenirNext-Regular", size: 15))
                            .foregroundColor(.gray)
                        Text("Johne Doe")
                            .font(.custom("AvenirNext-Demibold", size: 15))
                    }
                    
                    Spacer()
                    
                    
                }
                .padding(.leading, 10)
                .padding(.top, 10)
            
            VStack(alignment: .leading) {
                
                Text(item.name)
                    .font(.title)
                Text(item.category.rawValue)
                
                Divider()
                
                Text(item.description)
            }.padding()
            
            Divider()
            
            HStack {
                Text("이 게시글 신고하기")
                Spacer()
            }.padding(10)
            
            Divider()
            
            CardGridView()
        }
        .navigationTitle("Shopping Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailShoppingView_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        DetailShoppingView( item: modelData.items[0])
            .environmentObject(modelData)
    }
}
