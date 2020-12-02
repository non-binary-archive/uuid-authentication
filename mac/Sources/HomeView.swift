//
//  HomeView.swift
//  Example
//
//  Created by Luna Graysen on 2020-12-02.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: Properties
    @State var user: User
    
    // MARK: View Declaration
    var body: some View {
        Text("You have been authenticated, \(user.name)")
    }
}

