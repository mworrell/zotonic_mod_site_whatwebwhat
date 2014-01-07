{% extends "page.tpl" %}

{% block below_body %}
{% if id.name == 'keyword' %}
	{% with m.search[{all_bytitle cat=id.name}] as result %}
		<table class="table">
		{% for _title,id in result %}
		    {% catinclude "_content_list_item.tpl" id counter=forloop.counter exclude=exclude in_collection=in_collection %}
		{% endfor %}
		</table>
	{% endwith %}
{% else %}
	{% include "_content_list.tpl" list=id.s.subject %}
{% endif %}
{% endblock %}
