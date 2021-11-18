{% extends "page.tpl" %}

{% block title %}{{ m.config.site.title.value }}{% if id.seo_title %} - {{ id.seo_title }}{% endif %}{% endblock %}

{% block page_class %}home{% endblock %}

{% block nav_home %}{% endblock %}

{% block main_title %}
	{% include "_page_title.tpl" %}

	{% if id.summary %}
		<p class="summary"><b>{{ id.summary }}</b></p>
	{% endif %}

	<div class="body">
		{{ m.rsc[id].body }}
		{% include "_blocks.tpl" %}
	</div>
{% endblock %}

{% block content %}
	{% include "_content_list.tpl" list=id.o.hasfeatured %}
{% endblock %}

{% block meta %}
    {% if id.is_editable %}
        <p><a class="btn btn-mini" href="{% url admin_edit_rsc id=id %}">{_ Edit _}</a></p>
    {% endif %}
{% endblock %}