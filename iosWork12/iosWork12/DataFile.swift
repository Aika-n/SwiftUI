//
//  DataFile.swift
//  iosWork12
//
//  Created by it01 on 2022/01/21.
//

import Foundation


//構造体
struct ListData: Identifiable {
    var id: Int
    var category: Int
    var title: String
    var subtitle: String
}

//データの配列
var DataArray: [ListData] = [
    ListData(id: 0, category: 1, title: "タイトル", subtitle: "サブタイトル"),
//    ListData(id: 2, category: 1, title: "タイトル2", subtitle: "サブタイトル2"),
//    ListData(id: 3, category: 1, title: "タイトル3", subtitle: "サブタイトル3")
]

