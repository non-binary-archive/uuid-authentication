//
//  HomeView.swift
//  Example
//
//  Created by Luna Graysen on 2020-12-02.
//

import SwiftUI

struct HomeView: View {
    
    @State var user: User
    
    var body: some View {
        Text("You have been authenticated, \(user.name)")
    }
}

