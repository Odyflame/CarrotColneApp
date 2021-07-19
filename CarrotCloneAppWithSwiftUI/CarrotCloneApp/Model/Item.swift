//
//  ShoppingData.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/15.
//

import Foundation
import SwiftUI

struct Item: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    
    var city: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case clothes = "Clothes"
        case food = "Food"
        case house = "House"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    private var price: Int
    var sellPrice: String? {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current

        let num = NSNumber(value: Int32(price))
        let priceString = currencyFormatter.string(from: num)
        return priceString
    }
    
    var chatNum: Int
    var messageNum: Int
    var heartNum: Int
   
    var sellerId: String
    private var sellerImage: String
    var sellerImg: Image {
        Image(sellerImage)
    }
    
    var interestNum: Int
    var checkNum: Int
}
