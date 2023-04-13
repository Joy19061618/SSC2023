//
//  ChoiceView.swift
//  swift student challeng 2023
//
//  Created by 조호식 on 2023/04/04.
//

import SwiftUI

struct Choice: View {
    @State var BigButton1: Bool = false
    @State var BigButton2: Bool = false
    @State var tag:Int? = nil
    var body: some View {
        ZStack{
            Color(red: 102 / 255, green: 102 / 255, blue: 102 / 255)
                .ignoresSafeArea()
            VStack(alignment: .center){
                NavigationLink(destination: Main(), tag: 1, selection: self.$tag ) {
                    ZStack{
                        ZStack{
                            //다음(story)로 넘어가는 버튼
                            Button(action: {
                                BigButton1.toggle()
                                self.tag = 1;
                            }) {
                                ZStack{
                                    Image("big_button")
                                        .resizable()
                                        .frame(width: 750, height: 90)
                                        .aspectRatio(contentMode:.fit)
                                        .opacity(BigButton1 ? 1 : 1)
                                    Text("New Story")
                                        .fontWeight(.bold)
                                        .font(.system(size: 40))
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        .padding()
                    }
                }
                NavigationLink(destination: StoryView(), tag: 2, selection: self.$tag ) {
                    ZStack{
                        ZStack{
                            //다음(save)로 넘어가는 버튼
                            Button(action: {
                                BigButton2.toggle()
                                self.tag = 2;
                            }) {
                                ZStack{
                                    Image("big_button")
                                        .resizable()
                                        .frame(width: 750, height: 90)
                                        .aspectRatio(contentMode:.fit)
                                        .opacity(BigButton2 ? 1 : 1)
                                    Text("Replay Story")
                                        .fontWeight(.bold)
                                        .font(.system(size: 40))
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                }
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .statusBarHidden()
    }
}
struct ChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        Choice()
    }
}
