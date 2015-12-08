drop table urls;
create table urls (
  id serial4 primary key,
  url VARCHAR(255) not null,
title VARCHAR(255) not null,
genre VARCHAR(255) not null,
description TEXT,
dateadded DATE
);

