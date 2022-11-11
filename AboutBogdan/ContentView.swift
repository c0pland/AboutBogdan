//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Богдан Беннер on 17.02.2022.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		ZStack {
			Color(red: 0.19, green: 0.22, blue: 0.32)
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			VStack(spacing: 3) {
				Image("profile-pic")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 150.0, height: 150.0, alignment: .center)
					.clipShape(Circle())
					.overlay(Circle().stroke(Color.white, lineWidth: 5.0))
				Text("Bogdan Benner")
					.font(.title)
					.fontWeight(.semibold)
					.foregroundColor(.white)
				Text("Beginner iOS/macOS developer")
					.foregroundColor(.white)
					.font(.callout)
				Link(destination: URL(string: "mailto:bennerbr@icloud.com")!) {
					InfoView(text: "bennerbr@icloud.com") {
						Image(systemName: "envelope.fill")
					}
				}
				.buttonStyle(.plain)
				Link(destination: URL(string: "https://www.linkedin.com/in/bennerbr/")!) {
					InfoView(text: "LinkedIn") {
						// Credit: Google https://www.flaticon.com/free-icons/linkedin
						Image("linkedin-logo")
					}
				}
				.buttonStyle(.plain)
				Link(destination: URL(string: "https://github.com/c0pland")!) {
					InfoView(text: "GitHub") {
						// Credit: riajulislam https://www.flaticon.com/free-icons/github
						Image("github-logo")
					}
				}
				.buttonStyle(.plain)
			}
			.padding(.horizontal, 15)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
