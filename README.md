
## 测试1: 引用统一个Pod依赖 （Success）
├── demo_a  (plugin  s.dependency 'AMap3DMap')
├── demo_b  (plugin  s.dependency 'AMap3DMap')
├── example (demo_a  & demo_b 同时集成进去 成功)
## 测试2: 引用统一个lib.a （failure）
├── lib_demo_c  (plugin  依赖'libStaticFrameworkA.a')
├── lib_demo_d  (plugin  依赖'libStaticFrameworkA.a')
├── example_cd  (lib_demo_c & lib_demo_d 同时集成测试 失败, 命名冲突 )
## 测试3: 引用不同的otherslib.a,但都包含同一个lib.a （failure）
├── lib_demo_e  (plugin  依赖'libStaticFrameworkBA.a',包含了libStaticFrameworkA.a)
└── lib_demo_f  (plugin  依赖'libStaticFrameworkCA.a',包含了libStaticFrameworkA.a)
├── example_ef  (lib_demo_e & lib_demo_f 同时集成测试 失败, 符号重复 )

