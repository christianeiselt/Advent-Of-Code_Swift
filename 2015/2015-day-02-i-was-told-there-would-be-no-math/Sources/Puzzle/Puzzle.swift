import AdventKit
import Foundation

public class Puzzle {
    let input: String

    public init(input: String) {
        self.input = input
    }

    public func part1() -> Int {
        let dimensions = splitDimensions(dimensions: input)
        let area = getArea(dimensions: dimensions)
        let areaSmallestSide = getAreaSmallestSide(dimensions: dimensions)

        return area + areaSmallestSide
    }

    public func part2() -> Int {
        return 0
    }

    public func splitDimensions(dimensions: String) -> [Int] {
        let dimensionsStringArray = dimensions.split(separator: "x")
        let dimensionsArray = dimensionsStringArray.map { Int($0)! }

        return dimensionsArray
    }

    public func getArea(dimensions: [Int]) -> Int {
        let length = dimensions[0]
        let width = dimensions[1]
        let height = dimensions[2]
        let areaFrontBack = 2*length*width
        let areaLeftRight = 2*height*length
        let areaTopBottom = 2*width*height
        let area = areaFrontBack + areaLeftRight + areaTopBottom

        return area
    }

    public func getAreaSmallestSide(dimensions: [Int]) -> Int {
        let sortedArray = dimensions.sorted(by: <)
        let lengthSmallestSide = sortedArray[0]
        let lengthNextBiggerSide = sortedArray[1]
        return lengthSmallestSide*lengthNextBiggerSide
    }
}
