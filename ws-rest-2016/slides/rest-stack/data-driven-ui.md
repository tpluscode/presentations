### Representation-driven UI

``` html
<template is="type-template"
          type="http://schema.org/ImageObject" as="image"
          compact-with='{ "@vocab": "http://schema.org/" }'
          >
  <a href="[[image.contentUrl]]" target="_blank">
      <img src="[[image.thumbnail.contentUrl]]" alt="[[image.description]]" />
  </a>
</template>
```

``` html
<object-view id="main-resource"></object-view>
```

``` js
var view = document.getElementById('main-resource');

view.object = {
    '@type': 'http://schema.org/ImageObject',
    'http://schema.org/description': { '@value': 'an example' },
    'http://schema.org/contentUrl': 'http://example.com/largeImage',
    'http://schema.org/thumbnail': {
        'http://schema.org/contentUrl': 'http://example.com/smallImage'
    }
};
```
