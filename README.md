
## 测试1: 引用同一个Pod依赖 （Success）
```
├── demo_a  (plugin  s.dependency 'AMap3DMap')
├── demo_b  (plugin  s.dependency 'AMap3DMap')
├── example (demo_a  & demo_b 同时集成进去 成功)
```
## 测试2: 引用同一个lib.a （failure）
```
├── lib_demo_c  (plugin  依赖'libStaticFrameworkA.a')
├── lib_demo_d  (plugin  依赖'libStaticFrameworkA.a')
├── example_cd  (lib_demo_c & lib_demo_d 同时集成测试 失败, 命名冲突 )
```
## 测试3: 引用不同的otherslib.a,但都包含同一个lib.a （failure）
```
├── lib_demo_e  (plugin  依赖'libStaticFrameworkBA.a',包含了libStaticFrameworkA.a)
└── lib_demo_f  (plugin  依赖'libStaticFrameworkCA.a',包含了libStaticFrameworkA.a)
├── example_ef  (lib_demo_e & lib_demo_f 同时集成测试 失败, 符号重复 )
```
## 测试4: 通过引用静态Pods测试,依然会存在同样的问题
```
├── example_pods (测试插件 g,h,i)
├── lib_demo_g
├── lib_demo_h
├── lib_demo_i
├── pod_lib_a
├── pod_lib_a.podspec (pod打包错误)
├── pod_lib_b   (pod b)
├── pod_lib_bc  (pod bc,包含 pod b)
└── pod_lib_dc  (pod dc,包含 pod b)
```
 **以上3个插件(lib_demo_g/lib_demo_h/lib_demo_i)组合搭配集成测试均报符号冲突**