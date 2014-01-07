{% extends "page.tpl" %}

{% block page_class %}media{% endblock %}

{% block main_title %}
	<a href="{% url media_inline id=id %}" title="{_ Click to download _}">{% image id class="img-responsive" mediaclass="www-page" alt=id.title %}</a>
{% endblock %}

{% block content %}
	{% include "_title.tpl" %}

	{% if id.summary %}
		<p class="summary">{{ id.summary }}</p>
	{% endif %}

	<div class="body">
		{{ m.rsc[id].body }}
		{% include "_blocks.tpl" %}
	</div>

    {% include "_media_info.tpl" %}

{% endblock %}

{% block related %}
	{% include "_content_list.tpl" list=id.s.depiction title=_"See also" exclude=[id] %}
{% endblock %}

