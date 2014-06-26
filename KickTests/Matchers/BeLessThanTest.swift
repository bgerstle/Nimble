import XCTest
import Kick

class BeLessThanTest: XCTestCase {

    func testLessThan() {
        expect(0) < 1
        expect(2).to(beLessThan(10))
        expect(2).toNot(beLessThan(1))

        failsWithErrorMessage("expected <2> to be less than <1>") {
            expect(2) < 1
            return
        }
        failsWithErrorMessage("expected <2> to be less than <0>") {
            expect(2).to(beLessThan(0))
            return
        }
        failsWithErrorMessage("expected <0> to not be less than <1>") {
            expect(0).toNot(beLessThan(1))
            return
        }
    }
}
