
-- USER table
CREATE TABLE USER (
  email_address VARCHAR(255),
  password VARCHAR(255),
  phone_number VARCHAR(255),
  name VARCHAR(255)
);

-- LOGIN table
CREATE TABLE LOGIN (
  email_id VARCHAR(255),
  password VARCHAR(255)
);

-- AD_DETAILS table
CREATE TABLE AD_DETAILS (
  ad_id INT PRIMARY KEY AUTO_INCREMENT,
  user_email_address VARCHAR(255),
  title VARCHAR(255),
  image VARCHAR(255),
  place VARCHAR(255),
  price DECIMAL(10,2),
  FOREIGN KEY (user_email_address) REFERENCES USER(email_address)
);

-- POST table
CREATE TABLE POST (
  ad_id INT PRIMARY KEY,
  name VARCHAR(255),
  category VARCHAR(255),
  contact_no VARCHAR(255),
  state VARCHAR(255),
  FOREIGN KEY (ad_id) REFERENCES AD_DETAILS(ad_id)
);