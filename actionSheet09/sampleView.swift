//
//  sampleView.swift
//  actionSheet09
//
//  Created by it01 on 2021/12/21.
//

//
// sampleView.swift (作成例) //
import SwiftUI

struct sampleView: View {
    @Environment(\.presentationMode) var presentation
    var body: some View {
        Spacer()
        Text("Sheet のサンプルです")
            .font(.largeTitle)
        Spacer()
        Button(action: {
            self.presentation.wrappedValue.dismiss()
        }, label: {
            Text("戻る").font(.largeTitle)
        })
        Spacer() }
    }
    
struct sampleView_Previews: PreviewProvider {
    static var previews: some View {
        sampleView()
    }
}
