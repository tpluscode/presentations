### Adding Links

In HTTP headers:

```
Link: <510 Durham Court, Cleveland, TN 37312>;
      rel="return-address"
```

or inline:

``` json
{
  "_links": {
    "delivery-address": {
      "href": "〒100-8994 東京都中央区八重洲一丁目5番3号 東京中央郵便局"
    }
  }
}
```
