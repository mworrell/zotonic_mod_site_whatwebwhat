{% if id.address_country or id.phone or id.email or id.website or id.computed_location_lat|is_defined %}
<div class="location">
	{% if id.address_country %}
		<div class="adr">
			{% if id.address_street_1 %}<span class="street-address">{{ id.address_street_1 }}</span><br/>{% endif %}
			{% if id.address_street_2 %}<span class="street-address-2">{{ id.address_street_2 }}</span><br/>{% endif %}
			{% if id.address_postcode %}<span class="postal-code">{{ id.address_postcode }}</span>,{% endif %}
			{% if id.address_city %}<span class="locality">{{ id.address_city }}</span><br/>{% endif %}
			{% if id.address_state %}<span class="state">{{ id.address_state }}</span><br/>{% endif %}
			<span class="country">{{ m.l10n.country_name[id.address_country] }}</span>
		</div>
	{% endif %}

	{% if id.phone|default:id.phone_mobile %}
	<div class="tel">
		<a href="tel:{{ id.phone|default:id.phone_mobile }}">{{ id.phone|default:id.phone_mobile }}</a>
	</div>
	{% endif %}
	
	{% if id.email %}
		<div class="mailto"><a href="mailto:{{ id.email }}">{{ id.email }}</a></div>
	{% endif %}

	{% if id.website %}
		<div class="website"><a href="{{ id.website }}">{{ id.website }}</a></div>
	{% endif %}

	{% if id.computed_location_lat|is_defined %}
	<div class="map">
		<a href="http://maps.google.com/?q={{ id.computed_location_lat }},{{ id.computed_location_lng }}" target="_blank">
			{% include "_map.tpl" %}
		</a>
	</div>
	{% endif %}
</div>
{% endif %}

