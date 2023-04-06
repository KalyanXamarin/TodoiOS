//
//  QuranTab.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 04/04/23.
//

import SwiftUI
import WebKit

struct QuranTab: View {
    var body: some View {
        GeometryReader { metrics in
            VStack{
                Spacer()
                SwiftUIWebView().frame(height: metrics.size.height * 1)
                Spacer()
            }
        }
    }
}

struct QuranTab_Previews: PreviewProvider {
    static var previews: some View {
            QuranTab()
    }
}

struct SwiftUIWebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
    
    let webView: WKWebView
    
    init() {
        webView = WKWebView(frame: .zero)
        webView.load(URLRequest(url: URL(string: "https://epub.qurancomplex.gov.sa/issues/hafs/khass1brown/")!))
    }
    
    func makeUIView(context: Context) -> WKWebView {
        webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
