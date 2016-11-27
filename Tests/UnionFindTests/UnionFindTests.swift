import XCTest
@testable import UnionFind

class UnionFindTests: XCTestCase {
    func testCreation() {

        let uf = UnionFind(5)
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(uf.size(), 5)
        uf.union(1, 2)
        XCTAssertTrue(uf.connected(1, 2))
        XCTAssertEqual(uf.size(), 4)
    }


    static var allTests : [(String, (UnionFindTests) -> () throws -> Void)] {
        return [
            ("testCreation", testCreation),
        ]
    }
}
