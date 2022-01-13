//
//  ContentView.swift
//  iExpense
//
//  Created by Abdelrahman  Desoki on 12/01/2022.
//
import SwiftUI



struct ContentView: View {
    
@State private var showingAddExpense = false
@StateObject var expenses = Expenses()
    
    
    
    var body: some View {
        let backgroundGradient = LinearGradient(
            colors: [Color.red, Color.blue],
            startPoint: .top, endPoint: .bottom)
    
        
            NavigationView{
 
                List{
                    
                    ForEach(expenses.items) {item in
                        let amountTrans = Int(item.amount) ?? 0
//                        HStack{
                        HStack{
//                            backgroundGradient
//                                .ignoresSafeArea(.all)
                            VStack (alignment: .leading){
                                
                                if(item.type == "Business"){
                                    Section(header: Text ("Bussiness type")) {
                                        Text(item.name)
                                            .font(.headline)
    //                                    Text(item.type)
                                        Spacer()
                                        if ( amountTrans <= 10 ){
                                                Text(item.amount)
                                                   .foregroundColor(.green)
                                        }
                                        if( amountTrans > 10 && amountTrans < 100 ){
                                            Text(item.amount)
                                                .foregroundColor(.blue)
                                        }
                                        if(amountTrans > 100){
                                            Text(item.amount)
                                                .foregroundColor(.red)
                                        }
                                        Text(item.currency)
                                        
                                    }
                                }
                                else{
                                    Section(header: Text ("Personal type")) {
                                        Text(item.name)
                                            .font(.headline)
                                        Text(item.type)
                                        Spacer()
                                        if ( amountTrans <= 10 ){
                                                Text(item.amount)
                                                   .foregroundColor(.green)
                                        }
                                        if( amountTrans > 10 && amountTrans < 100 ){
                                            Text(item.amount)
                                                .foregroundColor(.blue)
                                        }
                                        if(amountTrans > 100){
                                            Text(item.amount)
                                                .foregroundColor(.red)
                                        }
                                        Text(item.currency)
                                        
                                    }
                                }
                                
                            }
                            
                        }
                        
                    }
                    .onDelete(perform: removeItems)
                    
                }
//                .foregroundColor(.red)
            
                .navigationTitle("IExpense")
                .toolbar{
                    Button{
                        showingAddExpense = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $showingAddExpense){
                    AddView(expenses: Expenses())
                }
            
            }
            .padding()
    

      
    }
    func removeItems(at offsets:IndexSet){
        expenses.items.remove(atOffsets: offsets)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
