//
//  CartViewModel.swift
//  CartVIew
//
//  Created by Achmad Ichsan Fauzi on 26/10/20.
//

import SwiftUI

class CartViewModel: ObservableObject {
    
    @Published var items = [
    
        Item(name: "Peace Shirt", details: "Green - M", image: "image1", price: 10, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Peace Shirt", details: "Green - S", image: "image1", price: 10, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Peace Shirt", details: "Green - L", image: "image1", price: 10, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Peace Shirt", details: "Green - M", image: "image1", price: 10, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Peace Shirt", details: "Green - M", image: "image1", price: 10, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Peace Shirt", details: "Green - L", image: "image1", price: 10, quantity: 1, offset: 0, isSwiped: false)
    ]
}
