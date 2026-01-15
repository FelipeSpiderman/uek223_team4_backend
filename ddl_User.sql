ALTER TABLE users
(
    id         UUID         NOT NULL,
    first_name VARCHAR(255),
    last_name  VARCHAR(255),
    email      VARCHAR(255) NOT NULL,
    password   VARCHAR(255),
    CONSTRAINT pk_users PRIMARY KEY (id)
);

CREATE TABLE users_event
(
    owner_id UUID NOT NULL,
    event    VARCHAR(255)
);

CREATE TABLE users_role
(
    role_id  UUID NOT NULL,
    users_id UUID NOT NULL,
    CONSTRAINT pk_users_role PRIMARY KEY (role_id, users_id)
);

ALTER TABLE users
    ADD CONSTRAINT uc_users_email UNIQUE (email);

ALTER TABLE users_role
    ADD CONSTRAINT fk_userol_on_role FOREIGN KEY (role_id) REFERENCES role (id);

ALTER TABLE users_role
    ADD CONSTRAINT fk_userol_on_user FOREIGN KEY (users_id) REFERENCES users (id);

ALTER TABLE users_event
    ADD CONSTRAINT fk_users_event_on_user FOREIGN KEY (owner_id) REFERENCES users (id);
CREATE TABLE users
(
    id         UUID         NOT NULL,
    first_name VARCHAR(255),
    last_name  VARCHAR(255),
    email      VARCHAR(255) NOT NULL,
    password   VARCHAR(255),
    CONSTRAINT pk_users PRIMARY KEY (id)
);

CREATE TABLE users_role
(
    role_id  UUID NOT NULL,
    users_id UUID NOT NULL,
    CONSTRAINT pk_users_role PRIMARY KEY (role_id, users_id)
);

ALTER TABLE users
    ADD CONSTRAINT uc_users_email UNIQUE (email);

ALTER TABLE users_role
    ADD CONSTRAINT fk_userol_on_role FOREIGN KEY (role_id) REFERENCES role (id);

ALTER TABLE users_role
    ADD CONSTRAINT fk_userol_on_user FOREIGN KEY (users_id) REFERENCES users (id);