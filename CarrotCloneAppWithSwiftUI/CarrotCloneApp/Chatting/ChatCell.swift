//
//  ChatCell.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/19.
//

import SwiftUI

struct ChatCell: View {
    var body: some View {
        HStack {
            Image("chincoteague")
                .resizable()
                .cornerRadius(30)
                .frame(width: 50, height: 50)
            VStack {
                HStack {
                    Text("LG전자 베스트샵")
                        .font(.system(size: 18, weight: .bold))
                        .lineLimit(1)
                        .truncationMode(.tail)
                    Text("대치동")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                    Text("7월 15일")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                    Spacer()
                }
                HStack{
                    Text("이거 사고 싶습니다! 저한테 연락해주세요!")
                        .lineLimit(1)
                    Spacer()
                }
            }
            Image("charleyrivers")
                .resizable()
                .cornerRadius(10)
                .frame(width: 50, height: 50)
        }.padding()
    }
}

struct ChatCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatCell()
    }
}
