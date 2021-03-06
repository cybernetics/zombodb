create table issue252 (
  id serial8,
  data bytea
);

insert into issue252 (data) values ('123456');
create index idxissue252 on issue252 using zombodb ( (issue252.*) );

select zdb.index_mapping('idxissue252')->zdb.index_name('idxissue252')->'mappings'->'properties'->'data'->'type' as es_type;
drop table issue252 cascade;