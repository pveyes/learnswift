//
//  UpdateStore.swift
//  learnswift
//
//  Created by Fatih Kalifa on 27/12/19.
//  Copyright © 2019 pveyes. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore : ObservableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    @Published var updates: [Update] {
        didSet {
            didChange.send()
        }
    }
    
    init(updates: [Update] = []) {
        self.updates = updates
    }
}
