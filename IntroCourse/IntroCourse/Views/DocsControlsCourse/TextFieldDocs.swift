//
//  TextFieldDocs.swift
//  IntroCourse
//
//  Created by Oscar Chavez on 10/10/21.
//

import SwiftUI

struct TextFieldDocs: View {
    @State private var username: String = ""
    @State private var isEditing = false
    
    var body: some View {
        TextField(
            "User name",
            text: $username
        ){
            isEditing in
                self.isEditing = isEditing
        } onCommit: {
            print("validando...")
        }
        .autocapitalization(.none)
        .disableAutocorrection(true)
        .border(Color(UIColor.separator))
        .padding(.horizontal, 30)
        
        Text(username)
            .foregroundColor(isEditing ? .red : .blue)
    }
}

struct TextFieldDocs_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldDocs()
    }
}
