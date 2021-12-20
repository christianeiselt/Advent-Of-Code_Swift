import AdventKit
import Foundation

public class Puzzle {
    let input: String

    public init(input: String) {
        self.input = input
    }

    public func part1() -> Int {
        var totalSum: Int = 0
        let boxesMeasurements = InputConverter()
            .getLinesSplittedAs2DIntArray(input: input, separator: "x")

        for index in 0 ..< boxesMeasurements.count {
            let boxArea = getBoxArea(boxMeasurements: boxesMeasurements[index])
            totalSum += boxArea
        }

        return totalSum
    }

    public func part2() -> Int {
        return 0
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

    public func getBoxArea(boxMeasurements: [Int]) -> Int {
        let area = getArea(dimensions: boxMeasurements)
        let areaSmallestSide = getAreaSmallestSide(dimensions: boxMeasurements)

        let boxArea = area + areaSmallestSide

        return boxArea
    }
}
