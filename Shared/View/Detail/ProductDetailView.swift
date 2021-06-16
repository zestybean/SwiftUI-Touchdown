//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Brando Lugo on 6/14/21.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPS
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            //DETAILTOP
            TopPartDetailView()
                .padding(.horizontal)
            //DETAILBOTTOM
            
            //RATINGS + SIZES
            
            //DESCRIPTION
            
            //QUANTITY + FAVORITE
            
            //ADD TO CART
            Spacer()
        })//VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)).ignoresSafeArea(.all, edges: .all)
    }
}

//MARK: - PREV
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            
    }
}
