//import ArgumentParser
//import Foundation
//import LicenseSpring
//
//// MARK: - Activate Command
//struct ActivateLicenseCommand: AsyncParsableCommand {
//    static var configuration = CommandConfiguration(
//        commandName: "activate",
//        abstract: "Activate a license and store it in the cache."
//    )
//    
//    @Argument(help: "License key to activate")
//    var licenseKey: String
//    static let publicKey = """
//-----BEGIN PUBLIC KEY-----
//MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsGM8xKPdWNv9VC6IEYPtifmhl+SCbs9bpONhUjv447gGM+RHn13BSYcGwUGKHpUyGRxHcpjDB+BF4TXZL6OkpaUHMUVIa06UCwRTXpY9OrJ3M6HVMWTUglpVZe3IbsyveENcYAh6xlzBmgtQqhgVGqPeqWfOQXQrzGhJmpQsGNEat6xEQ9DUYtxCjLYYCbnOUkFA56ZESAok2rJVFZbRNmQIBpFVELjFlcWH44Fy5wLHTucukwV4g4LaXRP6/2ggXZSbSnSo44CcnbCDJbnWyR3sJck3HJKFKAqOAnYWeUIQXZC5IN79eWmBKWC30+U4b1iUvxz6pwSJ56c2M9xNwsSQVS7hnBwDFm+MDwtJhywjLa7rIVR7CrrSi+xB0A1W6RvadWE8cM+LaQ45BKe3CTOZNjeqC4KKThbzJP5d/Y99AJV0dXo8Yunim2wJ9BtpRPH9sbc2wt+1MDNz+biBL96XlDML1S0AXyiLj5AgRBR9yDTFLOfOu6VjXBMhDyvPkYCPeI4k4YpBl8HYTTEbSpAA0Fgw3P5A97UqYCLryLtTCmP1YsU08WC/tn8U9iCGGmAZKRrxrNHnZEjCZHHrMW7y4FOtXhytD39nwgbZlppyBCH8QMF6vSX6SWpQ/ERJtXbFazfNZSsHElwvAqw02aipgqvJisBZ41IyCtq9lA8CAwEAAQ==
//-----END PUBLIC KEY-----
//"""
//    func run() async throws {
//        let configuration = LicenseSpring.Configuration(
//            apiKey: "11abafc3-10b2-474a-b818-aaaf97c7512e",
//            sharedKey: "4DwU40rTPokndgWbJs8K9spDcnZFtaEUR_hqDVVfIek",
//            productCode: "mactestslk",
//            publicKey: ActivateLicenseCommand.publicKey
//        )
//        configuration.serviceURL = URL(string: "https://api.staging.licensespring.com")!
//        
//        print("🔑 Activating license \(licenseKey)...")
//        let manager = try LicenseManager(configuration: configuration)
//        let license = try manager.activateLicense(licenseKey: licenseKey)
//        
//        print("✅ License activated successfully.")
////        print("   License ID: \(license.id)")
////        print("   Product Code: \(license.productCode)")
////        print("   Status: \(license.status)")
//    }
//}
//
//// MARK: - Check Command
//struct CheckLicenseCommand: AsyncParsableCommand {
//    static var configuration = CommandConfiguration(
//        commandName: "check",
//        abstract: "Load and validate a previously activated license from the local cache."
//    )
//    static let publicKey = """
//-----BEGIN PUBLIC KEY-----
//MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsGM8xKPdWNv9VC6IEYPtifmhl+SCbs9bpONhUjv447gGM+RHn13BSYcGwUGKHpUyGRxHcpjDB+BF4TXZL6OkpaUHMUVIa06UCwRTXpY9OrJ3M6HVMWTUglpVZe3IbsyveENcYAh6xlzBmgtQqhgVGqPeqWfOQXQrzGhJmpQsGNEat6xEQ9DUYtxCjLYYCbnOUkFA56ZESAok2rJVFZbRNmQIBpFVELjFlcWH44Fy5wLHTucukwV4g4LaXRP6/2ggXZSbSnSo44CcnbCDJbnWyR3sJck3HJKFKAqOAnYWeUIQXZC5IN79eWmBKWC30+U4b1iUvxz6pwSJ56c2M9xNwsSQVS7hnBwDFm+MDwtJhywjLa7rIVR7CrrSi+xB0A1W6RvadWE8cM+LaQ45BKe3CTOZNjeqC4KKThbzJP5d/Y99AJV0dXo8Yunim2wJ9BtpRPH9sbc2wt+1MDNz+biBL96XlDML1S0AXyiLj5AgRBR9yDTFLOfOu6VjXBMhDyvPkYCPeI4k4YpBl8HYTTEbSpAA0Fgw3P5A97UqYCLryLtTCmP1YsU08WC/tn8U9iCGGmAZKRrxrNHnZEjCZHHrMW7y4FOtXhytD39nwgbZlppyBCH8QMF6vSX6SWpQ/ERJtXbFazfNZSsHElwvAqw02aipgqvJisBZ41IyCtq9lA8CAwEAAQ==
//-----END PUBLIC KEY-----
//"""
//    func run() async throws {
//        let configuration = LicenseSpring.Configuration(
//            apiKey: "11abafc3-10b2-474a-b818-aaaf97c7512e",
//            sharedKey: "4DwU40rTPokndgWbJs8K9spDcnZFtaEUR_hqDVVfIek",
//            productCode: "mactestslk",
//            publicKey: CheckLicenseCommand.publicKey
//        )
//        configuration.serviceURL = URL(string: "https://api.staging.licensespring.com")!
//        
//        print("📂 Loading cached license...")
//        let manager = try LicenseManager(configuration: configuration)
//        
////        if let license = try manager.cachedLicense() {
////            print("✅ Found cached license:")
////            print("   License ID: \(license.id)")
////            print("   Product Code: \(license.productCode)")
////            print("   Status: \(license.status)")
////        } else {
////            print("⚠️ No cached license found. You may need to activate again.")
////        }
//    }
//}
//
