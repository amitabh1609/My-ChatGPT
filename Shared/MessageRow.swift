//
//  MessageRow.swift
//  My-ChatGPT
//
//  Created by Amitabh Choudhury on 04/02/23.
//

import Foundation
struct MessageRow: Identifiable {
    
    let id = UUID()
    
    var isInteractingWithChatGPT: Bool
    
    let sendImage: String
    let sendText: String
    
    let responseImage: String
    var responseText: String
    
    var responseError: String?
    
}
