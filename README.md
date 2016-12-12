# XIB(NIB) Loading Benchmarks
Benchmarks of XIB(NIB) loading and creating views programmatically. A [post](https://coldfunction.com/mgen/p/4d) behind this.

## Measured with dispatch_benchmark
Running on iPhone 6 Plus/iOS 9:
```
[XIB]  View with 2 sub views: 0.000045 sec
[Code] View with 2 sub views: 0.000008 sec
[XIB]  View with 20 sub views: 0.000098 sec
[Code] View with 20 sub views: 0.000056 sec
[XIB]  View with 100 sub views: 0.000379 sec
[Code] View with 100 sub views: 0.000231 sec
```

Running on Simulator/iOS 10/2.4 GHz Intel Core i5:
```
[XIB]  View with 2 sub views: 0.000129 sec
[Code] View with 2 sub views: 0.000008 sec
[XIB]  View with 20 sub views: 0.000171 sec
[Code] View with 20 sub views: 0.000057 sec
[XIB]  View with 100 sub views: 0.000448 sec
[Code] View with 100 sub views: 0.000094 sec
```

## Measured with XCTestCase
```
[Code] View with 2 sub views: average: 0.000 sec
Test Case '-[XibBenchmarksTests testCoded2ViewsPerformanceExample]' measured [Time, seconds] average: 0.000, relative standard deviation: 48.525%, values: [0.000987, 0.000339, 0.000382, 0.000397, 0.000302, 0.000305, 0.000289, 0.000705, 0.000411, 0.000313], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100
[XIB]  View with 2 sub views: 0.004 sec
Test Case '-[XibBenchmarksTests testXIB2ViewsPerformanceExample]' measured [Time, seconds] average: 0.004, relative standard deviation: 73.880%, values: [0.011082, 0.003010, 0.002508, 0.002341, 0.002451, 0.002110, 0.002416, 0.002544, 0.002178, 0.004832], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100

[Code] View with 20 sub views: average: 0.002 sec
Test Case '-[XibBenchmarksTests testCoded20ViewsPerformanceExample]' measured [Time, seconds] average: 0.002, relative standard deviation: 14.316%, values: [0.002319, 0.002036, 0.002005, 0.002400, 0.002996, 0.001973, 0.002027, 0.002058, 0.001960, 0.001947], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100
[XIB]  View with 20 sub views: 0.006 sec
Test Case '-[XibBenchmarksTests testXIB20ViewsPerformanceExample]' measured [Time, seconds] average: 0.006, relative standard deviation: 42.085%, values: [0.013462, 0.004978, 0.005452, 0.005826, 0.004532, 0.004429, 0.004208, 0.006129, 0.005413, 0.006277], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100

[Code] View with 100 sub views: average: 0.009 sec
Test Case '-[XibBenchmarksTests testCoded100ViewsPerformanceExample]' measured [Time, seconds] average: 0.009, relative standard deviation: 5.378%, values: [0.008946, 0.009531, 0.009154, 0.009545, 0.008369, 0.009575, 0.008471, 0.008433, 0.009711, 0.009046], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100
[XIB]  View with 100 sub views: average: 0.015 sec
Test Case '-[XibBenchmarksTests testXIB100ViewsPerformanceExample]' measured [Time, seconds] average: 0.015, relative standard deviation: 28.998%, values: [0.024168, 0.018874, 0.016339, 0.016213, 0.019181, 0.015719, 0.010425, 0.010425, 0.011305, 0.010327], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100
```

## Conclusion
Clearly, even through code performs better than XIB undoubtedly, XIB loading can be considered as fast as code since a XIB with 100 subviews takes only `0.000379` second average runtime on a modern device, the performance penalty is negligible, furthermore, the overhead of XIB loading compared to code is much less on device than that on simulator.
