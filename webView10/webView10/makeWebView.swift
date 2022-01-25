//
//  makeWebView.swift
//  webView10
//
//  Created by it01 on 2021/12/21.
//

//
// makeWebView.swift
//
import SwiftUI
import WebKit // ←追加する
struct makeWebView: UIViewRepresentable {
    var url: String = "https://www.google.com/"
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.load(URLRequest(url: URL(string: url)!))
    }
}
struct makeWebView_Previews: PreviewProvider {static var previews: some View {
        makeWebView()
    }
}
