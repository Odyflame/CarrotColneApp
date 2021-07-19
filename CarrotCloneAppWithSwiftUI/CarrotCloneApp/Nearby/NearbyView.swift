//
//  NearbyView.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/17.
//

import SwiftUI

struct NearbyView: View {
    @State var searchText = ""
    
    let myFruits = [
        "Apple 🍏", "Banana 🍌", "Blueberry 🫐", "Strawberry 🍓", "Avocado 🥑", "Cherries 🍒", "Mango 🥭", "Watermelon 🍉", "Grapes 🍇", "Lemon 🍋"
    ]
    
    let category = [
        "마카롱", "피부관리", "이사", "중고폰", "필라테스", "헬스장", "과외", "안경", "헬스"
    ]
    
    let rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationView {
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("lightgray"))
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search ..", text: $searchText)
                        
                    }
                    .foregroundColor(.orange)
                    .padding(.leading, 12)
                }
                .frame(height: 40)
                .cornerRadius(8)
                .padding(.top, 10)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, alignment: .center) {
                        ForEach(category, id: \.self) { item in
                            Text(item)
                                .fontWeight(.bold)
                                .font(.none)
                                    .padding(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color.gray, lineWidth: 1)
                                    )
                        }
                    }
                }
                .frame(height: 50)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                
                Divider()
                
                CategoryGridView()
                    .padding(20)
//                List {
//                    ForEach(myFruits, id: \.self) { fruit in
//                        Text(fruit)
//                    }
//                }
//                .listStyle(GroupedListStyle())
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("내 근처")
                        .bold()
                        .font(.title2)
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    Button(action: {
                        print("Button1")
                    }){
                        Image("write")
                            .resizable()
                            .scaledToFit()
                    }
                    
                    Button(action: {
                        print("Button2")
                    }){
                        Image("qr")
                            .resizable()
                            .scaledToFit()
                    }
                    
                    Button(action: {
                        print("Button2")
                    }){
                        Image("noti")
                            .resizable()
                            .scaledToFit()
                    }
                    
                }
            }
        }
        
    }
}

struct NearbyView_Previews: PreviewProvider {
    static var previews: some View {
        NearbyView()
    }
}
