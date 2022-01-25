//
//  ContentView.swift
//  hello01
//
//  Created by it01 on 2021/10/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("私は長瀬愛花です")
            .font(.largeTitle)
            .foregroundColor(Color.gray)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
