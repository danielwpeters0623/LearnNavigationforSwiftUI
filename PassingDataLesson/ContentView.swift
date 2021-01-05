//
//  ContentView.swift
//  PassingDataLesson
//
//  Created by Daniel Peters on 1/5/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var model = Coffee.all()
    
    var body: some View {
        
        NavigationView {
            
            
        List {
            ForEach(model) { coffee in
                
                CoffeeCell(coffee: coffee)
            }
        }
        .navigationBarTitle(Text("Coffee Types"))
        .navigationBarItems(trailing: Button("Help"){
            print("Help tapped")
            
        })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CoffeeCell: View {
    
    let coffee : Coffee
    
    var body: some View {
        NavigationLink(destination: CoffeeDetail(coffee: coffee)) {
            
            
            
            HStack {
                Image(coffee.imageUrl)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                Text(coffee.name)
                
            }
            
        }
    }
}
