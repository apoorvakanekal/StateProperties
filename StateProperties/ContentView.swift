//
//  ContentView.swift
//  StateProperties
//
//  Created by Apoorva Kanekal on 9/8/23.
//

import SwiftUI


struct ContentView: View {
    
    @State var backgroundColor = Color.blue
    @State var circleColor = Color.yellow
    @State var changeColor = true
    @State var text = "Hello, Day"
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack{
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    
                Circle()
                    .foregroundColor(circleColor)
                    .scaleEffect(0.75)
                    
                Button(action: {
                    if changeColor {
                        self.backgroundColor = Color.black
                        self.circleColor = Color.white
                        self.text = "Hello, Night"
                        self.changeColor = false
                        
                    }
                    
                    else{
                        self.backgroundColor = Color.blue
                        self.circleColor = Color.yellow
                        self.text = "Hello, Day"
                        self.changeColor = true
                    }
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(.white)
                            .frame(width:200,height:75)
                        Text("Change Time")
                            .foregroundColor(.black)
                    }
                })
            }
        }

    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

