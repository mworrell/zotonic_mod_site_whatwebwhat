<tr {% if counter % 2 %}class="odd"{% else %}class="even"{% endif %}>
    <td {% include "_language_attrs.tpl" id=id %}>
        &gt; <a href="{{ id.page_url with in_collection=in_collection }}">{{ id.title|default:"&mdash;" }}</a>
    </td>
</tr>