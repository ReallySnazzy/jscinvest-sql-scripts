create table stock_symbols_to_track (
	id serial primary key,
	ticker varchar(10),
	last_checkin date
);

create table stock_price_history (
	id serial primary key,
	close decimal(15, 2),
	high decimal(15, 2),
	low decimal(15, 2),
	open decimal(15, 2),
	symbol varchar(32),
	volume int8,
	iexcloud_key varchar(32),
	iexcloud_subkey varchar(32),
	date varchar(64),
	update_timestamp int8,
	change_over_time decimal(16, 4),
	market_change_over_time decimal(18, 4),
	uclose decimal(15, 2),
	uhigh decimal(15, 2),
	ulow decimal(15, 2),
	uopen decimal(15, 2),
	uvolume int8,
	fclose decimal(15, 2),
	fhigh decimal(15, 2),
	flow decimal(15, 2),
	fopen decimal(15, 2),
	fvolume int8,
	iexcloud_label varchar(64),
	change decimal(16, 4),
	change_percent float8
);

ALTER TABLE stock_price_history ADD UNIQUE (symbol, date);