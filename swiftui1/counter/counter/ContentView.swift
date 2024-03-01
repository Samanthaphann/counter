//
//  ContentView.swift
//  counter
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    //Create a variable that stores the count
    //State makes it that it will change everywhere
    //private makes it so the variable ccan be only be used in the view that it was created in
    @State private var count: Int = 0
    //The body
    var body: some View {
        VStack {
            //add text t dsplay the instructions
            Text("Click button below to change the counter")
            //displays the count variable
            Text("\(count)")
            //adds padding to so there is space around it
                .padding()
            //adds padding to so there is space around it
                .padding()
        }
        //Makes it so the elements are in a row
        HStack{
            //Creates a button where it adds 1 when clicked
            Button("Increment", action: addCount)
                //adds padding to so there is space around it
                .padding()
                //makes the background green
                .background(Color.green)
                //makes the text white
                .foregroundColor(.white)
                //makes the corners curved
                .cornerRadius(10)
            Button("Decrement", action: subtractCount)
                //adds padding to so there is space around it
                .padding()
                //makes the background red
                .background(Color.red)
                //makes the text white
                .foregroundColor(.white)
                //makes the corners curved
                .cornerRadius(10)
        }
    }
    //creates a function to add
    func addCount(){
        //if the count is less than 50, add 1
        if count < 50{
            count += 1
        }
    }
    func subtractCount(){
        //if the count is more than 0, subtract 1
        if count > 0{
            count -= 1
        }
    }
}

#Preview {
    ContentView()
}
