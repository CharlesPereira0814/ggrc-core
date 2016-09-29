## Copyright (C) 2016 Google Inc.
## Licensed under http://www.apache.org/licenses/LICENSE-2.0 <see LICENSE file>

Models
======

% for model in package.models:
..  class:: ${model.name}

    ${h.doc(model, 4)}

    Schema:

    ..  code-block:: sql

        ${h.textblock(model.create_table, 8)}

    Mixins:

    % for mixin in model.mixins:
    *   :class:`${mixin.name}`
    % endfor


% endfor
