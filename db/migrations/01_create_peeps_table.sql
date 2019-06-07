CREATE TABLE peeps(id SERIAL PRIMARY KEY, peep VARCHAR(60), fk_user_id INT REFERENCES users (id));
