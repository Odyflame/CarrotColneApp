//
//  OtherItem.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/17.
//

import Foundation
import SwiftUI

struct SellerItem: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    
    private var image: String
    var itemImage: Image {
        Image(image)
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
    
}
