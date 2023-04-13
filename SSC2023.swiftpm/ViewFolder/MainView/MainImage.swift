//
//  SwiftUIView.swift
//  
//
//  Created by 조호식 on 2023/04/11.
//

import SwiftUI

struct MainImage: View {
    var body: some View {
        Image("main")
            .resizable()
            .aspectRatio(contentMode:.fill)
            .ignoresSafeArea()
    }
}

struct MainImage_Previews: PreviewProvider {
    static var previews: some View {
        MainImage()
    }
}
