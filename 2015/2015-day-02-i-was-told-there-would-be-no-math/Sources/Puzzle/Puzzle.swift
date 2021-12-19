import AdventKit
import Foundation

public class Puzzle {
    let input: String

    public init(input: String) {
        self.input = input
    }

    public func part1() -> Int {
        let boxMeasurements = AdventKit().getLinesAsList(input: input)
        var totalSum: Int = 0

        for index in 0 ..< boxMeasurements.count {
            let boxArea = getAreaForBox(boxMeasure: boxMeasurements[index])
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

    public func getAreaForBox(boxMeasure: String) -> Int {
        let dimensions = AdventKit().getDimensionsArray(input: boxMeasure)
        let area = getArea(dimensions: dimensions)
        let areaSmallestSide = getAreaSmallestSide(dimensions: dimensions)

        return area + areaSmallestSide
    }
}
