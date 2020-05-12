## Built through CMake

- [ ] ariel
- [ ] cacheTracer
- [ ] cassini
- [ ] CramSim
- [ ] ember
- [ ] firefly
- [x] GNA
- [ ] hermes
- [x] kingsley
- [ ] memHierarchy
- [ ] merlin
- [ ] Messier
- [ ] miranda
- [ ] Opal
- [ ] prospero
- [ ] Samba
- [ ] scheduler
- [ ] shogun
- [ ] simpleElementExample
- [ ] simpleSimulation
- [ ] thornhill
- [x] VaultSimC
- [ ] zodiac

## Test statuses

|Element|Test|Monolithic|Split|
|-------|----|----------|-----|
|ariel|`None`|⛔|⛔|
|cacheTracer||Not tested|Not tested|
|cassini||Not tested|Not tested|
|CramSim||Not tested|Not tested|
|ember||Not tested|Not tested|
|firefly||Not tested|Not tested|
|GNA|`test.py`|✔️|✔️|
|hermes||Not tested|Not tested|
|kingsley|`noc_mesh_32_test.py`|✔️|✔️|
|memHierarchy||Not tested|Not tested|
|merlin||Not tested|Not tested|
|Messier||Not tested|Not tested|
|miranda||Not tested|Not tested|
|Opal||Not tested|Not tested|
|prospero||Not tested|Not tested|
|Samba||Not tested|Not tested|
|scheduler||Not tested|Not tested|
|shogun||Not tested|Not tested|
|simpleElementExample||Not tested|Not tested|
|simpleSimulation||Not tested|Not tested|
|thornhill||Not tested|Not tested|
|VaultSimC|`pimExper.py`|❌`[SST Core] can't find requested component or subcomponent 'ariel.ariel'`|❌`[SST Core] can't find requested component or subcomponent 'ariel.ariel'`|
||`sdl1.py`|✔️|✔️|
||`sdl2.py`|✔️|⚠️ 21× additional runtime|
||`sdl3.py`|❌`[Python] NameError: global name 'memctrl' is not defined`|❌`[Python] NameError: global name 'memctrl' is not defined`|
|zodiac||Not tested||
