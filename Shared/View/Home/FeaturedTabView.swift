//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Brando Lugo on 6/12/21.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - PROPS
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }//TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

//MARK: - PREV
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
