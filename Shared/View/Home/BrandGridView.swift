//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Brando Lugo on 6/14/21.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPS
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, pinnedViews: [], content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })//GRID
            .frame(height: 200)
            .padding(15)
        })//SCROLL
    }
}
//MARK: - PREV
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
