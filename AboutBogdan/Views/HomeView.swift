//
//  HomeView.swift
//  AboutBogdan
//
//  Created by Богдан Беннер on 12.11.22.
//

import SwiftUI

struct HomeView: View {
	var body: some View {
		NavigationView {
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
				Text("Beginner iOS/macOS developer")
					.font(.callout)
				Link(destination: URL(string: "mailto:bennerbr@icloud.com")!) {
					InfoView(text: "bennerbr@icloud.com") {
						Image(systemName: "envelope.fill")
					}
					.foregroundColor(.black)
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

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
