//
//  ContentView.swift
//  tabView11
//
//  Created by it01 on 2022/01/11.
//

import SwiftUI

struct ContentView: View {
    @State var isError1: Bool = false
    @State var isError2: Bool = false
    @State var isError3: Bool = false
    @State var isError4: Bool = false
    @State var isError5: Bool = false
    @State var isError6: Bool = false
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection) {
            VStack{
                Image("gyudon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                Text("牛丼")
                HStack{
                    Button(action: {
                        self.isError1 = true
                    }) {
                        Text("すき家").font(.title)
                        }.sheet(isPresented: $isError1 ){
                            makeWebView(url: "https://www.sukiya.jp/sp/")
                        }
                    Button(action: {
                            self.isError1 = true
                        }) {
                            Text("吉野家").font(.title)
                            }.sheet(isPresented: $isError2 ){
                                makeWebView(url: "https://www.yoshinoya.com/")
                            }
                }
            }
                .tabItem {
                    Image("first")
                    Text("牛丼")
            }
                .tag(1)
                .font(.largeTitle)
            VStack{
                Image("curry")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    Button(action: {
                        self.isError3 = true
                    }) {
                        Text("CoCo壱番屋").font(.title)
                        }.sheet(isPresented: $isError3 ){
                            makeWebView(url: "https://www.ichibanya.co.jp/menu/")
                        }
                    Button(action: {
                            self.isError4 = true
                        }) {
                            Text("ジパングカリーカフェ").font(.title)
                            }.sheet(isPresented: $isError4 ){
                                makeWebView(url: "https://zipangucurry.com/")
                            }
                
            }
                .tabItem {
                    Image("second")
                    Text("カレー")
            }
                .tag(2)
                .font(.largeTitle)
            VStack{
                Image("ramen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    Button(action: {
                        self.isError3 = true
                    }) {
                        Text("ずんどう屋").font(.title)
                        }.sheet(isPresented: $isError3 ){
                            makeWebView(url: "http://www.zundouya.com/")
                        }
                    Button(action: {
                            self.isError4 = true
                        }) {
                            Text("らぁ麺 鳳仙花横浜店").font(.title)
                            }.sheet(isPresented: $isError4 ){
                                makeWebView(url: "https://g.co/kgs/44LAZT")
                            }
                
            }
                .tabItem {
                    Image("third")
                    Text("ラーメン")
            }
                .tag(3)
                .font(.largeTitle)
        }
} }
   

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
