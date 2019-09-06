{if $addons.esatisfaction.enabled == 'Y'}
    <div id="esat-checkout-questionnaire-container"></div>
    <br/>
    <script>
        // Update metadata
        Esat.updateMetadata('{$addons.esatisfaction.checkout_questionnaire_id}', {
            responder: {
                "email": '{$order_info.email}',
                "phone_number": '{$order_info.phone}',
            },
            questionnaire: {
                "transaction_id": '{$order_info.order_id}',
                "transaction_date": '{$order_info.timestamp|date_format:"`$settings.Appearance.date_format`, `$settings.Appearance.time_format`"}',
            }
        });
    </script>
{/if}
