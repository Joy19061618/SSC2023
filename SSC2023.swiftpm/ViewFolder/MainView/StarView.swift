//
//  SwiftUIView.swift
//  
//
//  Created by 조호식 on 2023/04/05.
//

import SwiftUI

struct StarView: View {
    
    @EnvironmentObject
    var globalStore: GlobalStore
    
    @State var MidButton: Bool = false
    
    var body: some View {
        ZStack{
            //랜덤으로 켜져야 하는 별 1호
            Image(systemName: "star")
                .offset(y: globalStore.isSmallbuttonActive ? -500 : 0)
//                .resizable()
                .frame(width: 100, height: 100)
//                .aspectRatio(contentMode:.fill)
                .opacity(MidButton ? 1 : 1)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 650, trailing: 510))
            
            //랜덤으로 켜져야 하는 별 2호
            Image(systemName: "star")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode:.fill)
                .opacity(MidButton ? 1 : 1)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 950, trailing: 250))
            
            //랜덤으로 켜져야 하는 별 3호
            Image(systemName: "star")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode:.fill)
                .opacity(MidButton ? 1 : 1)
                .padding(EdgeInsets(top: 0, leading: 100, bottom: 660, trailing: 0))
            
            //랜덤으로 켜져야 하는 별 4호
            Image(systemName: "star")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode:.fill)
                .opacity(MidButton ? 1 : 1)
                .padding(EdgeInsets(top: 0, leading: 100, bottom: 420, trailing: 0))
            
            //랜덤으로 켜져야 하는 별 5호
            Image(systemName: "star")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode:.fill)
                .opacity(MidButton ? 1 : 1)
                .padding(EdgeInsets(top: 0, leading: 490, bottom: 240, trailing: 0))
        }
    }
}
struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView()
    }
}
