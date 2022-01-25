//
//  ContentView.swift
//  actionSheet09
//
//  Created by it01 on 2021/12/21.
//

// ContentView.swift (OKのみアラート作成例) //

import SwiftUI

struct ContentView: View {
    @State var isError1: Bool = false
    @State var isError2: Bool = false
    @State var isError3: Bool = false
    @State var isError4: Bool = false
    @State var isError5: Bool = false
    
    var body: some View {
        VStack(spacing: 80){
            
            //OKのみアラート
            Button(action: {
                self.isError1 = true
            }) {
                Text("OKのみアラート")
        
            }.alert(isPresented: $isError1, content: {
                Alert(title: Text("OK のみアラート"), message: Text("OKのみのアラートを表示します"),
                    dismissButton: .default(Text("OK"), action: { okAction() }))
              } )
            
            //OKキャンセルアラート
            Button(action: {
                self.isError2 = true
            }) {
                Text("OKキャンセルアラート")
        
            }.alert(isPresented: $isError2, content: {
                Alert(title: Text("OKキャンセルアラート"), message: Text("OKとキャンセルのアラートを表示します"),
                      primaryButton: .default(Text("OK"), action: { okAction() }), secondaryButton: .cancel(Text("キャンセル"), action: {}))
              } )
            
            //削除アラート
            Button(action: {
                self.isError3 = true
            }) {
                Text("削除アラート")
        
            }.alert(isPresented: $isError3, content: {
                Alert(title: Text("削除アラート"), message: Text("削除アラートを赤文字で表示します"),
                      primaryButton: .destructive(Text("削除"), action: { }),
                      secondaryButton: .cancel(Text("キャンセル"), action: {}))
              } )
            
            //ActionSheet
            Button(action: {
                        self.isError4 = true
                  }) {
                        Text("ActionSheet")
            }.actionSheet(isPresented: $isError4 ) {
                ActionSheet(title: Text("ActionSheet"),message: Text("ここにアクションシートを表示します"),
                    buttons: [
                        .default(Text("アクション1"), action: {}),
                        .default(Text("アクション2"), action: {}),
                        .destructive(Text("削除"), action: {}),
                        .cancel(Text("キャンセル"), action: {})
                    ]
                )
            }
            
            //Sheet表示
            Button(action: {
                self.isError5 = true
            }) {
                Text("Sheet 表示")
                .font(.largeTitle) }.sheet(isPresented: $isError5 ){
                    sampleView()
                }
                                                                 
        }
      }
}
func okAction(){
    print("OK が押されました")
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

