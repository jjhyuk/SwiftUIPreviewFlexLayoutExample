//  MIT License
//
//  Copyright (c) 2021 Won Heo
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//  UIViewControllerPreview.swift
//  SwiftPreview
//
//  Created by won heo on 2021/10/01.
//

import UIKit

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, tvOS 13.0, *)
public struct UIViewControllerPreview<Content>: UIViewControllerRepresentable where Content : UIViewController {
    let builder: () -> Content
    
    public init(_ builder: @escaping () -> Content) {
        self.builder = builder
    }
    
    public func makeUIViewController(context: Self.Context) -> Content {
        return builder()
    }

    public func updateUIViewController(_ uiViewController: Self.UIViewControllerType, context: Self.Context) {}
}
#endif

