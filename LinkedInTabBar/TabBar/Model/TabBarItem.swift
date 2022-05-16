//
//  TabOption.swift
//  RealEstateApp
//
//  Created by James Sedlacek on 4/10/22.
//

import SwiftUI

class TabBarItem: Equatable, Identifiable {
    let id = UUID()
    let title: String
    let image: Image
    let view: AnyView
    
    init(title: String, image: Image, view: AnyView) {
        self.title = title
        self.image = image
        self.view = view
    }
    
    static func ==(lhs: TabBarItem, rhs: TabBarItem) -> Bool {
        return lhs.title == rhs.title
    }
}

class TabBarTab: TabBarItem {
    let selectedImage: Image
    
    init(title: String, image: Image, selectedImage: Image, view: AnyView) {
        self.selectedImage = selectedImage
        super.init(title: title, image: image, view: view)
    }
}

class TabBarButton: TabBarItem { }
