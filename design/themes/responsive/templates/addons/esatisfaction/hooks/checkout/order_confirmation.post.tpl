{if $addons.esatisfaction.enabled == 'Y'}
    <div id="esat-checkout-questionnaire-container"></div>
    <br/>
    <script>
        // Update metadata
        Esat.updateMetadata('{$addons.esatisfaction.checkout_questionnaire_id}', {
            responder: {
                "email": '{$order_info.email}',
            },
            questionnaire: {
                "transaction_id": '{$order_info.order_id}',
            }
        });
    </script>
{/if}
