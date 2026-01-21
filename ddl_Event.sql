CREATE TABLE users (
    id UUID NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255),
    CONSTRAINT pk_users PRIMARY KEY (id),
    CONSTRAINT uc_users_email UNIQUE (email)
);

DROP TABLE IF EXISTS event CASCADE;

CREATE TABLE event (
                       id UUID NOT NULL,
                       event_name VARCHAR(50) NOT NULL,
                       event_location VARCHAR(50),
                       start_date_time TIMESTAMP WITHOUT TIME ZONE NOT NULL,
                       end_date_time TIMESTAMP WITHOUT TIME ZONE NOT NULL,
                       event_description VARCHAR(255),
                       event_type VARCHAR(255) NOT NULL,
                       user_id UUID NOT NULL,
                       CONSTRAINT pk_event PRIMARY KEY (id),
                       CONSTRAINT fk_event_user FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE users_role (
                            role_id UUID NOT NULL,
                            users_id UUID NOT NULL,
                            CONSTRAINT pk_users_role PRIMARY KEY (role_id, users_id),
                            CONSTRAINT fk_userol_on_role FOREIGN KEY (role_id) REFERENCES role (id),
                            CONSTRAINT fk_userol_on_user FOREIGN KEY (users_id) REFERENCES users (id)
);
-- EVENT Authorities
INSERT INTO authority(id, name) VALUES
                                    (gen_random_uuid(), 'EVENT_CREATE'),
                                    (gen_random_uuid(), 'EVENT_READ'),
                                    (gen_random_uuid(), 'EVENT_MODIFY'),
                                    (gen_random_uuid(), 'EVENT_DELETE')
ON CONFLICT DO NOTHING;

-- Zuweisen an ADMIN Role
INSERT INTO role_authority(role_id, authority_id)
SELECT 'ab505c92-7280-49fd-a7de-258e618df074', id
FROM authority
WHERE name IN (
               'EVENT_CREATE','EVENT_READ','EVENT_MODIFY','EVENT_DELETE',
               'USER_MODIFY','USER_DEACTIVATE'
    )
ON CONFLICT DO NOTHING;
