//
//  ModelData.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/15.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var items: [Item] = load("itemList.json")
    @Published var sellerItems: [SellerItem] = load("otherItemList.json")
    @Published var profile = Profile.default
    
    var features: [Item] {
        items.filter { $0.isFeatured }
    }
    
    var categories: [String: [Item]] {
        Dictionary(
            grouping: items,
            by: { $0.category.rawValue }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
