//
//  AddView.swift
//  iExpense
//
//  Created by Abdelrahman  Desoki on 12/01/2022.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var expenses : Expenses
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = ""
    @State private var currency = ""
    
    let types = ["Business", "Personal"]
    @State  var currencies = ["USD", "EUR", "GBP", "EGP", "HUF",]
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)

                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }

                
                TextField("Amount", text: $amount)
                    .keyboardType(.decimalPad)
                Picker("Currency", selection: $currency){
                    ForEach(currencies, id: \.self) {
                                           Text($0) }
                }
                .pickerStyle(WheelPickerStyle())
            }
            .navigationTitle("Add new expense")
            .toolbar{
                Button("save"){
                    let item = ExpenseItem(name: name, type: type, amount: amount,currency: currency)
                    expenses.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
