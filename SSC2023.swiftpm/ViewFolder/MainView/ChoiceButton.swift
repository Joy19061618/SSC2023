//
//  SwiftUIView.swift
//  
//
//  Created by 조호식 on 2023/04/06.
//

import SwiftUI

struct ChoiceButton: View {
    
    @EnvironmentObject
    var globalStore: GlobalStore
    
    
    @State var SmallButton: Bool = false
//    @State var SmallButton2: Bool = false
//    @State var SmallButton3: Bool = false
//    @State var SmallButton4: Bool = false
//    @State var SmallButton5: Bool = false
//    @State var SmallButton6: Bool = false
//    @State var SmallButton7: Bool = false
//    @State var SmallButton8: Bool = false
//    @State var SmallButton9: Bool = false
    @State var count = 0
    @State var shouldNavigate: Bool = false
    @State var tag:Int? = nil
    
    
    var body: some View {
        //선택 버튼
        //첫번째 줄
            ZStack{
                VStack{
                    HStack(alignment: .center){
                        
                        if(shouldNavigate){
                            NavigationLink(destination: StoryView(), tag: 1, selection: self.$tag ) {}}
                        
                            Button(action: {
                                globalStore.isSmallbuttonActive.toggle()
                                SmallButton.toggle()
                                count += 1
                                if count == 5 {
                                    tag = 1;
                                    shouldNavigate = true
                                }
                            }) {
                                ZStack{
                                    Image("small_button")
                                        .resizable()
                                        .frame(width: 245, height: 47)
                                        .aspectRatio(contentMode:.fill)
                                        .opacity(SmallButton ? 1 : 1)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                    Text("블라블라1")
                                        .fontWeight(.bold)
                                        .font(.system(size: 25))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                }
                            }
                            Button(action: {
                                SmallButton.toggle()
                                count += 1
                                if count == 5 {
                                    tag = 1;
                                    shouldNavigate = true
                                }                            }) {
                                ZStack{
                                    Image("small_button")
                                        .resizable()
                                        .frame(width: 245, height: 47)
                                        .aspectRatio(contentMode:.fill)
                                        .opacity(SmallButton ? 1 : 1)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                    Text("블라블라2")
                                        .fontWeight(.bold)
                                        .font(.system(size: 25))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                }
                            }
                            Button(action: {
                                SmallButton.toggle()
                                count += 1
                                if count == 5 {
                                    tag = 1;
                                    shouldNavigate = true
                                }                            }) {
                                ZStack{
                                    Image("small_button")
                                        .resizable()
                                        .frame(width: 245, height: 47)
                                        .aspectRatio(contentMode:.fill)
                                        .opacity(SmallButton ? 1 : 1)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                    Text("블라블라3")
                                        .fontWeight(.bold)
                                        .font(.system(size: 25))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                }
                            }
                        }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: -30, trailing: 0))
                        //두번째 줄
                        HStack(alignment: .center){
                            Button(action: {
                                SmallButton.toggle()
                                count += 1
                                if count == 5 {
                                    tag = 1;
                                    shouldNavigate = true
                                }                            }) {
                                ZStack{
                                    Image("small_button")
                                        .resizable()
                                        .frame(width: 245, height: 47)
                                        .aspectRatio(contentMode:.fill)
                                        .opacity(SmallButton ? 1 : 1)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                    Text("블라블라4")
                                        .fontWeight(.bold)
                                        .font(.system(size: 25))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                }
                            }
                            Button(action: {
                                SmallButton.toggle()
                                count += 1
                                if count == 5 {
                                    tag = 1;
                                    shouldNavigate = true
                                }                            }) {
                                ZStack{
                                    Image("small_button")
                                        .resizable()
                                        .frame(width: 245, height: 47)
                                        .aspectRatio(contentMode:.fill)
                                        .opacity(SmallButton ? 1 : 1)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                    Text("블라블라5")
                                        .fontWeight(.bold)
                                        .font(.system(size: 25))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                }
                            }
                            Button(action: {
                                SmallButton.toggle()
                                count += 1
                                if count == 5 {
                                    tag = 1;
                                    shouldNavigate = true
                                }                            }) {
                                ZStack{
                                    Image("small_button")
                                        .resizable()
                                        .frame(width: 245, height: 47)
                                        .aspectRatio(contentMode:.fill)
                                        .opacity(SmallButton ? 1 : 1)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                    Text("블라블라6")
                                        .fontWeight(.bold)
                                        .font(.system(size: 25))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                }
                            }
                        }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: -30, trailing: 0))
                        //세번째 줄
                        HStack(alignment: .center){
                            Button(action: {
                                SmallButton.toggle()
                                count += 1
                                if count == 5 {
                                    tag = 1;
                                    shouldNavigate = true
                                }                            }) {
                                ZStack{
                                    Image("small_button")
                                        .resizable()
                                        .frame(width: 245, height: 47)
                                        .aspectRatio(contentMode:.fill)
                                        .opacity(SmallButton ? 1 : 1)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                    Text("블라블라7")
                                        .fontWeight(.bold)
                                        .font(.system(size: 25))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                }
                            }
                            Button(action: {
                                SmallButton.toggle()
                                count += 1
                                if count == 5 {
                                    tag = 1;
                                    shouldNavigate = true
                                }                            }) {
                                ZStack{
                                    Image("small_button")
                                        .resizable()
                                        .frame(width: 245, height: 47)
                                        .aspectRatio(contentMode:.fill)
                                        .opacity(SmallButton ? 1 : 1)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                    Text("블라블라8")
                                        .fontWeight(.bold)
                                        .font(.system(size: 25))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                }
                            }
                            Button(action: {
                                SmallButton.toggle()
                                count += 1
                                if count == 5 {
                                    tag = 1;
                                    shouldNavigate = true
                                }                            }) {
                                ZStack{
                                    Image("small_button")
                                        .resizable()
                                        .frame(width: 245, height: 47)
                                        .aspectRatio(contentMode:.fill)
                                        .opacity(SmallButton ? 1 : 1)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                    Text("블라블라9")
                                        .fontWeight(.bold)
                                        .font(.system(size: 25))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                }
                            }
                        }
                    }
                }
            }
        }

struct ChoiceButton_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceButton()
    }
}
