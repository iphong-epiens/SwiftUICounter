//
//  ContentViewModel.swift
//  SwiftUICounter
//
//  Created by Inpyo Hong on 2021/09/02.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
    @Published var countedValue: Int = 0
    var cancellables = Set<AnyCancellable>()
    
    var plusPub = PassthroughSubject<Void,Never>()
    var subtractPub = PassthroughSubject<Void,Never>()
    
    func config() {
        self.plusPub
            .sink{ self.countedValue+=1 }
            .store(in: &self.cancellables)
        
        self.subtractPub
            .sink{ self.countedValue-=1 }
            .store(in: &self.cancellables)
    }
}
