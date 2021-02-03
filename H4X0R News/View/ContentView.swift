//
//  ContentView.swift
//  H4X0R News
//
//  Created by Oybek on 2/2/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManger = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManger.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack{
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
                
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            networkManger.fetchData()
        }
    }
}

//let posts = [
//    Post(id: "1", title: "THisisapost" ),
//    Post(id: "2", title: "This is 2 post" ),
//    Post(id: "3", title: "This is 3 post" )
//]



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
