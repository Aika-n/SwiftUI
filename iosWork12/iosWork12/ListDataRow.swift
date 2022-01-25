//
//  ListDataRow.swift
//  iosWork12
//
//  Created by it01 on 2022/01/21.
//

import SwiftUI

struct ListDataRow: View {
    var listData: ListData
    
    
    var body: some View {
        HStack{
            Image(systemName: "pencil.circle")
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 5, content: {
                
                Text(listData.title)
                Text(listData.subtitle)
                    .font(.caption)
                    .foregroundColor(.gray)
                        
            })
            Spacer()
        }
    }
}

struct ListDataRow_Previews: PreviewProvider {
    static var previews: some View {
        ListDataRow(listData: DataArray[0])
            .previewLayout(.fixed(width: 300, height: 80))
    }
}
