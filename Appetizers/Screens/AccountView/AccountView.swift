//
//  AccountView.swift
//  Appetizers
//
//  Created by Victoria Grimen on 10/10/2023.
//

import SwiftUI

struct AccountView: View {
  
  @StateObject var viewModel = AccountViewModel()
  

  
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Personal Info")) {
          TextField("First Name", text: $viewModel.firstName)
          TextField("Last Name", text: $viewModel.lastName)
          TextField("Email", text: $viewModel.email)
            .keyboardType(.emailAddress)
            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
            .disableAutocorrection(true)
          
          DatePicker("Birthday", selection: $viewModel.birthdate,
                     displayedComponents: .date)
          
          
          
          Button {
            print("Save")
          } label: {
            Text("Save Changes")
          }
        }
        Section(header: Text("Requests")) {
          Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
          Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
        }
        .toggleStyle(SwitchToggleStyle(tint: .BrandPrimary))
       
      }
      .navigationTitle("Account")
        
      }
    }
  }


#Preview {
    AccountView()
}
