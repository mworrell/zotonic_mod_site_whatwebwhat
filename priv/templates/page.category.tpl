{% extends "page.tpl" %}

{% block content %}
	<div class="body">
		{{ m.rsc[id].body }}
		{% include "_blocks.tpl" %}
	</div>
{% endblock %}

{% block below_body %}
	{% with m.search[{query cat=[id.name] pagelen=10 page=q.page sort="-rsc.publication_start"}] as result %}

		{% include "_content_list.tpl" list=result list_id="content-pager" %}
	   	{% lazy action={moreresults visible result=result target="content-pager" template="_content_list_item.tpl"} %}

		<div class="hidden">
	        {% pager result=result %}
	   	</div>
	{% endwith %}
{% endblock %}
