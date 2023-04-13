//
//  StoryView.swift
//  swift student challeng 2023
//
//  Created by 조호식 on 2023/04/04.
//

import SwiftUI

struct SavedStoryView: View {
    @State var BigButton1: Bool = false
    @State var tag:Int? = nil
    
    
    var body: some View {
        NavigationView{
            ZStack{
                //배경이미지
                Image("story")
                    .resizable()
                    .aspectRatio(contentMode:.fill)
                    .ignoresSafeArea()
                
                
                VStack(alignment: .center){

                        
                        //스토리 올라오는 부분
                        Image("story_back")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(width: 350, height: 680 )
                            .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                        
                        //다음(choice)로 넘어가는 버튼
                    NavigationLink(destination: Save(), tag: 1, selection: self.$tag ) {
                        Button(action: {
                            BigButton1.toggle()
                            self.tag = 1;
                        }) {
                            ZStack{
                                ZStack{
                                        Image("big_button")
                                            .resizable()
                                            .frame(width: 350, height: 90)
                                            .aspectRatio(contentMode:.fill)
                                            .opacity(BigButton1 ? 1 : 1)
                                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                        Text("Save Story")
                                            .fontWeight(.bold)
                                            .font(.system(size: 30))
                                            .foregroundColor(.black)
                                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                }
                            }
                        }
                    }
                }
            }
//        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .statusBarHidden()
        }
    }


struct SavedStoryView_Previews: PreviewProvider {
    static var previews: some View {
        SavedStoryView()
    }
}
