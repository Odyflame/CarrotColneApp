//
//  HomeView.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/15.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    @State private var filter = FilterCategory.house
    @State private var selectedItem: Item?
    @State private var selectedMenu = false
    
    enum FilterCategory: String, CaseIterable, Identifiable {
        case clothes = "SamsungDong"
        case food = "IllwonDong"
        case house = "Setting My Hometown"
        
        var id: FilterCategory { self }
    }
    
    var index: Int? {
        modelData.items.firstIndex {
            $0.id == selectedItem?.id
        }
    }
    
    var filterdItem: [Item] {
        modelData.items.filter { item in
            (!showFavoritesOnly || item.isFavorite) && (filter == .house || filter.rawValue == item.city)
        }
    }
    
    var body: some View {
        NavigationView {
            List(selection: $selectedItem) {
                ForEach(filterdItem) { item in
                    NavigationLink(
                        destination: DetailShoppingView(item: item),
                        label: {
                            HomRow(item: item)
                        })
                        .tag(item)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .frame(minWidth: 300)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    Menu {
                        Picker("Category", selection: $filter) {
                            ForEach(FilterCategory.allCases) { category in
                                Text(category.rawValue).tag(category)
                            }
                        }
                        .pickerStyle(InlinePickerStyle())
                        
                    } label: {
                        Label(filter.rawValue, systemImage: "slider.horizontal.3")
                    }
                    
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    Button(action: {
                        print("Button1")
                    }){
                        Image("magnifier")
                            .resizable()
                            .scaledToFit()
                    }
                    
                    Button(action: {
                        print("Button2")
                    }){
                        Image("list")
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ModelData())
    }
}
