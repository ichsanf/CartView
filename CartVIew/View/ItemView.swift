//
//  ItemView.swift
//  CartVIew
//
//  Created by Achmad Ichsan Fauzi on 26/10/20.
//

import SwiftUI

struct ItemView: View {
    // Binding for realTime update
    @Binding var item: Item
    
    var body: some View {
        
        HStack(spacing: 15) {
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 130)
                .cornerRadius(15)
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(item.name)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                
                Text(item.details)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                HStack(spacing: 15) {
                    
                    HStack(alignment: .bottom) {
                        Text("IDR")
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        Text("\(item.price)")
                            .font(.system(size: 25))
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                    }
                    
                    
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    
                    // Add - Sub button
                    
                    Button(action: {
                        if item.quantity > 1 {
                            item.quantity -= 1
                        }
                    }) {
                        Image(systemName: "minus")
                            .font(.system(size: 16, weight: .heavy))
                            .foregroundColor(.black)
                    }
                    
                    Text("\(item.quantity)")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 10)
                        .background(Color.black.opacity(0.06))
                    
                    Button(action: {
                        item.quantity += 1
                    }) {
                        Image(systemName: "plus")
                            .font(.system(size: 16, weight: .heavy))
                            .foregroundColor(.black)
                    }
                }
            }
        }
        .padding()
    }
}
