<script>
    (function (w, d, id, c) {
        // Define e-satisfaction collection configuration
        w.esat_config = new Object();
        w.esat_config.application_id = id;
        w.esat_config.collection = c || new Object();

        // Update metadata
        w.Esat = w.Esat || new Object();
        w.Esat.updateMetadata = function (q, m) {
            w.esat_config.collection[q] = w.esat_config.collection[q] || new Object();
            w.esat_config.collection[q].metadata = m;
        };

        // Setup script
        var l = function () {
            var r = d.getElementsByTagName('script')[0], s = d.createElement('script');
            s.async = true;
            s.src = 'https://collection.e-satisfaction.com/dist/js/integration' + (!!w.jQuery ? '.jq' : '') + '.min.js';
            r.parentNode.insertBefore(s, r);
        };

        // Attach script or run script if document is loaded
        "complete" === d.readyState ? l() : (w.attachEvent ? w.attachEvent("onload", l) : w.addEventListener("load", l, false));
    })(window, document, '{$addons.esatisfaction.application_id}', new Object());
</script>
