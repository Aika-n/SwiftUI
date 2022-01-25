//
//  ContentView.swift
//  buttonTest03
//
//  Created by it01 on 2021/10/19.
//

import SwiftUI

struct ContentView: View {
    //@State の記述で、管理を SwiftUI フレームワークに反映させて値を更新することができるようにする
    @State var labelText = "Hello, World!"
    @State var flag = false
    @State var font = Font.largeTitle
    @State var color = Color.black
    
    @State var flag2 = false
    var body: some View {
        VStack { // 垂直方向へ記述順にレイアウトする
            Spacer() // 適切な空白を挿入する
            Text(labelText)
                .font(font)
                .foregroundColor(color)
            
            Spacer()// 適切な空白を挿入する
            Button(action: { // ボタンが押された時の処理はここに記述する
                if(self.flag){
                    self.labelText = "こんにちは" // flag の値を反転させる
                    self.flag.toggle()
                    self.font = .system(size: 50)
                    self.color = .green
                } else{
                    self.labelText = "さようなら"
                    // flag の値を反転させる
                    self.flag.toggle()
                    self.font = .system(size: 40)
                    self.color = .red
                }
            }) {
                Text("ボタン")
                    .font(.largeTitle)
            }
            
            Spacer()
//            HStack {
            Button(action: {
                if(self.flag2){
                    self.labelText = "Hello!"
                    self.flag2.toggle()
                    self.font = .system(size: 10)
                    self.color = .blue
                        
                }else{
                        
                    self.labelText = "Good Bye"
                    self.flag2.toggle()
                    self.font = .system(size: 30)
                    self.color = .orange
                }
                    
            }) {
                Text("Button2")
                    .font(.largeTitle)
            }
            Spacer()
//            }// 適切な空白を挿入する
            
            
        }
    }
    struct ContentView_Previews: PreviewProvider { static var previews: some View {
        ContentView()
    }}
}
