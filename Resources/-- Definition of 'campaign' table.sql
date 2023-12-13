-- Definition of 'campaign' table
CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal INT NOT NULL,
    pledged INT NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,  
    launch_date VARCHAR NOT NULL,
    end_date VARCHAR NOT NULL,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
    PRIMARY KEY (cf_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Definition of 'contacts' table
CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    PRIMARY KEY (contact_id)
);

-- Definition of 'category' table
CREATE TABLE category (
    category_id VARCHAR NOT NULL,
    category_name VARCHAR NOT NULL,
    PRIMARY KEY (category_id)
);

-- Definition of 'subcategory' table
CREATE TABLE subcategory (
    subcategory_id VARCHAR NOT NULL,
    subcategory_name VARCHAR NOT NULL,
    PRIMARY KEY (subcategory_id)
);

-- Queries to select data from tables
SELECT * FROM campaign;
SELECT * FROM subcategory;
SELECT * FROM category;
SELECT * FROM contacts;
