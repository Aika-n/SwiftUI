//
//  ContentView.swift
//  switch05
//
//  Created by it01 on 2021/11/02.
//

import SwiftUI
extension UIApplication {
    func endEditing() {
        sendAction( #selector(UIResponder.resignFirstResponder), to: nil, from: nil,for: nil
        )
    }
}


struct ContentView: View {
    
    @State var r_value = 0
    @State var iLike = true
    @State var ans_value = ""
    @State var ans = ""
    @State var speed: Double = 50.0
    
    var body: some View {
        ZStack{ // ZStack は、ビューを同じ位置に重ねて表示する場合に使う
            //Color.whiteを背景に敷き、タップジェスチャーにキーボード表示を下げる処理を追加する
            Color.white.onTapGesture {
                UIApplication.shared.endEditing()
                
            }
            VStack {
                HStack {
                    Spacer()
                    Toggle(isOn: $iLike) { Text("表示").font(.largeTitle)
                            .multilineTextAlignment(.leading)
                    }
                    .fixedSize()
                    Spacer()
                    if iLike{
                        Text(String(r_value)).font(.largeTitle)
                    }else{
                        Text("   ").font(.largeTitle)
                    }
                    Spacer() }
                
                
                Button(action: {
                    // 0 から 100 の整数の乱数を生成する
                    let num = Int.random(in: 0 ... 100)
                    // Int 型を String 型に変換する
                    self.r_value = num
                }) { Text("ランダム値生成")
                        .font(.largeTitle)
                }
                
                
                Text(String(Int(speed)))
                    .font(.largeTitle)
                
                Slider(value: $speed,
                       in: 0...100,
                       step: 1.0
                )
                    .frame(width: 250.0)
                
//                // テキストフィールドの定義例
//                TextField("", text: $ans_value) .padding(.horizontal, 50.0) .textFieldStyle(RoundedBorderTextFieldStyle()) .keyboardType(.numberPad)
//                    .frame(width: 150.0, height: 100.0)
//                    .font(.largeTitle)
                
                Button(action: {
                    
                    let intspeed: Int = Int(speed)
                    let intr_value = Int(r_value)
                    if (intr_value == intspeed) {
                        self.ans = "当たりです！"
                    }else if (intr_value > intspeed) {
                        self.ans = "小さすぎます"
                    }else{
                        self.ans = "大きすぎます"
                    }
                }) { Text("当てる")
                        .font(.largeTitle)
                }
                .padding(.bottom, 20)
                Text(ans)
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                    .padding(.horizontal)
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
