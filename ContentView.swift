//
//  ContentView.swift
//  BLE_M5Stack_test
//
//  Created by H.N on 2024/06/19.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var bleManager = BLEManager()

    var body: some View {
        VStack {
            Text("接続状況: \(bleManager.isConnected ? "接続済み" : "未接続")")
                .padding()
            Text("受信データ: \(bleManager.receivedData)")
                .font(.title2)
                .padding()
        }
        .onAppear {
            bleManager.startScanning()
        }
    }
}
