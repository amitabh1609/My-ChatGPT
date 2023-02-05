//
//  My_ChatGPTMacApp.swift
//  My-ChatGPTMac
//
//  Created by Amitabh Choudhury on 05/02/23.
//

import SwiftUI

@main
struct XCAChatGPTMacApp: App {
    
    @StateObject var vm = ViewModel(api: ChatGPTAPI(apiKey: "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"))
    
    var body: some Scene {
        MenuBarExtra("My-ChatGPT", image: "icon") {
            VStack(spacing: 0) {
                HStack {
                    Text("My-ChatGPT")
                        .font(.title)
                    Spacer()
                   
                    Button {
                        guard !vm.isInteractingWithChatGPT else { return }
                        vm.clearList()
                    } label: {
                        Image(systemName: "trash")
                            .symbolRenderingMode(.multicolor)
                            .font(.system(size: 24))
                    }

                    .buttonStyle(.borderless)
                    
                    
                    Button {
                        exit(0)
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .symbolRenderingMode(.multicolor)
                            .font(.system(size: 24))
                    }

                    .buttonStyle(.borderless)
                }
                .padding()
                
                ContentView(vm: vm)
            }
            .frame(width: 480, height: 576)
        }.menuBarExtraStyle(.window)
    }
}
