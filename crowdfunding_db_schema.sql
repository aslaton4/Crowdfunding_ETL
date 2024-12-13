-- create category table
create table Category(
category_id VARCHAR not null,
category VARCHAR not null,
primary key(category_id)
);

SELECT * FROM Category;

-- create subcategory table
create table Subcategory(
subcategory_id VARCHAR not null,
subcategory VARCHAR not null,
primary key(subcategory_id)
);

SELECT * FROM Subcategory;

--create contacts table
create table Contacts(
contact_id int not null,
first_name VARCHAR not null,
last_name VARCHAR not null,
email VARCHAR not null,
primary key(contact_id)
);

SELECT * FROM Contacts;

-- create campaign id
create table Campaign(
cf_id INT not null,
contact_id INT not null,
company_name VARCHAR not null,
description VARCHAR not null,
goal FLOAT not null,
pledged FLOAT not null,
outcome VARCHAR not null,
backers_count INT not null,
country VARCHAR not null,
currency VARCHAR not null,
launch_date DATE not null,
end_date DATE not null,
category_id VARCHAR not null,
subcategory_id VARCHAR not null,
primary key(cf_id),
foreign key(contact_id) references contacts(contact_id),
foreign key(category_id) references category(category_id),
foreign key(subcategory_id) references subcategory(subcategory_id)
);


SELECT * FROM Campaign;
