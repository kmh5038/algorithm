import Foundation

func solution(_ todo_list: [String], _ finished: [Bool]) -> [String] {
    var unfinishedTasks: [String] = []

    for (index, finishedTask) in finished.enumerated() {
        if !finishedTask {
            unfinishedTasks.append(todo_list[index])
        }
    }

    return unfinishedTasks
}