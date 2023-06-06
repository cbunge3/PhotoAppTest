//
//  ContentView.swift
//  PhotoAppTest
//
//  Created by Cory Bunge on 6/6/23.
//

import SwiftUI

struct ContentView: View {
    var images = [0,1,2,3]
    var body: some View {
        ScrollView {
            VStack(spacing:0) {
                ForEach(images, id:\.self) { _ in
                    Image(.rossi)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height)
                }
            }
                   
        }
        .scrollTargetBehavior(.paging)
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
