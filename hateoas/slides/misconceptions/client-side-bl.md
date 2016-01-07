### Exhibit 4: Client-side business logic

``` html
<form>
    <button on-click="postForm">Save</button>
</form>
```
<pre class="fragment"><code class="javascript">this.postForm = function() {
    if((theResource.isDraft && permissions.canSave) === false) {
        return false;
    }

    // post the form here
}
</code></pre>

Note:

tzw. out-of-band information. nie wolno wymagać od klienta tej wiedzy

nie tak działa web
