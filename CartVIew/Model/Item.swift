//
//  Item.swift
//  CartVIew
//
//  Created by Achmad Ichsan Fauzi on 26/10/20.
//

import SwiftUI

struct Item: Identifiable {
    
    var id = UUID().uuidString
    var name: String
    var details: String
    var image: String
    var price: Int
    var quantity: Int
    var offset: CGFloat
    var isSwiped: Bool
    
}
