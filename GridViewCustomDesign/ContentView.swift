//
//  ContentView.swift
//  GridViewCustomDesign
//
//  Created by Ahmed Rajib on 9/11/22.
//

import SwiftUI

struct ContentView: View {
    
    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
    
    private var colors: [Color] = [.yellow, .purple, .green]
    
    private var gridItemLayout = [GridItem(.flexible())]
    private var gridItemLayout4 = [GridItem(.flexible()),GridItem(.flexible())]
    let resultGridLayout = [
        GridItem(.adaptive(minimum: 160), spacing: 10,alignment: .top),
        GridItem(.adaptive(minimum: 160), spacing: 10,alignment: .bottom),
        GridItem(.adaptive(minimum: 160), spacing: 10,alignment: .leading),
        GridItem(.adaptive(minimum: 160), spacing: 10,alignment: .trailing)
    ]
    
    private var gridItemLayout2 = [
        GridItem(.adaptive(minimum: 10,maximum: 12)),
    ]
    private var fullscreenLayout = [GridItem(.flexible())]
    
    let arr = [1,1,1,4,4,1,1,1,8,8,8]
    
    
    var body: some View {
        
        ScrollView() {
            ForEach(arr,id: \.self) { item in
                if item == 1 {
                    LazyVGrid(columns: gridItemLayout2) {
                        LazyVGrid(columns: resultGridLayout) {
                            ForEach(0...0,id: \.self) { item in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 0, style: .continuous)
                                        .fill(.blue)
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 8)
                                }
                            }
                        }
                    }
                }else if item == 4 {
                    LazyVGrid(columns: gridItemLayout4) {
                        ForEach(0...1, id:\.self) { item in
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.red)
                                .frame(width: UIScreen.screenWidth / 2.2, height: 100)
                                .padding(.horizontal, 8)
                        }
                    }
                }else if item == 8{
                    LazyVGrid(columns: gridItemLayout) {
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(.black)
                            .frame(width: UIScreen.screenWidth - 40, height: 100)
                            .padding(.horizontal, 8)
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
