//
//  ContentView.swift
//  iosWork07
//
//  Created by it01 on 2021/11/09.
//

import SwiftUI

struct ContentView: View {
    
    // 現在日時取得
    @State private var dateTime = Date()
    
    @State private var number = "1"
    
    @State var color1: Color = .white
    @State var color2: Color = .white
    //DateFormatterを使用して書式とロケールを指定する
    
    //月の配列
    let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

    var dateformat: DateFormatter { // 日時表示ﾌｫｰﾏｯﾄ定義
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.dateStyle = .full
        df.timeStyle = .short
        return df
    }
    
    var monthformat: Int { // 日時表示ﾌｫｰﾏｯﾄ定義
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.dateFormat = "M"
        let sgetMonth = df.string(from: dateTime)
        let igetMonth = Int(sgetMonth)!
        
        
        return igetMonth
    }
    
    var body: some View {
        ZStack{
            //背景グラデーション
            LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .top, endPoint: .bottom)
                             .ignoresSafeArea()
            VStack{
                
                // 日時の表示例
                Text(dateformat.string(from: dateTime))
                    .font(.title)
                    .fontWeight(.ultraLight)
                // DatePicker の表示例
                DatePicker(selection: $dateTime, label: {Text("")})
                
                // 分割線の表示
                Divider()
                
                //表示されている月を取得1して画像表示
                Image(months[monthformat - 1] + number)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                // 分割線の表示
                Divider()
                
                
                Button(action: {
                    let numbers = ["1", "2", "3"]
                    let num = numbers.randomElement()!
                    self.number = num
                    if(monthformat == 1){
                        switch self.number{
                        case "1":
                            color1 = .black
                            color2 = .orange
                            break
                        case "2":
                            color1 = .blue
                            color2 = .yellow
                            break
                        case "3":
                            color1 = .green
                            color2 = .pink
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }else if(monthformat == 2){
                        switch self.number{
                        case "1":
                            color1 = .black
                            color2 = .black
                            break
                        case "2":
                            color1 = .pink
                            color2 = .white
                            break
                        case "3":
                            color1 = .black
                            color2 = .black
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }else if(monthformat == 3){
                        switch self.number{
                        case "1":
                            color1 = .green
                            color2 = .yellow
                            break
                        case "2":
                            color1 = .white
                            color2 = .blue
                            break
                        case "3":
                            color1 = .pink
                            color2 = .white
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }else if(monthformat == 4){
                        switch self.number{
                        case "1":
                            color1 = .blue
                            color2 = .blue
                            break
                        case "2":
                            color1 = .pink
                            color2 = .green
                            break
                        case "3":
                            color1 = .pink
                            color2 = .white
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }else if(monthformat == 5){
                        switch self.number{
                        case "1":
                            color1 = .purple
                            color2 = .white
                            break
                        case "2":
                            color1 = .green
                            color2 = .black
                            break
                        case "3":
                            color1 = .green
                            color2 = .blue
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }else if(monthformat == 6){
                        switch self.number{
                        case "1":
                            color1 = .blue
                            color2 = .green
                            break
                        case "2":
                            color1 = .white
                            color2 = .black
                            break
                        case "3":
                            color1 = .black
                            color2 = .green
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }else if(monthformat == 7){
                        switch self.number{
                        case "1":
                            color1 = .yellow
                            color2 = .white
                            break
                        case "2":
                            color1 = .black
                            color2 = .black
                            break
                        case "3":
                            color1 = .green
                            color2 = .blue
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }else if(monthformat == 8){
                        switch self.number{
                        case "1":
                            color1 = .black
                            color2 = .blue
                            break
                        case "2":
                            color1 = .black
                            color2 = .black
                            break
                        case "3":
                            color1 = .black
                            color2 = .blue
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }else if(monthformat == 9){
                        switch self.number{
                        case "1":
                            color1 = .purple
                            color2 = .pink
                            break
                        case "2":
                            color1 = .green
                            color2 = .white
                            break
                        case "3":
                            color1 = .black
                            color2 = .black
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }else if(monthformat == 10){
                        switch self.number{
                        case "1":
                            color1 = .black
                            color2 = .orange
                            break
                        case "2":
                            color1 = .black
                            color2 = .orange
                            break
                        case "3":
                            color1 = .orange
                            color2 = .black
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }else if(monthformat == 11){
                        switch self.number{
                        case "1":
                            color1 = .blue
                            color2 = .black
                            break
                        case "2":
                            color1 = .black
                            color2 = .green
                            break
                        case "3":
                            color1 = .white
                            color2 = .purple
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }else if(monthformat == 12){
                        switch self.number{
                        case "1":
                            color1 = .black
                            color2 = .blue
                            break
                        case "2":
                            color1 = .blue
                            color2 = .blue
                            break
                        case "3":
                            color1 = .black
                            color2 = .orange
                        default:
                            color1 = .white
                            color2 = .white
                        }
                    }
                    
                }) {
                    Text("ランダムで画像を変える")
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
