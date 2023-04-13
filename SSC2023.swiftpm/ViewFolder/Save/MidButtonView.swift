//
//  SwiftUIView.swift
//  
//
//  Created by 조호식 on 2023/04/05.
//

import SwiftUI

struct MidButtonView: View {
    @Binding
    var midButton: Bool
    
    
    
    @State var tag:Int? = nil
    var body: some View {
//        NavigationView{
            NavigationLink(destination: SavedStoryView(), tag: 1, selection: self.$tag) {
                ZStack{
                    Button(action: {
                        midButton.toggle()
                        self.tag = 1;
                    }) {
                        ZStack{
                            Image("mid_button")
                                .resizable()
                                .frame(width: 370, height: 47)
                                .aspectRatio(contentMode:.fill)
                                .opacity(midButton ? 1 : 1)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                            Text("Please choose the main character")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                        }
                    }
                }
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: -30, trailing: 0))
        }
    }
