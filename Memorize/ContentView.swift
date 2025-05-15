//
//  ContentView.swift
//  Memorize
//
//  Created by Pedro Oliveira on 15/05/25.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		HStack {
			ForEach(0..<4) { index in
				CardView(isFaceUp: false)
			}
		}
			.padding()
			.foregroundColor(Color.orange)
			.font(Font.largeTitle)
	}
}

struct CardView: View {
	var isFaceUp: Bool
	var body: some View {
		ZStack {
			if isFaceUp {
				RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
				RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
				Text("👻")
			} else {
				RoundedRectangle(cornerRadius: 10.0).fill()
			}
			
		}
	}
}















#Preview {
	ContentView()
}
