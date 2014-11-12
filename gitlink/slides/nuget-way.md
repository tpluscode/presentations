## NuGet symbols package

<div class="fragment">
1. Create two `.nupkg` files
  1. One with `.dlls`
  1. Othre with `.pdbs` and source code
1. Publish both
1. Add http://srv.symbolsource.org/pdb/Public to Visual Studio source server settings
</div>

<div class="fragment">
``` bash
NuGet Pack MyPackage.nuspec -Symbols
```

``` bash
NuGet Pack MyProject.csproj -Symbols
```
</div>