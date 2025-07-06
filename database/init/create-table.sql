use kejiban;

create table accounts (
    id binary(16) not null,
    email varchar(255) not null,
    created_at datetime not null default current_timestamp,
    updated_at datetime not null default current_timestamp on update current_timestamp,

    primary key(id),
    unique index uq_email(email)
);

create table credentials (
    account_id binary(16) not null,
    hashed_password varchar(255) not null,
    created_at datetime not null default current_timestamp,
    updated_at datetime not null default current_timestamp on update current_timestamp,

    primary key(account_id),
    foreign key(account_id) references accounts(id)
);

create table profiles (
    account_id binary(16) not null,
    display_name varchar(50) not null,
    bio text not null,
    created_at datetime not null default current_timestamp,
    updated_at datetime not null default current_timestamp on update current_timestamp,


    primary key(account_id),
    unique index uq_display_name(display_name),
    foreign key(account_id) references accounts(id)
);