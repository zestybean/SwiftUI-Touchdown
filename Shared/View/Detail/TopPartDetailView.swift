//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Brando Lugo on 6/14/21.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPS
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })//VSTACK
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            //PHOTO
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0: -35)
        })//HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

//MARK: - PREV
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
