//
//  SwiftUIView.swift
//  
//
//  Created by 조호식 on 2023/04/06.
//

import SwiftUI

struct SelectedInfo: View {
    @State var MidButton: Bool = false
    
    var body: some View {
        //별 선택 화면창
        ZStack{
            Image("selected_back")
                .resizable()
                .frame(width: 750, height: 300)
                .aspectRatio(contentMode:.fill)
                .opacity(MidButton ? 1 : 1)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
            Text("""
1st star was chosen.
2nd star was chosen.
3th star was chosen.
4th star was chosen.
5th star was chosen.
""")
            .fontWeight(.bold)
            .font(.system(size: 40))
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
        }
    }
}

struct SelectedInfo_Previews: PreviewProvider {
    static var previews: some View {
        SelectedInfo()
    }
}
