CREATE TABLE Users (
  user_id VARCHAR(20) PRIMARY KEY,
  signup_date DATE,
  acquisition_channel VARCHAR(20),
  country VARCHAR(10),
  device_type VARCHAR(20)
);

CREATE TABLE FeatureExposure (
  user_id VARCHAR(20),
  exposed TINYINT,
  PRIMARY KEY (user_id, exposed),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Churn (
	user_id VARCHAR(20),
    churned_30d BOOL,
    PRIMARY KEY (user_id, churned_30d),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE DailyListeningActivity (
	user_id VARCHAR(20),
    date_listened DATE,
    sessions INT,
    minutes_listened FLOAT,
    songs_streamed INT,
    playlists_created INT,
    PRIMARY KEY (user_id, date_listened),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Subscriptions (
	user_id VARCHAR(20),
    date_purchased DATE,
    is_premium BOOL,
    revenue NUMERIC(2,2),
    PRIMARY KEY (user_id, date_purchased),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

LOAD DATA LOCAL INFILE '/Users/justinpilson/Desktop/School/Year4/Projects/spotify-analysis/data/Users.csv'
INTO TABLE Users
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
