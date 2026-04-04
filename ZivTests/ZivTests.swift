import XCTest
@testable import Ziv

final class ZivTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRewardModelInitialization() throws {
        let reward = Reward(title: "Free Donut", description: "Get a free donut", pointsRequired: 50, isActive: true, partnerApp: .generic, cashbackPercentage: 5.0, is10xReward: true)

        XCTAssertEqual(reward.title, "Free Donut")
        XCTAssertEqual(reward.pointsRequired, 50)
        XCTAssertTrue(reward.isActive)
        XCTAssertEqual(reward.partnerApp, .generic)
        XCTAssertEqual(reward.cashbackPercentage, 5.0)
        XCTAssertTrue(reward.is10xReward)
    }

    func testCustomerModelInitialization() throws {
        let customer = Customer(name: "John Doe", email: "john@example.com", pointsBalance: 100, passKitId: "pk_123", totalCashbackEarned: 25.50)

        XCTAssertEqual(customer.name, "John Doe")
        XCTAssertEqual(customer.totalCashbackEarned, 25.50)
    }

    func testDashboardViewModelInitialization() throws {
        let viewModel = DashboardViewModel()

        XCTAssertNotNil(viewModel)
        // Since loadDashboardData is async, initial values should be 0/false until loaded
        XCTAssertEqual(viewModel.totalCustomers, 0)
        XCTAssertEqual(viewModel.activeRewards, 0)
        XCTAssertEqual(viewModel.totalPointsIssued, 0)
        XCTAssertEqual(viewModel.totalCashbackIssued, 0)
        XCTAssertEqual(viewModel.active10xRewards, 0)
    }

}
