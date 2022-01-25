//
//  RowView.swift
//  list08
//
//  Created by it01 on 2021/12/14.
//

import SwiftUI

struct RowView: View {
    
    var photo:photoData
    
    var body: some View {
        HStack{
            Image(photo.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(photo.title)
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider { static var previews: some View {
        RowView(photo: photoArray[0]) .previewLayout(.fixed(width: 300, height: 80))
    }
    
}
