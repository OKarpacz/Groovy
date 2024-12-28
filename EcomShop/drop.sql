
    alter table customer_order 
       drop 
       foreign key if exists FKf0hyuyamjo7t2121k1hw1psy0;

    alter table order_item 
       drop 
       foreign key if exists FK7a0l2xeopiensbnhixxdbod07;

    alter table order_item 
       drop 
       foreign key if exists FK551losx9j75ss5d6bfsqvijna;

    drop table if exists customer_order;

    drop table if exists order_item;

    drop table if exists product;

    drop table if exists top_charts;

    drop table if exists user;
