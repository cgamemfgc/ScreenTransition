//
//  ThirdView.swift
//  ScreenTransition
//
//  Created by Takeshi Sakamoto on 2024/11/09.
//

import SwiftUI

struct ThirdView: View {
    //@Bingingで変数を定義する。この変数はContentViewから参照する
    @Binding var isShowThirdView: Bool
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea(.all)
            VStack{
                Text("Third View")
                    .font(.largeTitle)
                Button{
                    isShowThirdView = false
                } label: {
                    Text("閉じる").font(.largeTitle)
                        .padding()
                        .background(.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            
        }
    }
}


