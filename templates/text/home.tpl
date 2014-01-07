{% extends "page.tpl" %}

{% block title %}{{ m.config.site.title.value }}{% endblock %}


{% block content %}
<div {% block content_attributes %}{% include "_language_attrs.tpl" id=id %}{% endblock %}>
	<p>&nbsp;</p>
	{% include "_title.tpl" %}
	{% block main %}
		{% if id.summary %}
			<p class="summary"><b>{{ id.summary }}</b></p>
		{% endif %}

		<div class="body">
			{{ m.rsc[id].body }}
			{% include "_blocks.tpl" %}
		</div>

		{% block below_body %}{% endblock %}

		{% include "_content_list.tpl" list=id.o.hasfeatured %}
		<p>
			 &gt; <a href="{% url search %}">{_ Search _}</a>
		</p>

	    {% if id.is_editable %}
	        <a class="btn btn-mini pull-right small" href="{% url admin_edit_rsc id=id %}">{_ Edit _}</a>
	    {% endif %}

	{% endblock %}
</div>
{% endblock %}
