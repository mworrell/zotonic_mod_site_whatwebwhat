{% extends "base.tpl" %}

{% block page_class %}page{% endblock %}

{% block main_title %}
	{% include "_page_title.tpl" %}

	{% if id.summary %}
		<p class="summary">{{ id.summary }}</p>
	{% endif %}
{% endblock %}

{% block content %}
	{% with id.depiction as dep %}
		{% if dep and dep.id.is_visible %}
			<a href="{{ dep.id.page_url }}">{% image dep class="img-responsive" mediaclass="www-page" %}</a>
		{% endif %}

		<div class="body">
			{{ m.rsc[id].body }}
			{% include "_blocks.tpl" %}
		</div>

		{% for id in id.o.depiction %}
		{% if id.is_visible and id /= dep.id %}
			<a href="{{ id.page_url }}">{% image id class="img-responsive" mediaclass="www-page" %}</a>
		{% endif %}
		{% endfor %}

		{% for id in id.o.document %}
		{% if id.is_visible and id /= dep.id %}
			<a href="{{ id.page_url }}">{% image id class="img-responsive" mediaclass="www-page" %}</a>
		{% endif %}
		{% endfor %}
	{% endwith %}
{% endblock %}

{% block meta %}
	{% include "_meta.tpl" %}
{% endblock %}
