CREATE DATABASE agence_voyage;
use agence_voyage;
CREATE TABLE Clients (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);
CREATE TABLE Destinations (
    DestinationID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50),
    Description TEXT,
    AverageCost DECIMAL(10, 2)
);
CREATE TABLE Voyages (
    VoyageID INT AUTO_INCREMENT PRIMARY KEY,
    DestinationID INT,
    StartDate DATE,
    EndDate DATE,
    Price DECIMAL(10, 2),
    FOREIGN KEY (DestinationID) REFERENCES Destinations(DestinationID)
);
CREATE TABLE Reservations (
    ReservationID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT,
    VoyageID INT,
    ReservationDate DATE,
    Status ENUM('confirmed', 'cancelled', 'pending'),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (VoyageID) REFERENCES Voyages(VoyageID)
);
CREATE TABLE Comments (
    CommentID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT,
    VoyageID INT,
    Comment TEXT,
    Rating INT,  -- Assuming ratings are integer values, for example, 1 to 5
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (VoyageID) REFERENCES Voyages(VoyageID)
);
INSERT INTO Clients  VALUES
('1516','nadir', 'djahed', 'nadirdjahed@gmail.com', '0559395377');
SELECT * FROM clients;
ALTER TABLE Destinations DROP COLUMN AverageCost;
describe destinations;
INSERT INTO Destinations VALUES
('001','Paris', 'France', 'The city of light and love, known for its cafés, museums, and vibrant art scene.'),
('002','Dubai', 'UAE', 'Famous for its futuristic architecture, luxury shopping, and lively nightlife.'),
('003','Turkey', 'Turkey', 'A transcontinental country located mainly on the Anatolian Peninsula in Western Asia and on the Balkan Peninsula in Southeast Europe.'),
('004','Bali', 'Indonesia', 'An Indonesian island known for its forested volcanic mountains, iconic rice paddies, beaches, and coral reefs.'),
('005','Omrah', 'Saudi Arabia', 'A pilgrimage to Mecca, which is one of the Five Pillars of Islam, is obligatory for all adult Muslims who are physically and financially able to undertake it.'),
('006','El Haj', 'Saudi Arabia', 'The Hajj is the largest annual gathering of people in the world.'),
('007','London', 'UK', 'The capital city of England and the United Kingdom, known for its rich history, cultural institutions, and diverse population.'),
('008','Switzerland', 'Switzerland', 'A mountainous Central European country, home to numerous lakes, villages, and the high peaks of the Alps.'),
('009','Tokyo', 'Japan', 'The capital city of Japan, known for its neon-lit skyscrapers, historic temples, and bustling street markets.'),
('010','Greece', 'Greece', 'A country in southeastern Europe with thousands of islands throughout the Aegean and Ionian seas, known for its ancient ruins, beautiful beaches, and Mediterranean cuisine.'),
('16','Alger', 'Algeria', 'The capital city of Algeria, located on the Mediterranean coast.'),
('31','Oran', 'Algeria', 'A major port city in Algeria known for its historical sites and vibrant culture.'),
('55','Constantine', 'Algeria', 'One of the oldest cities in the world, with a rich history and stunning architecture.'),
('018','Taghit', 'Algeria', 'A desert oasis town in southwestern Algeria, known for its palm groves, sand dunes, and ancient ruins.');
INSERT INTO Voyages VALUES
(NULL, 31, '2023-07-15', '2023-07-25', 1500.00),
(NULL, 005, '2023-08-10', '2023-08-20', 2200.00);
INSERT INTO Reservations VALUES
(0000,1516, NULL, '2023-06-01', 'confirmed');
describe comments;
INSERT INTO Comments  VALUES
(113,1516, null, ' Ils ont été très réactifs à toutes nos demandes et ont pris en charge tous les détails, ce qui nous a permis de profiter pleinement de notre séjour sans soucis
 Je recommande vivement cette agence à tous ceux qui recherchent un service de qualité et une expérience de voyage sans stress" ', 4);
show tables;