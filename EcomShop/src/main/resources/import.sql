-- Create tables
CREATE TABLE customer_order (
                                id BIGINT NOT NULL AUTO_INCREMENT,
                                user_id BIGINT,
                                order_date VARCHAR(255),
                                order_details TEXT,
                                PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE order_item (
                            quantity INTEGER,
                            customer_order_id BIGINT NOT NULL,
                            id BIGINT NOT NULL AUTO_INCREMENT,
                            product_id BIGINT NOT NULL,
                            PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE product (
                         price FLOAT(53),
                         quantity INTEGER,
                         id BIGINT NOT NULL AUTO_INCREMENT,
                         description VARCHAR(255),
                         image VARCHAR(255),
                         name VARCHAR(255),
                         PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE user (
                      id BIGINT NOT NULL AUTO_INCREMENT,
                      email VARCHAR(255),
                      password VARCHAR(255),
                      first_name VARCHAR(255) NOT NULL,
                      last_name VARCHAR(255) NOT NULL,
                      address TEXT,
                      PRIMARY KEY (id)
) ENGINE=InnoDB;

-- Foreign keys
ALTER TABLE customer_order
    ADD CONSTRAINT FK_customer_order_user
        FOREIGN KEY (user_id)
            REFERENCES user (id);

ALTER TABLE order_item
    ADD CONSTRAINT FK_order_item_customer_order
        FOREIGN KEY (customer_order_id)
            REFERENCES customer_order (id);

ALTER TABLE order_item
    ADD CONSTRAINT FK_order_item_product
        FOREIGN KEY (product_id)
            REFERENCES product (id);

-- Insert data into product table
INSERT INTO product (name, description, price)
VALUES
    ('Abbey Road', 'The Beatles - Abbey Road - Classic vinyl album', 29.99),
    ('Back In Black', 'AC/DC - Back In Black - Rock vinyl album', 24.99),
    ('The Dark Side of the Moon', 'Pink Floyd - The Dark Side of the Moon - Iconic album', 34.99),
    ('Led Zeppelin IV', 'Led Zeppelin - Led Zeppelin IV - Classic Rock vinyl', 39.99),
    ('Rumours', 'Fleetwood Mac - Rumours - Legendary vinyl album', 28.99),
    ('The Wall', 'Pink Floyd - The Wall - Double album', 39.99),
    ('Born To Run', 'Bruce Springsteen - Born to Run - Vinyl album', 22.99),
    ('Hotel California', 'The Eagles - Hotel California - Vinyl album', 26.99),
    ('The Velvet Underground & Nico', 'The Velvet Underground & Nico - Iconic debut album', 34.99),
    ('Sticky Fingers', 'The Rolling Stones - Sticky Fingers - Vinyl album', 27.99),
    ('Born In The U.S.A.', 'Bruce Springsteen - Born In The U.S.A. - Vinyl album', 23.99),
    ('The Beatles (White Album)', 'The Beatles - The White Album - Double LP', 49.99),
    ('Abbey Road (50th Anniversary)', 'The Beatles - Abbey Road (50th Anniversary Edition) - Vinyl LP', 39.99),
    ('Let It Bleed', 'The Rolling Stones - Let It Bleed - Vinyl LP', 29.99),
    ('Are You Experienced', 'The Jimi Hendrix Experience - Are You Experienced - Classic album', 36.99),
    ('Rumors (Deluxe Edition)', 'Fleetwood Mac - Rumors (Deluxe Edition) - Vinyl Box Set', 79.99),
    ('A Night at the Opera', 'Queen - A Night at the Opera - Vinyl Album', 31.99),
    ('Kind of Blue', 'Miles Davis - Kind of Blue - Legendary jazz album', 32.99),
    ('The Rise and Fall of Ziggy Stardust', 'David Bowie - The Rise and Fall of Ziggy Stardust - Vinyl album', 34.99),
    ('The Bends', 'Radiohead - The Bends - Vinyl album', 29.99),
    ('Tapestry', 'Carole King - Tapestry - Classic folk album', 27.99),
    ('In the Court of the Crimson King', 'King Crimson - In the Court of the Crimson King - Vinyl album', 39.99),
    ('Bitches Brew', 'Miles Davis - Bitches Brew - Classic jazz fusion album', 36.99),
    ('The Joshua Tree', 'U2 - The Joshua Tree - Vinyl album', 29.99),
    ('Black Sabbath', 'Black Sabbath - Black Sabbath - Debut album', 25.99);

-- Update product images
UPDATE product SET image = 'AbbeyRoadLP.webp' WHERE name = 'Abbey Road';
UPDATE product SET image = 'BackInBlack.webp' WHERE name = 'Back In Black';
UPDATE product SET image = 'DarkSideOfTheMoon.webp' WHERE name = 'The Dark Side of the Moon';
UPDATE product SET image = 'LedZeppelinIV.webp' WHERE name = 'Led Zeppelin IV';
UPDATE product SET image = 'FLEETWOODMAC.webp' WHERE name = 'Rumours';
UPDATE product SET image = 'TheWall.webp' WHERE name = 'The Wall';
UPDATE product SET image = 'BornToRun.webp' WHERE name = 'Born To Run';
UPDATE product SET image = 'HotelCalifornia.webp' WHERE name = 'Hotel California';
UPDATE product SET image = 'velvetUnderground.webp' WHERE name = 'The Velvet Underground & Nico';
UPDATE product SET image = 'StickyFingers.webp' WHERE name = 'Sticky Fingers';
UPDATE product SET image = 'BornInTheUSA.webp' WHERE name = 'Born In The U.S.A.';
UPDATE product SET image = 'WhiteAlbum.webp' WHERE name = 'The Beatles (White Album)';
UPDATE product SET image = 'AbbyRoad50.jpg' WHERE name = 'Abbey Road (50th Anniversary)';
UPDATE product SET image = 'LetItBleed.webp' WHERE name = 'Let It Bleed';
UPDATE product SET image = 'AreYouExperienced.webp' WHERE name = 'Are You Experienced';
UPDATE product SET image = 'FLEETWOODBlue.webp' WHERE name = 'Rumors (Deluxe Edition)';
UPDATE product SET image = 'NightAtTheOpera.webp' WHERE name = 'A Night at the Opera';
UPDATE product SET image = 'KindOfBlue.webp' WHERE name = 'Kind of Blue';
UPDATE product SET image = 'TheRiseAndFall.webp' WHERE name = 'The Rise and Fall of Ziggy Stardust';
UPDATE product SET image = 'TheBends.webp' WHERE name = 'The Bends';
UPDATE product SET image = 'Tapestry.webp' WHERE name = 'Tapestry';
UPDATE product SET image = 'CrimsonKing.webp' WHERE name = 'In the Court of the Crimson King';
UPDATE product SET image = 'BitchesBrew.webp' WHERE name = 'Bitches Brew';
UPDATE product SET image = 'JoshuTree.webp' WHERE name = 'The Joshua Tree';
UPDATE product SET image = 'BlackSabatth.webp' WHERE name = 'Black Sabbath';

-- Update product quantities with random values between 1 and 10
UPDATE product
SET quantity = FLOOR(1 + RAND() * 10);
