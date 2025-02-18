-- Create feedstuff relationship
CREATE TABLE feedstuff(
	feedcode FeedCodes,
	PRIMARY KEY (feedcode),
	descriptio FreeText,
	calorificvalue CalVal,
	preparation FreeText,
	storecode StoreCodes
);

-- Serving relation
CREATE TABLE serving(
	date DATE,
	time TIME,
	locationcode LocCodes,
	feedcode FeedCodes,
	PRIMARY KEY(date, time, locationcode,feedcode),
	quantity FeedQuantities,
	CONSTRAINT contains FOREIGN KEY(feedcode) REFERENCES feedstuff,
	CONSTRAINT serves FOREIGN KEY(date, time, locationcode) REFERENCES feedingsession
);