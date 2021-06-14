//
//  TitleView.swift
//  Touchdown
//
//  Created by Brando Lugo on 6/14/21.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPS
    var title: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
            
    }
}

//MARK: - PREV
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
