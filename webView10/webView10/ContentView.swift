//
//  ContentView.swift
//  webView10
//
//  Created by it01 on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var isError1: Bool = false
    @State var isError2: Bool = false
    @State var isError3: Bool = false
    var body: some View {
        VStack(spacing: 100){
            //Sheet表示
            Button(action: {
                self.isError1 = true
            }) {
                Text("Yahoo!")
                }.sheet(isPresented: $isError1 ){
                    makeWebView(url: "https://yahoo.co.jp")
                }
            //Sheet表示
            Button(action: {
                self.isError2 = true
            }) {
                Text("Google")
                }.sheet(isPresented: $isError2 ){
                    makeWebView(url: "https://www.google.com/")
                }
            //Sheet表示
            Button(action: {
                self.isError3 = true
            }) {
                Text("Youtube")
                }.sheet(isPresented: $isError3 ){
                    makeWebView(url: "https://www.youtube.com/")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
