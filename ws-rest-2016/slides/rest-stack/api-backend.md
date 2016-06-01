### API Server

<a href="https://github.com/wikibus/nancy.rdf"><i class="fa fa-github"></i> Nancy.RDF</a>
<a href="https://github.com/wikibus/argolis"><i class="fa fa-github"></i> Argolis</a>

``` csharp
public class PersonModule
{
    public PersonModule(Repository persons) : base("person")
    {
        Get["{id}"] = _ => persons.Get(_.id);
        Put["{id}"] => _ => persons.Update(_.id, this.Bind<Person>());
    }
}
```

``` csharp
[SupportedClass("http://example.com/vocab#Person")]
public class Person { }
```

``` csharp
public class PersonOperations : SupportedOperations<Person>
{
    public PersonOperations()
    {
        Class.SupportsGet().SupportsPut();
        Property(p => p.Friends).SupportsPost();
    }
}
```

Note:

