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
            Text("Received Data: \(bleManager.receivedData)")
                .padding()
        }
        .onAppear {
            bleManager.startScanning()
        }
    }
}
