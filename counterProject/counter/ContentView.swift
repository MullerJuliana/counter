//
//  ContentView.swift
//  counter
//
//  Created by StudentPM on 2/24/25.
//

import SwiftUI

struct ContentView: View {
    @State private var num: Int = 0 // variable to store the counter inicial number.
    var body: some View {
        VStack { // Using a vertical stack to arrange elements top to bottom.
            Text("Click Buttons Below to change the counter")
                .padding() // Adding padding around the text.
            Text("\(num)") // Displaying the value/display the zero for the counter
        }
        HStack{ // Using a horizontal stack to arrange elements top to bottom.
            Button(action: {increment()}, label: { // Button to increment the number of the counter.
                Text("Increment")
                    .padding() // Adding padding inside the button.
                    .background(Color.blue) // Setting background color to blue.
                    .foregroundColor(.white) // Setting text color to white.
                    .cornerRadius(8) // Making the button corners rounded.
            })
 
            Button(action: {decrement()}, label: { // Button to decrement the number of the counter.
                Text("Decrement")
                    .padding() // Adding padding inside the button.
                    .background(Color.blue) // Setting background color to blue.
                    .foregroundColor(.white) // Setting text color to white.
                    .cornerRadius(8) // Making the button corners rounded.
            })
        }
        .padding()
    }
    func increment(){ // Function to increase the counter.
        num += 1 // increase the number of the counter by adding 1
        if num > 50{ // Resetting the counter if it exceeds 50.
            num = 0
        }
            
    }
    func decrement(){
        num -= 1 // Decrementing the counter by substracting 1
        if num < 0{ // Preventing the counter from going negative.
            num = 0
        }
    }
    
}

#Preview {
    ContentView()
}
