## NuGet symbols package

1. Create two `.nupkg` files
  1. One with `.dlls`
  1. Other with `.pdbs` and source code
1. Publish both
1. Add http://srv.symbolsource.org/pdb/Public to Visual Studio source server settings

[Details here](http://docs.nuget.org/docs/creating-packages/creating-and-publishing-a-symbol-package)