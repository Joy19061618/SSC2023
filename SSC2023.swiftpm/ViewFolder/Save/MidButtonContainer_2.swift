//
//  SwiftUIView.swift
//
//
//  Created by 조호식 on 2023/04/05.
//

import SwiftUI

struct MidButtonContainer_2: View {
    
    @Binding
    var midButton7: Bool
    @Binding
    var midButton8: Bool
    @Binding
    var midButton9: Bool
    @Binding
    var midButton10: Bool
    @Binding
    var midButton11: Bool
    @Binding
    var midButton12: Bool

    
    var body: some View {
        MidButtonView(midButton: $midButton7)
        MidButtonView(midButton: $midButton8)
        MidButtonView(midButton: $midButton9)
        MidButtonView(midButton: $midButton10)
        MidButtonView(midButton: $midButton11)
        MidButtonView(midButton: $midButton12)
    }
}
