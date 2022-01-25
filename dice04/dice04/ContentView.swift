//
//  ContentView.swift
//  dice04
//
//  Created by it01 on 2021/10/26.
//

import SwiftUI

struct ContentView: View {
    //@State の記述で、管理を SwiftUI フレームワークに反映させて値を更新することができるようにする
    @State var labelText = "本日のランチ"
    @State var font = Font.largeTitle
    @State var color = Color.red
    
    var body: some View {
        HStack {
            VStack {
                VStack {
                    
                    Text("今日の昼食は")
                    
                    Image(labelText)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
//                    Text(labelText)
//                        .padding()
//                        .font(.system(size: 70))
//                        .foregroundColor(color)
                    
        //            Spacer() // 適切な空白を挿入する
                    
                    Button(action: {
                        let foods = ["お寿司", "カルボナーラ", "ピザ", "ねるねるねるね", "焼肉", "よくわかんない"]
                        let food = foods.randomElement()!
                        self.labelText = food
                    }) {
                        Text("サイコロを振る")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
