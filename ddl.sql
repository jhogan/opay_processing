/*{
    "Request": {
        "Amount": {}, 
        "Location": {}, 
        "MerchantID": "123456789", 
        "MetaData": [
            {
                "Key": "Value"
            }
        ], 
        "Options": {}, 
        "Payee": {}, 
        "Payer": {
            "Account": {}, 
            "Identity": {
                "ID": ""
            }
        }, 
        "Purchase": {}, 
        "SkuItems": [
            {
                "ItemDescription": "Onion Rings", 
                "ItemPrice": "2.99", 
                "ItemQuantity": "2", 
                "SKU": "sm_orings", 
                "SKUItemID": "1692", 
                "UTCDateTimeAdded": ""
            }
        ], 
        "UTCDateTimeCreated": ""
    }
}
*/

create table sku_items(
    id                          bigint unsigned auto_increment primary key,
    item_desc                   varchar(255)  not null,
    item_price                  decimal(19,4) not null,
    sku                         varchar(255)  not null,
    utc_date_time_added         datetime      not null,
    merchant_id                 int
    payer_id                    int
)

create table merchant(
    id                          int auto_increment primary key,
    sku_items_id                bigint unsigned
    foreign key (sku_items_id)
        references sku_items(id)
)

create table payer(
    id                          int auto_increment primary key,
)
