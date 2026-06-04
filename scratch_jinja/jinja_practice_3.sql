{% set angels_dictionary = {
    'word': 'data',
    'part_of_speech': 'noun',
    'definition': 'the building block of life'
} %}

{{ angels_dictionary['word'] }}

{{ angels_dictionary['word'] }} ({{angels_dictionary['part_of_speech'] }}): defined as "{{ angels_dictionary['definition'] }}"
