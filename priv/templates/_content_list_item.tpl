{% if id.is_visible and id.is_published and not id|member:exclude %}
	{% with id.depiction as dep %}
	{% if dep and dep.id.is_visible and not dep.id|member:exclude %}
		<li {% include "_language_attrs.tpl" id=id class="do_clickable depiction-overlay" %}>
			{% if dep.id.is_a.document %}
		    	<img src="{% image_url dep mediaclass='www-list-item-document' %}" alt="" class="img-responsive" /> 
			{% else %}
				{% image dep.id mediaclass='www-list-item' class="img-responsive" %}
		    {% endif %}
			<div class="text-overlay">
			    <h3><a href="{{ id.page_url with in_collection=in_collection }}">{{ id.title|default:"&mdash;" }}</a></h3>
				<p>
					{{ id.subtitle }}
				</p>
			</div>
		</li>
	{% else %}
		<li {% include "_language_attrs.tpl" id=id class="do_clickable" %}>
		    <h3><a href="{{ id.page_url with in_collection=in_collection }}">{{ id.title|default:"&mdash;" }}</a></h3>
			<p>
		    	{{ id|summary:120 }}
			</p>
		</li>
	{% endif %}
	{% endwith %}
{% endif %}
