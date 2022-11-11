//
//  InfoView.swift
//  SwiftUITest
//
//  Created by Богдан Беннер on 11.11.22.
//

import SwiftUI

struct InfoView: View {
	let text: String
	let imageView: Image
	
	init(text: String, @ViewBuilder imageView: () -> Image) {
		self.text = text
		self.imageView = imageView()
	}
	
	var body: some View {
		RoundedRectangle(cornerRadius: 25)
			.fill(Color.white)
			.frame(height: 40, alignment: .center)
			.overlay(HStack {
				imageView
					.resizable()
					.scaledToFit()
					.padding(.vertical, 10)
				Text(text)
					.buttonStyle(.plain)
			})
			.padding()
	}
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
		InfoView(text: "Sample text") {
			Image(systemName: "envelope.fill")
		}
		.previewLayout(.sizeThatFits)
    }
}
