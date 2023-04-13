//
//  SwiftUIView.swift
//  
//
//  Created by 조호식 on 2023/04/06.
//

import SwiftUI

struct ChoiceInfo: View {
    @State var MidButton: Bool = false
    
    var body: some View {
        // 선택 안내창
        ZStack{
            Image("mid_button")
                .resizable()
                .frame(width: 750, height: 50)
                .aspectRatio(contentMode:.fill)
                .opacity(MidButton ? 1 : 1)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
            Text("Please choose the main character")
                .fontWeight(.bold)
                .font(.system(size: 25))
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
        }
    }
}

struct ChoiceInfo_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceInfo()
    }
}
