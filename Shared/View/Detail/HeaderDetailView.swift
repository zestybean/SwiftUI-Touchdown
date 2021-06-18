//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Brando Lugo on 6/14/21.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROPS
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
                .foregroundColor(.white)
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        })
    }
}

//MARK: - PREV
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
