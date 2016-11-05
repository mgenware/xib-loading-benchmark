# XIB(NIB) Loading Benchmarks

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

Clearly, even through code performs better than XIB undoubtedly, XIB loading can be considered as fast as code since a XIB with 100 subviews takes only `0.000379` second average runtime on a modern device, the performance penalty is negligible, furthermore, the overhead of XIB loading compared to code is much less on device than that on simulator.
