drop table if exists cards;
create table cards (
  id integer primary key autoincrement,
  type tinyint not null, /* 1 for vocab, 2 for code */
  front text not null,
  back text not null,
  raw_back text not null,
  known boolean default 0
);

-- for updates
-- ALTER TABLE cards ADD COLUMN raw_back text;
-- update cards set raw_back = back;