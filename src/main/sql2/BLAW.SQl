-- Creëer de user tabel
CREATE TABLE IF NOT EXISTS user (
                                    user_id INT AUTO_INCREMENT PRIMARY KEY,
                                    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(13) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    activation_code VARCHAR(255) NOT NULL
    );

-- Voeg een nieuwe gebruiker toe
INSERT INTO user (email, phone_number, password, activation_code)
VALUES ('your_email@example.com', '1234567890', 'your_password', 'your_activation_code');

-- Update het wachtwoord van de 2e gebruiker
UPDATE user SET password = '2021' WHERE user_id = 2;

-- Selecteer gebruikers wiens e-mails beginnen met 'Al'
SELECT * FROM user WHERE email LIKE 'Al%';

-- Creëer de event_log tabel
CREATE TABLE IF NOT EXISTS event_log (
                                         log_id INT AUTO_INCREMENT PRIMARY KEY,
                                         user_id INT,
                                         event_date DATE,
                                         check_in_time TIME,
                                         check_out_time TIME,
                                         FOREIGN KEY (user_id) REFERENCES user(user_id)
    );

-- Voeg 20 evenementen toe, inclusief check-ins en check-outs op verschillende datums
INSERT INTO event_log (user_id, event_date, check_in_time, check_out_time)
VALUES
    (1, '2024-03-18', '08:00:00', NULL),
    (2, '2024-03-18', '08:30:00', NULL),
    (3, '2024-03-18', '09:00:00', NULL),
    -- Voeg meer evenementen toe zoals bovenstaand voor meer gebruikers en datums
    (1, '2024-03-19', NULL, '16:30:00'),
    (2, '2024-03-19', NULL, '17:00:00'),
    (3, '2024-03-19', NULL, '17:30:00');
-- Voeg meer evenementen toe zoals bovenstaand voor meer gebruikers en datums

-- Selecteer logs van vandaag
SELECT * FROM event_log WHERE event_date = CURDATE();

-- Selecteer uitchecken vóór 17:00 uur
SELECT * FROM event_log WHERE event_date = CURDATE() AND check_out_time < '17:00:00';



(1, '2023-11-05', '6:30', NULL),
(2, '2024-01-10', '7:00', NULL),
(3, '2024-01-20', '7:10', NULL),
(4, '2023-07-14', '7:30', NULL),
(5, '2023-12-08', '8:00', NULL),
(6, '2023-05-30', NULL, '19:10'),
(7, '2023-12-01', NULL, '19:30'),
(8, '2023-12-09', NULL, '20:30'),
(9, '2023-09-19', NULL, '20:45'),
(10, '2023-12-19', NULL, '21:00');









USER


CREATE TABLE IF NOT EXISTS User (
                                    USER_ID INT AUTO_INCREMENT PRIMARY KEY,
                                    EMAIL VARCHAR(255) UNIQUE NOT NULL,
    GSM_NUMMER VARCHAR(15) UNIQUE NOT NULL,
    WACHTWOORD VARCHAR(255) NOT NULL,
    ACTIVATIE_CODE VARCHAR(255) NOT NULL
    );

INSERT INTO User (EMAIL, GSM_NUMMER, WACHTWOORD, ACTIVATIE_CODE)
VALUES
    ('user1@gmail.com', '12345678', 'password', 'activatie0000'),
    ('user2@gmail.com', '87654321', 'drowssap', 'activatie1111'),
    ('user3@gmail.com', '85699321', 'password2', 'activatie1112'),
    ('user4@gmail.com', '87688321', 'drowssap2', 'activatie1113'),
    ('user5@gmail.com', '87878321', 'password3', 'activatie1114'),
    ('user6@gmail.com', '87587321', 'drowssap3', 'activatie1115'),
    ('user7@gmail.com', '87777321', 'password4', 'activatie1116'),
    ('user8@gmail.com', '87587321', 'drowssap3', 'activatie1117'),
    ('user9@gmail.com', '87587321', 'password5', 'activatie1118'),
    ('user10@gmail.com', '87587321', 'drowssap9', 'activatie1119'),
    ('user11@gmail.com', '87587321', 'drowssap5', 'activatie1120');
