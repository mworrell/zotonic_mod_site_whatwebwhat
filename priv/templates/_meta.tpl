<p class="meta">
    {% include "_meta_share.tpl" %}
    <a href="{{ id.category_id.page_url }}">{{ id.category_id.title }}</a>
	{% for id in id.o.author|is_visible %}
	    {% if forloop.first %}{_ By _}{% endif %}
	    <a href="{{ id.page_url }}">{{ id.title }}</a>{% if not forloop.last %}, {% else %} &ndash; {% endif %}
	{% endfor %}
	{% for id in id.o.subject|is_visible %}
	    {% if forloop.first %}{_ Keyword _}{% endif %}
	    <a href="{{ id.page_url }}">{{ id.title }}</a>{% if not forloop.last %}, {% else %} &ndash; {% endif %}
	{% endfor %}
    {{ id.publication_start|date:_"l, F j, Y" }}
    {% if id.is_editable %}
        &ndash; <a class="btn btn-mini" href="{% url admin_edit_rsc id=id %}">{_ Edit _}</a>
    {% endif %}
</p>
