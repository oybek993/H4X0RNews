//
//  WebView.swift
//  H4X0R News
//
//  Created by Oybek on 2/3/21.
//

import WebKit
import Foundation
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
