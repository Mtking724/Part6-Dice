//
//  ContentView.swift
//  Dice
//
//  Created by Motoki Okayasu on 2023/09/18.
//

import SwiftUI

struct ContentView: View {
    @State var randomNumber = 1
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "die.face.\(randomNumber)")
            //modifire
            //画像の大きさを変更
                .resizable()
            //画像の縦横の比率を固定する
                .scaledToFit()
            //オブジェクトの大きさを変更
                .frame(width: UIScreen.main.bounds.width/2)
            //内側に余白をつける
                .padding()
            Spacer()
            Button {
                print("ボタンが押されたよ")
                randomNumber = Int.random(in: 1...6)
            } label: {
                Text("サイコロを振る")
                //modifire
                //内側に余白
                    .padding()
                //背景色を変更
                    .background(Color.orange)
                //文字色を変更
                    .foregroundColor(.black)
                //ボタンの角に丸みをつける
                    .cornerRadius(10)
            }
            Spacer()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
