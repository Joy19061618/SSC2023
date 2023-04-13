//
//  SwiftUIView.swift
//  
//
//  Created by 조호식 on 2023/04/05.
//

import SwiftUI

struct MidButtonContainer_1: View {
    
    @Binding
    var midButton1: Bool
    @Binding
    var midButton2: Bool
    @Binding
    var midButton3: Bool
    @Binding
    var midButton4: Bool
    @Binding
    var midButton5: Bool
    @Binding
    var midButton6: Bool

    
    var body: some View {
        MidButtonView(midButton: $midButton1)
        MidButtonView(midButton: $midButton2)
        MidButtonView(midButton: $midButton3)
        MidButtonView(midButton: $midButton4)
        MidButtonView(midButton: $midButton5)
        MidButtonView(midButton: $midButton6)
    }
}
