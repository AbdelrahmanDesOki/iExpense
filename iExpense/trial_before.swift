//
//  trial_before.swift
//  iExpense
//
//  Created by Abdelrahman  Desoki on 12/01/2022.
//

import Foundation

//class User: ObservableObject {
//    @Published var firstname = "Abdoo"
//    @Published var lastname = "DEsOki"
//}
//
//struct SecondView: View {
//
//    @State private var numbers = [Int]()
//    @AppStorage("currentNumber") private var currentNumber = 1
//    @Environment (\.dismiss) var dismiss
//    var body: some View {
//        Button("Dismiss"){
//            dismiss()
//        }
//        NavigationView{
//            VStack {
//                    List {
//                        ForEach(numbers, id: \.self) {
//                            Text("Row \($0)")
//                        }
//                        .onDelete(perform: removeRows )
//                    }
//
//                    Button("Add Number") {
//                        numbers.append(currentNumber)
//                        currentNumber += 1
//
//                    }
//                }
//            .toolbar{EditButton()}
//        }
//    }
//    func removeRows(at offsets: IndexSet) {
//        numbers.remove(atOffsets: offsets)
//    }
//}



//struct ContentView: View {
//    @StateObject private var user = User()
//    @State private var showsheet = false
//    
//    var body: some View {
//        VStack{
//            Text("Your name is \(user.firstname) \(user.lastname)")
//            
//            TextField("First name: ", text: $user.firstname)
//            TextField("Last name: ", text: $user.lastname)
//            Button("Show Sheet") {
//                showsheet.toggle()
//            }
//            .sheet(isPresented: $showsheet) {
//                // contents of the sheet
//                SecondView()
//            }
//            
//        }
//    }
//}
