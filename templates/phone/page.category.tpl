{% extends "page.tpl" %}

{% block main_title %}
{% with 1 as show_title_depiction%}
	{% inherit %}
{% endwith %}
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
