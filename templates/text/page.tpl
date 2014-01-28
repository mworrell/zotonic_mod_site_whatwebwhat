{% extends "base.tpl" %}

{# Simple page for TEXT (no media, as simple as possible) #}

{% block content %}
<div {% block content_attributes %}{% include "_language_attrs.tpl" id=id %}{% endblock %}>
	<p>
		<a href="/">&lt; {{ m.config.site.title.value }}</a>
		<a href="{% url search %}" class="pull-right">{_ Search _} &gt;</a>
	</p>
	{% include "_title.tpl" %}
	{% block main %}
		{% block summary %}
		{% if id.summary %}
			<p class="summary"><b>{{ id.summary }}</b></p>
		{% endif %}
		{% endblock %}

		{% block body %}
		<div class="body">
			{{ m.rsc[id].body }}
			{% include "_blocks.tpl" %}
		</div>
		{% endblock %}

		{% block below_body %}
			{% include "_location.tpl" %}
		{% endblock %}

		{% block related %}
			{% include "_content_list.tpl" list=id.o.hasfeatured %}
			{% include "_content_list.tpl" list=id.o.hasdocument title=_"Documents"%}
			{% include "_content_list.tpl" list=id.o.depiction title=_"Images"%}

			{% include "_content_list.tpl" list=id.o.haspart %}
			{% include "_content_list.tpl" list=id.o.relation %}

			{% include "_content_list.tpl" list=m.rsc.sidebar_collection.o.haspart %}
		{% endblock %}

		{% block meta %}
			{% include "_meta.tpl" %}
		{% endblock %}

	{% endblock %}
</div>
{% endblock %}
