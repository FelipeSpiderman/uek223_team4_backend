CREATE TABLE event
(
    id                UUID                        NOT NULL,
    event_name        VARCHAR(50)                 NOT NULL,
    event_location    VARCHAR(50),
    end_date_time     TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    start_date_time   TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    event_description VARCHAR(255),
    event_type        VARCHAR(255)                NOT NULL,
    user_id           UUID                        NOT NULL,
    CONSTRAINT pk_event PRIMARY KEY (id)
);
CREATE TABLE event
(
    id                UUID                        NOT NULL,
    event_name        VARCHAR(50)                 NOT NULL,
    event_location    VARCHAR(50),
    end_date_time     TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    start_date_time   TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    event_description VARCHAR(255),
    event_type        VARCHAR(255)                NOT NULL,
    event_user_id     UUID                        NOT NULL,
    CONSTRAINT pk_event PRIMARY KEY (id)
);

CREATE TABLE event_participants
(
    event_id UUID NOT NULL,
    role     UNKNOWN__JAVA.UTIL.MAP<JAVA.UTIL.UUID,
    EVENTROLE>
);

ALTER TABLE event_participants
    ADD CONSTRAINT fk_event_participants_on_event FOREIGN KEY (event_id) REFERENCES event (id);
CREATE TABLE event
(
    id                UUID                        NOT NULL,
    event_name        VARCHAR(50)                 NOT NULL,
    event_location    VARCHAR(50),
    end_date_time     TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    start_date_time   TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    event_description VARCHAR(255),
    event_type        VARCHAR(255)                NOT NULL,
    event_user_id     UUID                        NOT NULL,
    CONSTRAINT pk_event PRIMARY KEY (id)
);

CREATE TABLE event_participants
(
    event_id UUID NOT NULL,
    role     VARCHAR(255),
    user_id  UUID NOT NULL,
    CONSTRAINT pk_event_participants PRIMARY KEY (event_id, user_id)
);

ALTER TABLE event_participants
    ADD CONSTRAINT fk_event_participants_on_event FOREIGN KEY (event_id) REFERENCES event (id);
CREATE TABLE event
(
    id                UUID                        NOT NULL,
    event_name        VARCHAR(50)                 NOT NULL,
    event_location    VARCHAR(50),
    end_date_time     TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    start_date_time   TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    event_description VARCHAR(255),
    event_type        VARCHAR(255)                NOT NULL,
    event_user_id     UUID                        NOT NULL,
    CONSTRAINT pk_event PRIMARY KEY (id)
);

CREATE TABLE event_participants
(
    event_id UUID NOT NULL,
    role     VARCHAR(255),
    user_id  UUID NOT NULL,
    CONSTRAINT pk_event_participants PRIMARY KEY (event_id, user_id)
);

ALTER TABLE event_participants
    ADD CONSTRAINT fk_event_participants_on_event FOREIGN KEY (event_id) REFERENCES event (id);