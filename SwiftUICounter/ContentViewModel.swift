//
//  ContentViewModel.swift
//  SwiftUICounter
//
//  Created by Inpyo Hong on 2021/09/02.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var countedValue: Int = 0
    
    func plusAction()  {
        countedValue+=1
    }
    func subtractAction()  {
        countedValue-=1
    }
}
