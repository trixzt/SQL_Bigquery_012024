--Crear la table bootcamp
CREATE TABLE bootcamp (
    bootcamp_id SERIAL PRIMARY KEY,
    name VARCHAR(60),
    duration VARCHAR (50)
);

-- Crear la tabla student
CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    surname_pat VARCHAR(50),
    surname_mat VARCHAR(50),
    phone VARCHAR(50),
    email VARCHAR(20),
    bootcamp_id int,
    FOREIGN KEY (bootcamp_id) REFERENCES BOOTCAMP(bootcamp_id)
);
ALTER TABLE student
ALTER COLUMN email SET NOT NULL;

--Tabla teacher
CREATE TABLE teacher (
teacher_id SERIAL PRIMARY KEY,
name VARCHAR(50),
surname_pat VARCHAR(50),
surname_mat VARCHAR(50),
phone VARCHAR (20),
email VARCHAR(50)
);

ALTER TABLE teacher
ALTER COLUMN email SET NOT NULL;

--tabla de modulo
CREATE TABLE modul (
modul_id SERIAL PRIMARY KEY,
name VARCHAR(90),
teacher_id int,
FOREIGN KEY (teacher_id) REFERENCES TEACHER(teacher_id)
);


--tabla de modulo y bootcamp
CREATE TABLE boot_modul (
   boot_modul_id SERIAL PRIMARY KEY,
   bootcamp_id int,
   modul_id int,
   FOREIGN KEY (bootcamp_id) REFERENCES BOOTCAMP(bootcamp_id),
   FOREIGN KEY (modul_id) REFERENCES MODUL(modul_id)
);


INSERT INTO bootcamp (name, duration) VALUES
('Full Stack Jr. Bootcamp','6 meses'),
('Desarrollo Web Full Stack','8 meses'),
('Desarrollo de Apps Móviles iOS','8 meses'),
('Big Data, Inteligencia Artificial & Machine Learning','8 meses'),
('DevOps & Cloud Computing','6 meses'),
('Ciberseguridad','7 meses'),
('Marketing Digital y Análisis de Datos','5 meses'),
('Diseño UX/UI AI Driven','6 meses'),
('Blockchain y Criptoactivos','6 meses'),
('Inteligencia Artificial','8 meses');

INSERT INTO student (name, surname_pat, surname_mat, phone, email, bootcamp_id) VALUES	
('Aliaa', 'Alvarez', 'Balbuena', '102-3456789', 'alia@email.com', 1),
('Sebastian', 'Cazarez', 'Duarte', '987-6543210', 'sebas@email.com', 2),
('Ximena', 'Esquivel', 'Fernandez', '741-0258963', 'mena@email.com', 4),
('Sofía', 'Gutierrez', 'Hernandez', '369-8520147', 'chofo@email.com', 5),
('Jaime', 'Ibarra', 'Juarez', '412-5789630', 'pame@email.com', 6),
('Silvia', 'Koch', 'Lira', '951-3687420', 'silvia@email.com', 10),
('Eva', 'Mendoza', 'Navarro', '225-4886309', 'eva@email.com', 7),
('Jazmin', 'Olivares', 'Pedraza', '788-5142369', 'jaz@email.com', 8),
('Hersia', 'Quiroz', 'Ruiz', '157-8449756', 'hersia@email.com', 1),
('Mario', 'Soto', 'Tellez', '321-5487795', 'mario@email.com', 2),
('Diana', 'Ulloa', 'Velazquez', '123-5566842', 'dianis@email.com', 9);

INSERT INTO teacher (name, surname_pat, surname_mat, phone, email) VALUES
('Araceli', 'Williams', 'Xion', '197-6488752', 'araceli@email.com'),
('Bernardo', 'Yafi', 'Zepeda', '252-6598614', 'bernardo@email.com'),
('Carla', 'Ruiz', 'Garcia', '415-4886532', 'carla@email.com'),
('Daniela', 'Zazueta', 'Blanco', '794-6315518', 'daniela@email.com'),
('Elda', 'Castro', 'Campuzano', '265-8748956', 'elda@email.com'),
('Fernando', 'Cebreros', 'Meza', '235-6895455', 'fernando@email.com'),
('Gerardo', 'Flores', 'Torres', '369-6325625', 'gerardo@email.com'),
('Hugo', 'Montoya', 'Chavez', '154-2658796', 'hugo@email.com'),
('Imelda', 'Vazquez', 'Gastelum', '951-5126354', 'imelda@email.com'),
('José', 'Cabrera', 'Rojas', '256-2598653', 'josé@email.com'),
('Demian', 'Perez', 'Rocha', '854-7856985', 'demian@email.com'),
('Janeth', 'Lopez', 'Morales', '112-3659854', 'janeth@email.com'),
('Armando', 'Sanchez', 'Herrera', '125-1245784', 'armando@email.com'),
('Eduardo', 'Gómez', 'Rivera', '102-1452635', 'eduardo@email.com'),
('Roberto', 'Martínez', 'Figueroa', '985-6487548', 'roberto@email.com'),
('Valeria', 'Díaz', 'Jara', '124-5512462', 'valeria@email.com'),
('Silvia', 'González', 'Bravo', '147-8512495', 'silvia@email.com'),
('Patricia', 'Romero', 'Zecua', '326-5142784', 'patricia@email.com'),
('Andrea', 'Valenzuela', 'Campos', '264-7514875', 'andrea@email.com'),
('Ximena', 'Pizarro', 'Garcia', '326-5841572', 'ximena@email.com'),
('Francisco', 'Fuentes', 'Rodriguez', '158-7496523', 'francisco@email.com'),
('Manuel', 'Araya', 'Cardenas', '985-6214750', 'manuel@email.com'),
('Lucero', 'Castillo', 'Miranda', '154-2162534', 'lucero@email.com');

INSERT INTO modul(name, teacher_id) VALUES
('Introducción a la programación con Python', 1),
('Ingeniería de Software', 2),
('Introducción a Java', 3),
('Prompt Engineering', 4),
('Proyecto Final: Desarrollo y Despliegue de Aplicación Web con Spring Boot', 5),
('Git & GitHub', 6),
('Fundamentos de Web: HTML5, CSS3', 7),
('Desarrollo frontend con JavaScript', 8),
('Desarrollo Backend con Node.js', 9),
('Lenguaje Swift', 10),
('Modelado y SQL', 11),
('Desarrollo iOS con Objective-C', 12),
('Patrones de Diseño y Clean', 13),
('Diseño y UX', 14),
('iOS Avanzado – Core Data/SwiftData', 15),
('Data 101', 16),
('Protección de Datos', 17),
('SQL Avanzado, ETL y DataWarehouse', 18),
('Python para Big Data & Machine Learning', 1),
('DevOps 101', 2),
('SysAdmin – Administración de redes y sistemas', 3),
('Migración a la nube (AWS)', 4),
('Ciclo de vida de un desarrollo (CI/CD)', 5),
('Cybersecurity 101', 6),
('Introducción a la Ciberseguridad', 7),
('Criptografía', 8),
('Marketing 101',9),
('Branding – UX y posicionamiento de marca', 10),
('Ecommerce – Plan de desarrollo y Estrategia', 11),
('SEO – Posicionamiento en buscadores', 12),
('UX/UI 101', 13),
('Project Management', 14),
('UX/UI Research', 15),
('Experiencia de Usuario', 16),
('Diseño UI – Introducción a Figma', 17),
('Blockchain 101', 18),
('Bitcoin y el nacimiento de la primera criptomoneda', 19),
('Aplicaciones descentralizadas (Dapps)', 20),
('IA101', 21),
('Algebra, Cálculo y  Geometría para creación de modelos IA', 22);

INSERT INTO boot_modul(bootcamp_id,modul_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 4),
(4, 4),
(9, 4),
(10, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(4, 16),
(4, 17),
(4, 18),
(10, 18),
(4, 19),
(5, 20),
(5, 21),
(5, 22),
(5, 23),
(6, 24),
(6, 25),
(6, 26),
(7, 27),
(7, 28),
(7, 29),
(7, 30),
(8, 31),
(8, 32),
(8, 33),
(8, 34),
(8, 35),
(9, 36),
(9, 37),
(9, 38),
(10, 39),
(10, 40);
