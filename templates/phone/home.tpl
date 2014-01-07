{% extends "page.tpl" %}

{% block title %}{{ m.config.site.title.value }}{% endblock %}

{% block page_class %}home{% endblock %}

{% block nav_home %}{% endblock %}

{% block main_title %}
	{% include "_title.tpl" %}

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
{% endblock %}