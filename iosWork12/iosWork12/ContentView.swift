//
//  ContentView.swift
//  iosWork12
//
//  Created by it01 on 2022/01/11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    @State var num: String = ""
    
    @State var vtitle = ""
    @State var vsubtitle = ""
    
    @State var i = DataArray.count
    @State var Dataarray = DataArray
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                
                //タブ1
                
                //リスト表示
                List {
                    ForEach(Dataarray) { item in
                        ListDataRow(listData: item)
                        
                    }.onDelete(perform: rowRemove)
                }
                .tabItem {
                    Image("first")
                    Text("first")
                }
                    .tag(1)
                    .font(.largeTitle)
                
                //タブ2
                VStack{
                    TextField("タイトル", text: $vtitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())  // 入力域のまわりを枠で囲む
                        .padding()  // 余白を追加
                    TextField("サブタイトル", text: $vsubtitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Button(action: {
                        Dataarray.append(ListData(id: i, category: 1, title: vtitle, subtitle: vsubtitle))
                        i = i + 1
                    }){
                        Label("追加", systemImage: "square.and.pencil")
                    }
                    
                }
                    .tabItem {
                        Image("second")
                        Text("Second")
                    }
                    .tag(2)
                    .font(.largeTitle)
                
                //タブ3
                VStack{
                    Label(num, systemImage: "0.circle")
                    
                    Spacer().frame(height: 40)
                    HStack{
                        Button(action: {
                            self.num += "7"
                        }){
                            Label("", systemImage: "7.circle")
                        }
                        Button(action: {
                            self.num += "8"
                        }){
                            Label("", systemImage: "8.circle")
                        }
                        Button(action: {
                            self.num += "9"
                        }){
                            Label("", systemImage: "9.circle")
                        }
                    }
                    HStack{
                        Button(action: {
                            self.num += "4"
                        }){
                            Label("", systemImage: "4.circle")
                        }
                        Button(action: {
                            self.num += "5"
                        }){
                            Label("", systemImage: "5.circle")
                        }
                        Button(action: {
                            self.num += "6"
                            print("6")
                        }){
                            Label("", systemImage: "6.circle")
                        }
                    }
                    HStack{
                        Button(action: {
                            self.num += "1"
                        }){
                            Label("", systemImage: "1.circle")
                        }
                        Button(action: {
                            self.num += "2"
                        }){
                            Label("", systemImage: "2.circle")
                        }
                        Button(action: {
                            self.num += "3"
                        }){
                            Label("", systemImage: "3.circle")
                        }
                    }
                    Button(action: {
                        self.num += "0"
                    }){
                        Label("", systemImage: "0.circle")
                    }
                    HStack{
                        
                        Button(action: {
                            self.num += "-"
                        }){
                            Label("-", systemImage: "-.cirecle")
                        }
                    }
                    Button(action: {
                        UIPasteboard.general.string = num
                    }){
                        Text("コピーする")
                    }
                    }
                    .tabItem {
                        Image("third")
                        Text("Third")
                    }
                    .tag(3)
                    .font(.largeTitle)
            }
        }
        
        }
    // 行削除処理
    func rowRemove(offsets: IndexSet) {
        Dataarray.remove(atOffsets: offsets)
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
