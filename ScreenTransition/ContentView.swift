//
//  ContentView.swift
//  ScreenTransition
//
//  Created by Takeshi Sakamoto on 2024/11/09.
//

import SwiftUI

struct ContentView: View {
    @State var isShowThirdView = false
    @State var isShowAlert = false
    @State var isShowDialog = false
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink(destination: SecondView().navigationTitle("画面2")){
                    Text("Second Viewへ")
                }
                //ボタン押下でisShowThirdViewがtrueになる
                Button{
                    isShowThirdView = true
                }label: {
                    Text("モーダル遷移")
                }.sheet(isPresented: $isShowThirdView){
                    ThirdView(isShowThirdView: $isShowThirdView)
                }.padding()
                //sheet関数はisPresentedがtrueになるとモーダル遷移を開始する。遷移先はThirdView()
                
                //アラート表示ボタン
                Button{
                    isShowAlert = true
                } label: {
                    Text("アラートを表示")
                }.alert("タイトル", isPresented: $isShowAlert) {
                    Button("キャンセル"){
                        
                    }
                    Button("OK"){
                        
                    }
                } message: {
                    Text("ここに詳細メッセージを記載します")
                }
                
                //ダイアログ表示ボタン
                Button{
                    isShowDialog = true
                } label: {
                    Text("ダイアログを表示")
                }
                .confirmationDialog("タイトル", isPresented: $isShowDialog, titleVisibility: .visible){
                    Button("選択肢1"){
                    }
                    Button("選択肢2"){
                    }
                }message: {
                        Text("メッセージ")
                }.padding()
                }
            }
            .navigationTitle("画面1")
        }
    }

#Preview {
    ContentView()
}
