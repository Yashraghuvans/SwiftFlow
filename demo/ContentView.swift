//
//  ContentView.swift
//  demo
//
//  Created by Yash Raghuvanshi on 22/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("My Basic Layout")
                .font(.title)

            HStack(spacing: 10) {
                Text("Box 1")
                    .padding()
                    .background(Color.blue.opacity(0.3))
                    .cornerRadius(8)

                Text("Box 2")
                    .padding()
                    .background(Color.green.opacity(0.3))
                    .cornerRadius(8)

                Text("Box 3")
                    .padding()
                    .background(Color.red.opacity(0.3))
                    .cornerRadius(8)
            }

            VStack(alignment: .leading) {
                Text("List of Items:")
                    .font(.headline)

                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(5)

            VStack {
                ForEach(0..<3) { row in
                    HStack {
                        ForEach(0..<3) { col in
                            let index = row * 3 + col
                            BoxView(text: "\(index + 1)", backgroundColor: getColor(for: index))
                        }
                    }
                }
            }
        }
        .padding()
    }

    func getColor(for index: Int) -> Color {
        let colors: [Color] = [.red, .green, .blue, .yellow, .orange, .purple, .pink, .cyan, .mint]
        return colors[index]
    }
}

struct BoxView: View {
    let text: String
    let backgroundColor: Color

    var body: some View {
        Text(text)
            .frame(width: 80, height: 80)
            .background(backgroundColor)
            .foregroundColor(.black)
            .cornerRadius(8)
            .border(Color.gray, width: 1)
    }
}

#Preview {
    ContentView()
}
