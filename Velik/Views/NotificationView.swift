//
//  NotificationView.swift
//  Velik
//
//  Created by Nocero Beguhe on 05/06/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import SwiftUI

struct NotificationView<Presenting: View, Content: View>: View {

    @Binding var isShowing: Bool
    let presenting: () -> Presenting
    let content: () -> Content

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                self.presenting()//.blur(radius: self.isShowing ? 1 : 0)
                Group {
                    self.content()
                }
                .frame(width: geometry.size.width * 0.8, height: 50)
                .padding()
                .background(Color(UIColor.systemBackground))
                .transition(.slide)
                //.border(Color.orange, width: 3)
                .overlay(
                    Rectangle()
                        .fill()
                        .foregroundColor(.orange)
                        .frame(width: 12),
                    alignment: .leading
                )
                .cornerRadius(radius: 6, corners: [.topLeft, .bottomLeft])
                .offset(y: 32)
                .opacity(self.isShowing ? 1 : 0)
            }
        }
    }
}

extension View {

    func notify<Content: View>(isShowing: Binding<Bool>, _ content: @escaping () -> Content) -> some View {
        NotificationView(isShowing: isShowing, presenting: { self }, content: content)
    }
}

//struct NotificationView_Previews: PreviewProvider {
//    static var previews: some View {
//        NotificationView(
//            isShowing: true,
//            presenting: { EmptyView() },
//            content: { Text("Ride have been stopped") }
//        )
//    }
//}
