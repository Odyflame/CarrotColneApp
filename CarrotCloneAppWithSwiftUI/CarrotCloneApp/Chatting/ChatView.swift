//
//  ChatView.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/19.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List(modelData.items) { _ in
                ChatCell()
            }
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("채팅")
                        .bold()
                        .font(.title2)
                }
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
            .environmentObject(ModelData())
    }
}
