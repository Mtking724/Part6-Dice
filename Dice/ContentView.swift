//
//  ContentView.swift
//  Dice
//
//  Created by Motoki Okayasu on 2023/09/18.
//

import SwiftUI

struct ContentView: View {
    @State private var randomNumber = 1
    @State private var timer: Timer?
    @State private var isRolling = false
    
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
                playDice()
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
            //ボタンを無効にさせるかどうかモディファイア
            .disabled(isRolling)
            Spacer()
        }
    }
    private func playDice() {
        print("ボタンが押されたよ")
        //ボタンを押してから0.5秒後にtrue
        isRolling = true
        //0.1秒ごとに出目を変更
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in randomNumber = Int.random(in: 1...6)}
        //0.5秒遅らせて処理を行う
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            //timerをストップ
            timer?.invalidate()
            timer = nil
            //0.5秒後にaflse
            isRolling = false
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
    }
}
