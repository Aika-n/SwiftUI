//
//  photoData.swift
//  list08
//
//  Created by it01 on 2021/12/14.
//

import Foundation

let menu = ["弁当", "カレー", "牛丼", "パン", "ラーメン"]
let pict = ["bento","curry","gyudon","pan","ramen"]

var photoArray:[photoData] = makeData()

struct photoData: Identifiable{
    var id: Int
    var imageName:String
    var title:String
}

func makeData()->[photoData]{
    var dataArray:[photoData] = []
    
    for i in 0 ..< 5 {
        dataArray.append(photoData(id: i+1, imageName: pict[i], title: menu[i]))
    }
    return dataArray
}
