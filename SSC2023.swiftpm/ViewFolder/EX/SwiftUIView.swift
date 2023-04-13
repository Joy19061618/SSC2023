//
//  SwiftUIView.swift
//  
//
//  Created by 조호식 on 2023/04/06.
//
import SwiftUI

struct SwiftUIView: View {
    @State private var count = 0
    @State private var shouldNavigate = false
    @State private var tag: Int? = nil
    
    var body: some View {
        VStack {
            Text("Count: \(count)")
                .font(.largeTitle)
            Button("Increment Count") {
                count += 1
                if count == 5 {
                    // Set the tag to trigger navigation
                    tag = 1
                }
            }
            // Use the NavigationLink to navigate to the next view
            NavigationLink(
                destination: TiView(),
                tag: 1,
                selection: $tag,
                label: { EmptyView() }
            )
        }
    }
}

struct TiView: View {
    var body: some View {
        Text("This is the Title View!")
            .font(.largeTitle)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
