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
    
    struct Input {
        var plusAction: ()->Void
        let subtractAction: ()->Void
    }
    
    struct Output {
        var countedValue: AnyPublisher<Int, Never>
    }
    
    func plusAction()  {
        countedValue+=1
    }
    func subtractAction()  {
        countedValue-=1
    }
}
