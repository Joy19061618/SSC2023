//
//  TitleView.swift
//  swift student challeng 2023
//
//  Created by 조호식 on 2023/04/04.
//

import SwiftUI

struct Title: View {
    @State var BigButton1: Bool = false
    @State var BigButton2: Bool = false
    
    var body: some View {
        
        NavigationView{
            //배경이미지
            ZStack{
                
                Color(red: 102 / 255, green: 102 / 255, blue: 102 / 255)
                    .ignoresSafeArea()
//                Image("title")
//                    .resizable()
//                    .aspectRatio(contentMode:.fill)
//                    .ignoresSafeArea()
                VStack(alignment: .center){
                    Text("Long Long Time A Go")
                        .fontWeight(.bold)
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                    Text("In Star")
                        .fontWeight(.bold)
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 140, trailing: 0))
                }
                VStack(alignment: .center){
//                    Spacer()
                    ZStack{
                        //다음(story)로 넘어가는 버튼
                        Button(action: {
                            BigButton1.toggle()
                        }) {
                            ZStack{
                                NavigationLink(destination: Main()){
                                    ZStack{
                                        Image("big_button")
                                            .resizable()
                                            .frame(width: 750, height: 90)
                                            .aspectRatio(contentMode:.fit)
                                            .opacity(BigButton1 ? 1 : 1)
                                        Text("New Story")
                                            .fontWeight(.bold)
                                            .font(.system(size: 50))
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 550, leading: 0, bottom: 0, trailing: 0))
                    ZStack{
                        //다음(save)로 넘어가는 버튼
                        Button(action: {
                            BigButton2.toggle()
                        }) {
                            ZStack{
                                NavigationLink(destination: Save()){
                                    ZStack{
                                        Image("big_button")
                                            .resizable()
                                            .frame(width: 750, height: 90)
                                            .aspectRatio(contentMode:.fit)
                                            .opacity(BigButton2 ? 1 : 1)
                                        Text("Saved Story")
                                            .fontWeight(.bold)
                                            .font(.system(size: 50))
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                }
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .statusBarHidden()
    }
    
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title()
    }
}
