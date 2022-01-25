//
//  ContentView.swift
//  list08
//
//  Created by it01 on 2021/12/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(photoArray) { item in
                NavigationLink( destination: detailView(photo: item)) {
                    RowView(photo: item)
                }
            }
            .navigationTitle("ランチメニュー")
        }
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
