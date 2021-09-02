//
//  ContentView.swift
//  SwiftUICounter
//
//  Created by Inpyo Hong on 2021/09/02.
//

import SwiftUI

//http://minsone.github.io/swiftui/swiftui-text-font-size-fit-to-frame

struct FittingFontSizeModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 300, weight: .bold, design: .default))
            .minimumScaleFactor(0.001)
    }
}


struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    
    init() {
        viewModel.config()
    }
    
    var body: some View {
        HStack {
            Button(action: {
                viewModel.subtractPub.send()
            }) {
                Text("-")
                    .font(.system(size: 100, weight: .bold, design: .default))
                    .foregroundColor(.gray)
            }
            
            Text("\(viewModel.countedValue)")
                .foregroundColor(Color.orange)
                .padding([.leading,.trailing],10)
                .modifier(FittingFontSizeModifier())
                .frame(width: 200, height: 200)
            
            Button(action: {
                viewModel.plusPub.send()
            }) {
                Text("+")
                    .font(.system(size: 100, weight: .bold, design: .default))
                    .foregroundColor(.gray)
            }
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
