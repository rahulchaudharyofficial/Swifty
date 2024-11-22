import Testing

@testable import Swifty

@Test func concurrencyTest() async throws {
    let photoNames: [String] = await listPhotos("abc")
    guard !photoNames.isEmpty else { return }
    photoNames.forEach { photo in
        print(photo)
    }
    assert(!photoNames.isEmpty)
}

@Test func handlerTest() async throws {
    await taskGroupDemo()
    assert(true)
}

@Test func testGetMeNumber() async throws {
    let num: Int = try await getMeNumber()
    assert (num >= 0 && num <= 10)
}