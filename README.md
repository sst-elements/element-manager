## Built through CMake

- [ ] ariel
- [x] cacheTracer
- [ ] cassini
- [ ] CramSim
- [ ] ember
- [ ] firefly
- [x] hermes
- [x] kingsley
- [ ] memHierarchy
- [x] merlin
- [x] Messier
- [x] miranda
- [ ] prospero
- [ ] Samba
- [ ] scheduler
- [ ] shogun
- [ ] simpleElementExample
- [ ] simpleSimulation
- [x] thornhill
- [x] VaultSimC
- [ ] zodiac

## Test statuses

|Element|Test|Monolithic|Split|Notes|
|-------|----|:--------:|:---:|-----|
|ariel|`None`|⛔|⛔||
|cacheTracer|||||
|cassini|||||
|CramSim|||||
|ember|||||
|firefly|||||
|hermes|||||
|kingsley|`noc_mesh_32_test.py`|✔️|✔️||
|memHierarchy|||||
|merlin|`dragon_128_test.py`|✔️|✔️||
||`dragon_72_test.py`|✔️|✔️||
||`fattree_128_test.py`|✔️|✔️||
||`fattree_256_test.py`|✔️|✔️||
||`torus_128_test.py`|✔️|✔️||
||`torus_5_trafficgen.py`|✔️|✔️||
||`torus_64_test.py`|✔️|✔️||
|Messier|`gupsgen_2RANKS.py`|✔️|⚠️|8.7× additional runtime after refactor|
||`gupsgen_fastNVM.py`|✔️|⚠️|8.1× additional runtime after refactor|
||`gupsgen.py`|✔️|⚠️|8.8× additional runtime after refactor|
||`stencil3dbench_messier.py`|✔️|⚠️|1.5× additional runtime after refactor|
||`streambench_messier.py`|✔️|⚠️|8.5× additional runtime after refactor|
|miranda|||||
|prospero|||||
|Samba|||||
|scheduler|||||
|shogun|||||
|simpleElementExample|||||
|simpleSimulation|||||
|thornhill|||||
|VaultSimC|`pimExper.py`|❌|❌|`[SST Core] can't find requested component or subcomponent 'ariel.ariel'`|
||`sdl1.py`|✔️|✔️||
||`sdl2.py`|✔️|⚠️|21× additional runtime after refactor|
||`sdl3.py`|❌|❌|`[Python] NameError: global name 'memctrl' is not defined`|
|zodiac|||||
