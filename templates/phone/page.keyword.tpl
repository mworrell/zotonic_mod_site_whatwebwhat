{% extends "page.tpl" %}

{% block below_body %}
{% if id.name == 'keyword' %}
	{% with m.search[{all_bytitle cat=id.name}] as result %}
		<ul class="content-list">
		{% for _title,id in result %}
		    {% catinclude "_content_list_item.tpl" id counter=forloop.counter exclude=exclude in_collection=in_collection %}
		{% endfor %}
		</ul>
	{% endwith %}
{% else %}
	{% with result|default_if_undefined:m.search[{query
	        hasobject=id
	        sort="-rsc.publication_start"
	    	pagelen=10 page=q.page}] as result 
	%}
	    {% if result.total > 0 %}
 			{% include "_content_list.tpl" list=result list_id="content-pager" %}
		   	
		   	{% lazy action={moreresults visible result=result target="content-pager" template="_content_list_item.tpl"} %}

			<div class="hidden">
		        {% pager result=result %}
		   	</div>
 		{% else %}
		    <p id="search-empty">
		        {_ Did not find any pages matching _} <b class="qs">{{ q.qs|escape }}</b>.
		    </p>
	    {% endif %}
	{% endwith %}
{% endif %}
{% endblock %}
