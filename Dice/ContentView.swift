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
