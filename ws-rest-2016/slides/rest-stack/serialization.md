### JSON-LD FTW

<a href="https://github.com/wikibus/jsonld.entities"><i class="fa fa-github"></i> JsonLD.Entities</a>

``` csharp
public class Person
{
    public string GivenName { get; set; } = "Tomasz";

    private static JObject Context =>
        new JObject(
            Vocab.Is(new Uri("http://schema.org/")));
}
```

``` csharp
var serializer = new EntitySerializer();
var json = serializer.Serialize(new Person());
var person = serializer.Deserialize<Person>(json);
```

Note:

JSON-LD doesn't pollute representations

It is RDF so it can be processed in interesting ways

Linking baked-in
