//
//  SaveView.swift
//  swift student challeng 2023
//
//  Created by 조호식 on 2023/04/04.
//

import SwiftUI

struct Save: View {
    @State var BigButton1: Bool = false
    @State var MidButton1: Bool = false
    @State var MidButton2: Bool = false
    @State var MidButton3: Bool = false
    @State var MidButton4: Bool = false
    @State var MidButton5: Bool = false
    @State var MidButton6: Bool = false
    @State var MidButton7: Bool = false
    @State var MidButton8: Bool = false
    @State var MidButton9: Bool = false
    @State var MidButton10: Bool = false
    @State var MidButton11: Bool = false
    @State var MidButton12: Bool = false
    @State var tag:Int? = nil
    
    var body: some View {
        NavigationView{
            //배경이미지
            ZStack{
                Image("main")
                    .resizable()
                    .aspectRatio(contentMode:.fill)
                    .ignoresSafeArea()
                VStack(alignment: .center){
                    
                    //저장된 이야기 1번
                    MidButtonContainer_1(midButton1: $MidButton1, midButton2: $MidButton2, midButton3: $MidButton3, midButton4: $MidButton4, midButton5: $MidButton5, midButton6: $MidButton6)
                    MidButtonContainer_2(midButton7: $MidButton7, midButton8: $MidButton8, midButton9: $MidButton9, midButton10: $MidButton10, midButton11: $MidButton11, midButton12: $MidButton12)
                    
                    NavigationLink(destination: Choice(), tag: 1, selection: self.$tag ) {
                        ZStack{
                            //다음(story)로 넘어가는 버튼
                            Button(action: {
                                BigButton1.toggle()
                                self.tag = 1;
                            }) {
                                ZStack{
                                    Image("big_button")
                                        .resizable()
                                        .frame(width: 370, height: 90)
                                        .aspectRatio(contentMode:.fit)
                                        .opacity(BigButton1 ? 1 : 1)
                                    Text("New Story")
                                        .fontWeight(.bold)
                                        .font(.system(size: 30))
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: -20, trailing: 0))
                    }
                }
            }
        }
        //            .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .statusBarHidden()
    }
}
struct Save_Previews: PreviewProvider {
    static var previews: some View {
        Save()
    }
}
