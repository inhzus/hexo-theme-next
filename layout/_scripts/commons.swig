{% if theme.motion.enable %}
  {% set js_commons = ['src/utils.js', 'src/motion.js']%}
{% else %}
  {% set js_commons = ['src/utils.js']%}
{% endif %}
{% for common in js_commons %}
  <script src="{{ url_for(theme.js) }}/{{ common }}?v={{ version }}"></script>
{% endfor %}
