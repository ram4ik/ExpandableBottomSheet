//
//  ContentView.swift
//  ExpandableBottomSheet
//
//  Created by Ramill Ibragimov on 01.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var presentSheet = false
    
    var body: some View {
        VStack {
            Text("Expandable bottom sheet")
            Button {
                presentSheet.toggle()
            } label: {
                Text("Show sheet")
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $presentSheet) {
                Text("Bottom sheet")
                    //.presentationDetents([.medium, .large])
                    .presentationDetents([.fraction(0.25), .fraction(0.50), .fraction(0.75)])
                    //.presentationDetents([.height(200), .height(400)])
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
