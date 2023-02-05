//
//  My_ChatGPTApp.swift
//  My-ChatGPT
//
//  Created by Amitabh Choudhury on 04/02/23.
//

import SwiftUI
 @main
struct My_ChatGPTApp: App {
    
    @StateObject var vm = ViewModel(api: ChatGPTAPI(apiKey: "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"))
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ContentView(vm: vm)
            }
        }
    }
}
