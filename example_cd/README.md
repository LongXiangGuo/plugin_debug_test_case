1. lib_demo_c和lib_demo_d同时引用本地同一个静态库
2. 将lib_demo_c和lib_demo_d同时集成主项目中,pod install失败,显示静态库重名。

Analyzing dependencies
Fetching podspec for `Flutter` from `Flutter`
Fetching podspec for `lib_demo_c` from `.symlinks/plugins/lib_demo_c/ios`
Fetching podspec for `lib_demo_d` from `.symlinks/plugins/lib_demo_d/ios`
Downloading dependencies
Installing Flutter (1.0.0)
Installing lib_demo_c (0.0.1)
Installing lib_demo_d (0.0.1)
[!] The 'Pods-Runner' target has libraries with conflicting names: libstaticframeworka.a.
