//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Богдан Беннер on 17.02.2022.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		TabView {
			HomeView()
				.tabItem {
					Image(systemName: "person.text.rectangle")
					Text("Profile")
				}
			Text("History goes here")
				.tabItem {
					Image(systemName: "book.closed")
					Text("Story")
				}
			Text("MAP GOES HERE")
				.tabItem {
					Image(systemName: "gear")
					Text("Settings")
				}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
