//
//  TasksMainPage.swift
//  AcelanProgress
//
//  Created by Mikhail Yeremeyev on 23.04.2023.
//

import SwiftUI
import StatefulArch

struct TasksMainPage: PageView {
    
    @StateObject
    var state: TasksMainState
    
    let interceptor: TasksMainInterceptor
    
    var body: some View {
        VStack(spacing: .zero) {
            NavigationBar(title: "Tasks")
            
            ScrollView {
                LazyVStack(spacing: 10) {
                    ForEach(state.taskItems) { taskItem in
                        TaskItemView(
                            item: taskItem,
                            action: {
                                interceptor.call(action: .openTaskItemDetail(taskItem))
                            }
                        )
                    }
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 20)
            }
            .withLoading($state.loading)
        }
    }
    
}
