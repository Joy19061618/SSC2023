//
//  MainView.swift
//  swift student challeng 2023
//
//  Created by 조호식 on 2023/04/04.
//

import SwiftUI

struct Main: View {
    
    @State var TestSmallButton: Bool = false
    
    var body: some View {
//        NavigationView{
            ZStack{
                Color(red: 102 / 255, green: 102 / 255, blue: 102 / 255)
                    .ignoresSafeArea()
                StarView()
                //                배경화면
                //                MainImage()
//                Spacer()
                VStack{
                    Spacer()
                    SelectedInfo()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: -30, trailing: 0))
                    //선택창 설명
                    ChoiceInfo()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: -30, trailing: 0))
                    //선택 버튼
                    ChoiceButton()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                }
            }
//        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .statusBarHidden()
    }
}
struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
