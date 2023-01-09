{% extends "base.tpl" %}

{% block page_class %}page{% endblock %}

{% block main_title %}
	{% with id.depiction as dep %}
		{% block main_title_texts %}
			{% if dep and dep.id.is_visible %}
			<div class="depiction-overlay do_clickable">
				<a href="{{ dep.id.page_url }}">{% image dep class="img-responsive" mediaclass="www-page" %}</a>

				<div class="text-overlay">
					<h1>{{ id.title }}</h1>
					{% if id.summary %}
						<p class="summary">{{ id.summary }}</p>
					{% endif %}
				</div>
			</div>
			{% else %}
				{% include "_page_title.tpl" %}

				{% if id.summary %}
					<p class="summary">{{ id.summary }}</p>
				{% endif %}
			{% endif %}
		{% endblock %}
		{% for id in id.o.depiction %}
		{% if id.is_visible and id /= dep.id %}
			<a href="{{ id.page_url }}">{% media id class="img-responsive" mediaclass="www-page" %}</a>
		{% endif %}
		{% endfor %}

		{% for id in id.o.hasdocument %}
		{% if id.is_visible and id /= dep.id %}
			<a href="{% url media_inline id=id %}" target="_medium{{ id }}" class="document-link" title="{_ Click to download _}">{% image id class="img-responsive" mediaclass="www-page-document" %}<span>{_ Click to download _}: {{ id.title }} <span>{{ id.medium.size|filesizeformat }}</span></span></a>
		{% endif %}
		{% endfor %}
	{% endwith %}
{% endblock %}

{% block content %}
	{% block body %}
		<div class="body">
			{{ m.rsc[id].body }}
			{% include "_blocks.tpl" %}
		</div>
	{% endblock %}
{% endblock %}

{% block below_body %}
	{% include "_location.tpl" %}
{% endblock %}

{% block related %}
	{% include "_content_list.tpl" list=id.o.haspart %}
	{% include "_content_list.tpl" list=m.rsc.sidebar_collection.o.haspart %}
	{% include "_content_list.tpl" list=id.o.relation %}
{% endblock %}

{% block meta %}
	{% include "_meta.tpl" %}
{% endblock %}
