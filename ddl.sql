create table merchant(
    id                          bigint unsigned auto_increment primary key
);

create table payer(
    id                          bigint unsigned auto_increment primary key
);

create table sku_items(
    id                          bigint unsigned auto_increment primary key,
    item_desc                   varchar(255)     not null,
    item_price                  decimal(19,4)    not null,
    sku                         varchar(255)     not null,
    utc_date_time_added         datetime         not null,
    merchant_id                 bigint unsigned  not null,
    payer_id                    bigint unsigned  not null,

    index ix_promo (payer_id, sku, utc_date_time_added),

    foreign key(merchant_id)
        references merchant(id),

    foreign key(payer_id)
        references payer(id)
);
