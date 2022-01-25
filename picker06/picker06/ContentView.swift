//
//  ContentView.swift
//  picker06
//
//  Created by it01 on 2021/11/09.
//

import SwiftUI

struct ContentView: View {
    @State private var selectColor = 0
    @State private var selectSize = 0
    @State private var dateTime = Date() // 現在日時取得
    @State private var count = 0
    
    let colorViews = [Color.red, Color.green, Color.blue, Color.white, Color.black, Color.yellow]
    let colorNames = ["赤","緑","青","白","黒","黄"]
    let size = ["XS","S","M","L","LL"]
    
    var dateformat: DateFormatter { // 日時表示ﾌｫｰﾏｯﾄ定義
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.dateStyle = .full
        df.timeStyle = .short
        return df
    }
    
    
    var body: some View {
        VStack {
            HStack{
                Picker(selection: $selectSize, label: Text("")) {
                    // 繰り返しに ForEach 構文を使用する例
                    ForEach(0..<size.count){ index in
                        Text(self.size[index]).tag(index)
                    }
                }
                .frame(width: 200)
                .pickerStyle(WheelPickerStyle())
                .onAppear(perform: {
                    // ﾎｲｰﾙﾋﾟｯｶｰに表示される個数を半分に限定する
                    self.selectSize = self.size.count/2
                })
                
                Picker(selection: $selectColor, label: Text("")) {
                    // 繰り返しに ForEach 構文を使用する例
                    ForEach(0..<colorNames.count){ index in
                        Text(self.colorNames[index]).tag(index)
                    }
                }
                .frame(width: 200)
                .pickerStyle(WheelPickerStyle())
                .onAppear(perform: {
                    // ﾎｲｰﾙﾋﾟｯｶｰに表示される個数を半分に限定する
                    self.selectColor = self.colorNames.count/2
                })
                
                
            }
            // サイズとカラーの表示
            HStack{
                Text("サイズ：\(size[selectSize])") // ¥ は、半角バックスラッシュ”＼”
                    .padding(.horizontal, 40)
                Text("カラー：\(colorNames[selectColor])")
                    .padding(.horizontal, 40)
            }
            .foregroundColor(Color.white)
            .font(.headline)
            .background( // 背景の表示
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 40)
                    .foregroundColor(Color.gray))
            
            // Stepper の定義例
            Stepper(value: $count, in: 0...100) {
                Text("数量：\(self.count)")
            }
            .frame(width: 200, height: 100, alignment: .center)
            // 分割線の表示
            Divider()
            // 日時の表示例
            Text(dateformat.string(from: dateTime)).font(.headline)
            // DatePicker の表示例
            DatePicker(selection: $dateTime, label: {Text("")})
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View{
        ContentView()
    }
}
