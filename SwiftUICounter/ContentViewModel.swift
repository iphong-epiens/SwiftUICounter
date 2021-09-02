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
    
    var plusAction = PassthroughSubject<Void,Never>()
    var subtractAction = PassthroughSubject<Void,Never>()
    
    func config() {
        self.plusAction
            .sink{ self.countedValue+=1 }
            .store(in: &self.cancellables)
        
        self.subtractAction
            .sink{ self.countedValue-=1 }
            .store(in: &self.cancellables)
    }
}
