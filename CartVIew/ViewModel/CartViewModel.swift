//
//  CartViewModel.swift
//  CartVIew
//
//  Created by Achmad Ichsan Fauzi on 26/10/20.
//

import SwiftUI

class CartViewModel: ObservableObject {
    
    @Published var items = [
    
        Item(name: "Peace Shirt", details: "Green - M", image: "p1", price: 45, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Peace Shirt", details: "Green - S", image: "p2", price: 40, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Peace Shirt", details: "Green - L", image: "p3", price: 45, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Peace Shirt", details: "Green - M", image: "p4", price: 35, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Peace Shirt", details: "Green - M", image: "p5", price: 40, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Peace Shirt", details: "Green - L", image: "p6", price: 50, quantity: 1, offset: 0, isSwiped: false)
    ]
}
