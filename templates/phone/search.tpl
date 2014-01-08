{% extends "base.tpl" %}

{% block title %}{_ Search _}{% endblock %}

{% block nav_search %}
{% endblock %}

{% block main_title %}
	{% if q.qs or q.qcat %}
	    <h1>
	    	{_ Searching for _} 
	        {% if q.qs %}<b class="qs">{{ q.qs|escape }}</b>{% endif %}
	        {% if q.qcat %}<span class="qcat">{{ m.rsc[q.qcat].title }}</span>{% endif %}
	    </h1>
	{% else %}
		<h1>{_ Search _}</h1>
	{% endif %}

	<form class="form-inline search" method="get" action="{% url search %}">
		<div class="form-group">
	        <input type="hidden" name="qcat" value="{{ q.qcat|escape }}" />
			<input class="form-control" type="text" name="qs" value="{{ q.qs|escape }}" placeholder="{_ Search site _}" />
		</div>
		<button class="btn btn-default" type="submit">{_ Search _} {{ m.rsc[q.qcat].title }}</button>
	</form>

	{% javascript %}
		$('.search input').focus();
	{% endjavascript %}
{% endblock %}

{% block content %}
	{% if q.qs or q.qcat %}
	{% with result|default_if_undefined:m.search[{query
	        text=q.qs 
	        cat=q.qcat|default:[`text`,`collection`,`document`,`location`,`mailinglist`]
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
