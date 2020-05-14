//
//  ContentView.swift
//  Hacker News
//
//  Created by Gio Lucero on 2020-05-14.
//  Copyright © 2020 Gio Lucero. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var networkManager = NetworkManger()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                Text(post.title)
            }
        .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


