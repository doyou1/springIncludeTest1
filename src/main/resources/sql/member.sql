drop table test_member;

create table test_member(
    id varchar2(200) primary key
    ,pw varchar2(200) not null
    ,name varchar2(200) not null
    ,email varchar2(200)
);

commit;