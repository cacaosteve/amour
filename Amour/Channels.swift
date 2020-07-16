//
//  Channels.swift
//  Amour
//
//  Created by steve on 7/15/20.
//

import Foundation
import SwiftUI
import StreamChatClient
import StreamChatCore
import StreamChat

struct Channels : UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<Channels>) -> ChannelsViewController {
        let channelsViewController = ChannelsViewController()
        return channelsViewController
    }
    
    func updateUIViewController(_ uiViewController: ChannelsViewController, context: Context) {
        
    }
    
    typealias UIViewControllerType = ChannelsViewController
}
