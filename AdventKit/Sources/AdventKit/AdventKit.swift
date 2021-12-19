public struct AdventKit {
    public private(set) var text = "Hello, World!"

    public init() {}

    public func getDimensionsArray(input: String) -> [Int] {
        let separator: Character = "x"
        let dimensionsStringArray = input.split(separator: separator)
        let dimensionsArray = dimensionsStringArray.map { Int($0)! }

        return dimensionsArray
    }

    public func getLinesAsList(input: String) -> [String] {
        return input.split(separator: "\n").map { String($0) }
    }
}
