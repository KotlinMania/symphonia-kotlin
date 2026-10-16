#if canImport(Testing)
import Testing
import Symphonia

@Suite("Symphonia Swift Export Tests")
struct SymphoniaExportTests {
    @Test("Symphonia swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "Symphonia swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import Symphonia

final class SymphoniaExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "Symphonia swift module imported cleanly")
    }
}
#endif
