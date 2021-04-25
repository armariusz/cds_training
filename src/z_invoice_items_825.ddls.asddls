@AbapCatalog.sqlViewName: 'Z_ITEMS_825'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'data definition invoice'
define view Z_INVOICE_ITEMS_825 as select from sepm_sddl_so_invoice_item {

    header.buyer.company_name,
    sepm_sddl_so_invoice_item.sales_order_invoice_key,
    sepm_sddl_so_invoice_item.currency_code,
    sepm_sddl_so_invoice_item.gross_amount,

@EndUserText.quickInfo: 'Paid'
    case header.payment_status
    when 'P' then 'X'
    else ' '
    end as payment_status,

    header
}
where currency_code = 'USD'
