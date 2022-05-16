//
//  IconView.swift
//  LinkedInTabBar
//
//  Created by James Sedlacek on 5/15/22.
//

import SwiftUI

struct IconView: View {
    let image: Image
    let foregroundColor: Color
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 22, height: 22)
            .foregroundColor(foregroundColor)
            .padding(.top, 4)
    }
}
