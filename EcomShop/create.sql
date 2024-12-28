
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

    create table top_charts (
        id bigint not null auto_increment,
        artist_name varchar(255),
        track_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table user (
        id bigint not null auto_increment,
        address varchar(255),
        email varchar(255),
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table customer_order 
       add constraint FKf0hyuyamjo7t2121k1hw1psy0 
       foreign key (user_id) 
       references user (id);

    alter table order_item 
       add constraint FK7a0l2xeopiensbnhixxdbod07 
       foreign key (customer_order_id) 
       references customer_order (id);

    alter table order_item 
       add constraint FK551losx9j75ss5d6bfsqvijna 
       foreign key (product_id) 
       references product (id);
DELETE FROM order_item;
DELETE FROM customer_order;
DELETE FROM product;
DELETE FROM user;
DELETE FROM top_charts;
INSERT INTO product (name, description, price, quantity, image) VALUES ('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99, FLOOR(RAND() * 11), 'AbbeyRoadLP.webp'), ('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99, FLOOR(RAND() * 11), 'BackInBlack.webp'), ('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99, FLOOR(RAND() * 11), 'DarkSideOfTheMoon.webp'), ('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99, FLOOR(RAND() * 11), 'LedZeppelinIV.webp'), ('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99, FLOOR(RAND() * 11), 'FLEETWOODMAC.webp'), ('The Wall', 'Pink Floyd - The Wall - Double album', 39.99, FLOOR(RAND() * 11), 'TheWall.webp'), ('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99, FLOOR(RAND() * 11), 'BornToRun.webp'), ('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99, FLOOR(RAND() * 11), 'HotelCalifornia.webp'), ('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99, FLOOR(RAND() * 11), 'velvetUnderground.webp'), ('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99, FLOOR(RAND() * 11), 'StickyFingers.webp'), ('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99, FLOOR(RAND() * 11), 'BornInTheUSA.webp'), ('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99, FLOOR(RAND() * 11), 'WhiteAlbum.webp'), ('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99, FLOOR(RAND() * 11), 'AbbyRoad50.jpg'), ('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99, FLOOR(RAND() * 11), 'LetItBleed.webp'), ('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99, FLOOR(RAND() * 11), 'AreYouExperienced.webp'), ('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99, FLOOR(RAND() * 11), 'FLEETWOODBlue.webp'), ('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99, FLOOR(RAND() * 11), 'NightAtTheOpera.webp'), ('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99, FLOOR(RAND() * 11), 'KindOfBlue.webp'), ('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99, FLOOR(RAND() * 11), 'TheRiseAndFall.webp'), ('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99, FLOOR(RAND() * 11), 'TheBends.webp'), ('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99, FLOOR(RAND() * 11), 'Tapestry.webp'), ('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99, FLOOR(RAND() * 11), 'CrimsonKing.webp'), ('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99, FLOOR(RAND() * 11), 'BitchesBrew.webp'), ('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99, FLOOR(RAND() * 11), 'JoshuTree.webp'), ('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99, FLOOR(RAND() * 11), 'BlackSabatth.webp');
