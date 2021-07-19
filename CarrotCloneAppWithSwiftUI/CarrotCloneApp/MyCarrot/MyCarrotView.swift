//
//  MyCarrotView.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/18.
//

import SwiftUI

struct MyCarrotView: View {
    
    @State private var showModal: Bool = false
    
    var body: some View {
        NavigationView {
            
            List {
                VStack {
                    MiniProfile()
                    
                    Button(action: {
                        print("Delete button tapped!")
                    }) {
                        Text("프로필 보기")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    .onTapGesture {
                        self.showModal.toggle()
                    }
                    .padding()
                    .foregroundColor(.black)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.5)
                    )
                    .padding()
                    
                    HStack {
                        HikeBadge(name: "판매내역")
                        HikeBadge(name: "구매내역")
                            .hueRotation(Angle(degrees: 90))
                        HikeBadge(name: "관심목록")
                            .grayscale(0.5)
                            .hueRotation(Angle(degrees: 45))
                    }
                    .padding(.bottom)
                }
                
                
                Section(
                    header: Text("설정")
                        .bold()
                        .foregroundColor(.black)
                ) {
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            HStack {
                                Image(systemName: "person")
                                Text("내 동네 설정")
                            }
                        })
                    HStack {
                        Image(systemName: "person")
                        Text("동네 인증하기")
                    }
                    
                    HStack {
                        Image(systemName: "person")
                        Text("키워드 알림")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("모아보기")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("관심 카테고리 설정")
                    }
                }
                
                Section(header: Text("동네생활")
                            .bold()
                            .foregroundColor(.black)) {
                    HStack {
                        Image(systemName: "person")
                        Text("동네생활 글")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("동네생활 댓글")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("동네생활 주제 목록")
                    }
                    
                }
                
                Section(header: Text("홍보")
                            .bold()
                            .foregroundColor(.black)) {
                    HStack {
                        Image(systemName: "person")
                        Text("비즈프로필 만들기")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("동네홍보 글")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("지역광고")
                    }
                    
                }
                
                Section(header: Text("문의")
                            .bold()
                            .foregroundColor(.black)) {
                    HStack {
                        Image(systemName: "person")
                        Text("친구초대")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("당근마켓 공유")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("공지사항")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("자주 묻는 질문")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("앱 설정")
                    }
                    
                }
            }
            .sheet(isPresented: $showModal, content: {
                Text("touch Modal")
            })
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("나의 당근")
                        .bold()
                        .font(.title2)
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    Button(action: {
                        print("Button1")
                    }){
                        Image(systemName: "bicycle")
                            .resizable()
                            .scaledToFit()
                    }
                    
                }
            }
        }
    }
}

struct MyCarrotView_Previews: PreviewProvider {
    static var previews: some View {
        MyCarrotView()
    }
}
