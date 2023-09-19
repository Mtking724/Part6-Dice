//
//  ContentView.swift
//  Dice
//
//  Created by Motoki Okayasu on 2023/09/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "die.face.1")
                //modifire
                //画像の大きさを変更
                .resizable()
                //画像の縦横の比率を固定する
                .scaledToFit()
                //オブジェクトの大きさを変更
                .frame(width: UIScreen.main.bounds.width/2)
                //内側に余白をつける
                .padding()
        }
        Button {
            print("ボタンが押されたよ")
        } label: {
            Text("サイコロを振る")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
