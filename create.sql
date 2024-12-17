    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint,
        id bigint not null auto_increment,
        product_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        image varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        image varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        image varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        image varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
SELECT * FROM product;

    create table customer_order (
        id bigint not null auto_increment,
        user_id bigint,
        order_date varchar(255),
        order_details TEXT,
        primary key (id)
    ) engine=InnoDB;

    create table order_item (
        quantity integer,
        customer_order_id bigint not null,
        id bigint not null auto_increment,
        product_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

    create table product (
        price float(53),
        quantity integer,
        id bigint not null auto_increment,
        description varchar(255),
        image varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        email varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table if exists customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table if exists order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table if exists order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99);
INSERT INTO product (name, description, price);
VALUES;
('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99);
INSERT INTO product (name, description, price);
VALUES;
('The Wall', 'Pink Floyd - The Wall - Double album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99);
INSERT INTO product (name, description, price);
VALUES;
('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99);
INSERT INTO product (name, description, price);
VALUES;
('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99);
INSERT INTO product (name, description, price);
VALUES;
('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99);
INSERT INTO product (name, description, price);
VALUES;
('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99);
INSERT INTO product (name, description, price);
VALUES;
('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99);
INSERT INTO product (name, description, price);
VALUES;
('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99);
INSERT INTO product (name, description, price);
VALUES;
('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99);
INSERT INTO product (name, description, price);
VALUES;
('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99);
INSERT INTO product (name, description, price);
VALUES;
('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99);
INSERT INTO product (name, description, price);
VALUES;
('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99);
INSERT INTO product (name, description, price);
VALUES;
('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99);
INSERT INTO product (name, description, price);
VALUES;
('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);
UPDATE product SET image = 'AbbeyRoad.webp' WHERE name = 'Abbey Road';
UPDATE product SET image = 'BackInBlack.webp' WHERE name = 'Back In Black';
UPDATE product SET image = 'DarkSideOfTheMoon.webp' WHERE name = 'The Dark Side of the Moon';
UPDATE product SET image = 'LedZeppelinIV.webp' WHERE name = 'Led Zeppelin IV';
UPDATE product SET image = 'BlackSabbath.webp' WHERE name = 'Black Sabbath';
UPDATE product SET image = 'TheWall.webp' WHERE name = 'The Wall';
UPDATE product SET image = 'BornInTheUSA.webp' WHERE name = 'Born In The U.S.A.';
UPDATE product SET image = 'BornToRun.webp' WHERE name = 'Born To Run';
UPDATE product SET image = 'HotelCalifornia.webp' WHERE name = 'Hotel California';
UPDATE product SET image = 'VelvetUnderground.webp' WHERE name = 'The Velvet Underground';
UPDATE product SET image = 'StickyFingers.webp' WHERE name = 'Sticky Fingers';
UPDATE product SET image = 'LetItBleed.webp' WHERE name = 'Let It Bleed';
UPDATE product SET image = 'AreYouExperienced.webp' WHERE name = 'Are You Experienced';
UPDATE product SET image = 'DoorsDeluxeEdition.webp' WHERE name = 'The Doors (Deluxe Edition)';
UPDATE product SET image = 'NightAtTheOpera.webp' WHERE name = 'Night At The Opera';
UPDATE product SET image = 'KindOfBlue.webp' WHERE name = 'Kind Of Blue';
UPDATE product SET image = 'WhiteAlbum.webp' WHERE name = 'The Beatles (White Album)';
UPDATE product SET image = 'TheRiseAndFall.webp' WHERE name = 'The Rise and Fall of Ziggy Stardust';
UPDATE product SET image = 'Tapestry.webp' WHERE name = 'Tapestry';
UPDATE product SET image = 'JoshuaTree.webp' WHERE name = 'Joshua Tree';
UPDATE product SET image = 'FleetwoodMac.webp' WHERE name = 'Fleetwood Mac';
UPDATE product SET image = 'BitchesBrew.webp' WHERE name = 'Bitches Brew';
UPDATE product SET image = 'CrimsonKing.webp' WHERE name = 'In The Court of the Crimson King';
UPDATE product SET image = 'TheBends.webp' WHERE name = 'The Bends';
