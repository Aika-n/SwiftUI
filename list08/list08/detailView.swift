//
//  detailView.swift
//  list08
//
//  Created by it01 on 2021/12/14.
//

import SwiftUI

struct detailView: View {
    var photo:photoData
    var body: some View {
        VStack{
            Image(photo.imageName)
            ;Text(photo.title)
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(verbatim: photo.title), displayMode: .inline) // 戻りボタン表示
    }
}
struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView(photo: photoArray[0])
    }
}
