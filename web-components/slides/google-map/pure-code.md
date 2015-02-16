``` js
<script src="/bower_components/webcomponentsjs/webcomponents.min.js" ></script>
<link rel="import" href="/bower_components/google-map/google-map.html" />

<style>
    google-map {
        height: 400px;
        display: block;
        margin-top: 15px;
        margin-bottom: 15px;
    }
</style>

<google-map fittomarkers>
    <google-map-marker latitude="51.106217" longitude="16.971148"
                       title="PGS Wrocław">
    </google-map-marker>
    <google-map-marker latitude="50.04963" longitude="22.008959"
                       title="PGS Rzeszów">
    </google-map-marker>
    <google-map-marker latitude="52.18034" longitude="20.996071"
                       title="PGS Warszawa">
    </google-map-marker>
    <google-map-marker latitude="54.359145" longitude="18.646456"
                       title="PGS Gdańsk">
    </google-map-marker>
</google-map>
```