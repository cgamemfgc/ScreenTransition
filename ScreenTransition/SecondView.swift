//
//  SecondView.swift
//  ScreenTransition
//
//  Created by Takeshi Sakamoto on 2024/11/09.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            Text("Second View")
        }
    }
}

#Preview {
    SecondView()
}
