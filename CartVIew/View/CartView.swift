//
//  CartView.swift
//  CartVIew
//
//  Created by Achmad Ichsan Fauzi on 26/10/20.
//

import SwiftUI

struct CartView: View {
    @StateObject var cartData = CartViewModel()
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Button(action: {}) {
                    
                    Image(systemName: "chevron.left")
                        .font(.system(size: 26, weight: .heavy))
                        .foregroundColor(.black)
                }
                
                Text("My Cart")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 0) {
                    ForEach(cartData.items) { item in
                        ItemView(item: $cartData.items[getIndex(item: item)])
                    }
                }
            }
        }
        .background(Color("gray").ignoresSafeArea())
    }
    
    func getIndex(item: Item) -> Int {
        
        return cartData.items.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
    }
    
    func calculateTotalPrice() -> String {
        var price: Int = 0
        
        cartData.items.forEach { (item) in
            price += Int(item.quantity) * item.price
        }
        
        return getPrice(value: price)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
