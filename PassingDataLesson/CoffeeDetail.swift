//
//  CoffeeDetail.swift
//  PassingDataLesson
//
//  Created by Daniel Peters on 1/5/21.
//

import SwiftUI

struct CoffeeDetail : View {
    
    let coffee : Coffee
    
    var body: some View {
        VStack {
            Image(coffee.imageUrl)
            Text(coffee.name)
        }
    }
}



struct CoffeeDetail_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetail(coffee: Coffee.all()[0])
        //This is only meant for the CoffeeDeatil Preveiew, not the actual code, this shows that we show the end result on the first object within the array 
    }
}
