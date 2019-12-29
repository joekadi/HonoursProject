//
//  StatsScreen.swift
//  MagnetApp
//
//  Created by Joe Kadi on 26/12/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI
import SwiftUICharts

struct StatsScreen: View {
    
    @State var pickerSelectedView = 0
    @State private var showModal = false


    
    var body: some View {
        VStack{
        Picker(selection: $pickerSelectedView, label: Text("")){
            Text("STATS").tag(0)
            Text("BUDDIES").tag(1)
        }.pickerStyle(SegmentedPickerStyle())
        
        Spacer()
            
        if(self.pickerSelectedView == 0){
            ScrollView{
            VStack(alignment: .center, spacing: 40){
                Text("Current no waste streak")
                    .padding(.top, 40.0)//.offset(y: 20)
                Text("11 days")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Button(action: {
                    self.showModal = true
                }) {
                   Text("VIEW GOALS")
                    .fontWeight(.bold)
                    .font(.headline)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(10)
                }.sheet(isPresented: self.$showModal) {
                 GoalsModal()
                }
                
                
                  
            Divider()
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "dollarsign.circle")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.purple)
                    
                    Text("TOTAL MONEY SAVED")
                        .font(.headline)
                        .fontWeight(.light)
                }
                HStack{
                    Text("141")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Text("pounds")
                    
                }
                //Spacer()
                HStack{
                   Image(systemName: "bin.xmark")
                       .resizable()
                       .frame(width: 35, height: 35)
                       .foregroundColor(.purple)
                   
                   Text("TOTAL WASTE PRODUCED")
                       .font(.headline)
                       .fontWeight(.light)
               }
               HStack{
                   Text("14")
                       .font(.largeTitle)
                       .fontWeight(.heavy)
                   Text("kilograms")
                   
               }

                
            }
            Divider()
        
                }
        }
            }
    
        Spacer()
        if(self.pickerSelectedView == 1){
            ScrollView{
            VStack(alignment: .center){
                VStack{
                    Text("Competition")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.bottom, 5.0)
        
                    
                    Text("You vs Cameron")
                        .font(.subheadline)
                        .fontWeight(.thin)
                }.padding(20.0)
                VStack(alignment: .leading){
                 HStack{
                     Image(systemName: "person.circle.fill")
                         .resizable()
                         .frame(width: 35, height: 35)
                         .foregroundColor(.purple)
                     
                     Text("YOUR SCORE")
                         .font(.headline)
                         .fontWeight(.light)
                 }
                 HStack{
                     Text("456")
                         .font(.largeTitle)
                         .fontWeight(.heavy)
                     Text("points")
                     
                 }
                 
                 HStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.purple)
                    
                    Text("CAMERON'S SCORE")
                        .font(.headline)
                        .fontWeight(.light)
                }
                HStack{
                    Text("192")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Text("points")
                    
                }

                }
                Divider()
                Text("Breakdown")

                .font(.headline)
                .padding(20.0)
                HStack(){
                    VStack{
                    BarChartView(data: [20,8,7,10,7,0,7,0,0], title: "Weekly Waste (kg)", legend: "You")
                    Text("Total: 59kg")
                    }
                    
                    VStack{
                    BarChartView(data: [30,33,35,32,30,29,37,30,30], title: "Weekly Waste (kg)", legend: "Cameron")
                    Text("Total: 286kg")
                    }
                    
                }
                //Spacer()
                HStack(){
                    VStack{
                    BarChartView(data: [5,26,22,26,30,29,25,35,35], title: "Weekly Savings (£)", legend: "You")
                    Text("Total: £233")
                    }
                    VStack{
                    BarChartView(data: [7,8,7,10,7,0,7,1,13], title: "Weekly Savings (£)", legend: "Cameron")
                    Text("Total: £60")
                    }
                }
               Divider()
               
            //Spacer()
            
            }
        }
    }
            
            
    }
}
    
struct StatsScreen_Previews: PreviewProvider {
    static var previews: some View {
        StatsScreen()
    }
}
}
