import Foundation

func listPhotos(_ galleryName: String) async -> [String] {
    let result: [String] = ["one", "two"]  // Some async network code to fetch the images and store result
    return result
}


func taskGroupDemo() async {
    await withTaskGroup(of: Void.self) { group in 
        group.addTask {
            await counter1()
        }

        group.addTask {
            await counter2()
        }

        group.addTask {
            await counter3()
        }

        group.addTask {
            await counter4()
        }

        group.addTask {
            await counter5()
        }

        group.addTask {
            await counter6()
        }

        group.addTask {
            await counter7()
        }

        group.addTask {
            await counter8()
        }
    }
}


func counter1() async {
    print("Counter1 Started!")
    do {
        try await __handler(from: "Counter1")
    }
    catch {
        print("Error caught")
    }
    print("Counter1 Completed!")
}


func counter2() async {
    print("Counter2 Started!")
    do {
        try await __handler(from: "Counter2")
    }
    catch {
        print("Error caught")
    }
    print("Counter2 Completed!")
}


func counter3() async {
    print("Counter3 Started!")
    do {
        try await __handler(from: "Counter3")
    }
    catch {
        print("Error caught")
    }
    print("Counter3 Completed!")
}


func counter4() async {
    print("Counter4 Started!")
    do {
        try await __handler(from: "Counter4")
    }
    catch {
        print("Error caught")
    }
    print("Counter4 Completed!")
}


func counter5() async {
    print("Counter5 Started!")
    do {
        try await __handler(from: "Counter5")
    }
    catch {
        print("Error caught")
    }
    print("Counter5 Completed!")
}


func counter6() async {
    print("Counter6 Started!")
    do {
        try await __handler(from: "Counter6")
    }
    catch {
        print("Error caught")
    }
    print("Counter6 Completed!")
}


func counter7() async {
    print("Counter7 Started!")
    do {
        try await __handler(from: "Counter7")
    }
    catch {
        print("Error caught")
    }
    print("Counter7 Completed!")
}


func counter8() async {
    print("Counter8 Started!")
    do {
        try await __handler(from: "Counter8")
    }
    catch {
        print("Error caught")
    }
    print("Counter8 Completed!")
}


func __handler(from: String) async throws {
    var counter = 1
    while counter <= 10000000 {
        counter += 1
        if counter % 1000000 == 0 { // 1 million
            print("For \(from) counter = \(counter)")
            try await Task.sleep(for: .seconds(2))
        }
    }
}


func getMeNumber() async throws -> Int {
    let data: [Int] = [1,2,3,4,5,6,7,8,9,10]
    let num: __uint32_t = arc4random_uniform(10)
    print("data is \(data[Int(num)]), starting to sleep in \(#function)")
    try await Task.sleep(for: .seconds(10))
    print("finished sleeping")
    return data[Int(num)]
}