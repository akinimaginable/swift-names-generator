import Testing

@testable import NamesGenerator

@Test func testGetRandomName() async throws {
    for _ in 0..<50 {
        let name = GetRandomName()

        #expect(!name.isEmpty)
        #expect(name.contains("_"))

        let parts: [String.SubSequence] = name.split(separator: "_")
        #expect(
            parts.count == 2,
            "Name should consist of two parts separated by an underscore"
        )

        let leftPart = String(parts[0])
        let rightPart = String(parts[1])

        #expect(
            left.contains(leftPart),
            "The adjective should exist in the 'left' array"
        )
        #expect(
            right.contains(rightPart),
            "The surname should exist in the 'right' array"
        )
    }
}
