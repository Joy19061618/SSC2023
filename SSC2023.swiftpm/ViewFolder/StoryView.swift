//
//  StoryView.swift
//  swift student challeng 2023
//
//  Created by 조호식 on 2023/04/04.
//

import SwiftUI

struct DashedShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}


struct StoryView: View {
    @State var BigButton1: Bool = false
    @State var tag:Int? = nil
    
    
    var body: some View {
        ZStack{
            Color(red: 102 / 255, green: 102 / 255, blue: 102 / 255)
                .ignoresSafeArea()
            VStack(alignment: .center){
                
                
                //스토리 올라오는 부분
                Spacer()
                DashedShape()
                    .stroke(style: StrokeStyle(lineWidth: 6, dash: [10]))
                    .foregroundColor(.white)
                    .frame(width: 750, height: 1000)
                    .background(Color.white)
                    .opacity(BigButton1 ? 1 : 0.3)
                    .cornerRadius(10)
                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                
                //다음(choice)로 넘어가는 버튼
                NavigationLink(destination: Choice(), tag: 1, selection: self.$tag ) {
                    Button(action: {
                        BigButton1.toggle()
                        self.tag = 1;
                    }) {
                        ZStack{
                            ZStack{
                                DashedShape()
                                    .stroke(style: StrokeStyle(lineWidth: 6, dash: [10]))
                                    .foregroundColor(.white)
                                    .frame(width: 750, height: 90)
                                    .background(Color.white)
                                    .opacity(BigButton1 ? 1 : 0.3)
                                    .cornerRadius(10)
//                                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
//                                Image("big_button")
//                                    .resizable()
//                                    .frame(width: 750, height: 90)
//                                    .aspectRatio(contentMode:.fill)
//                                    .opacity(BigButton1 ? 1 : 1)
//                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                                Text("Next")
                                    .fontWeight(.bold)
                                    .font(.system(size: 50))
                                    .foregroundColor(.white)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            }
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                        }
                    }
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .statusBarHidden()
    }
}


struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
