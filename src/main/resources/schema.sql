CREATE TABLE users (
username VARCHAR(20) NOT NULL ,
password VARCHAR(20) NOT NULL ,
enabled TINYINT NOT NULL,
PRIMARY KEY (username));

CREATE TABLE user_roles (
user_role_id int NOT NULL,
username varchar(20) NOT NULL,
role varchar(20) NOT NULL,
PRIMARY KEY (user_role_id),
CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));

INSERT INTO users(username,password,enabled) VALUES ('jack','jack', 1);
INSERT INTO users(username,password,enabled) VALUES ('peter','peter', 1);
INSERT INTO users(username,password,enabled) VALUES ('alex','alex', 1);

INSERT INTO user_roles (user_role_id, username, role) VALUES (1, 'jack', 'ROLE_USER');
INSERT INTO user_roles (user_role_id, username, role) VALUES (2, 'peter', 'ROLE_USER');
INSERT INTO user_roles (user_role_id, username, role) VALUES (3, 'alex', 'ROLE_USER');

CREATE TABLE BOOKS (
   ID INT,
   TITLE VARCHAR(250),
   PICTURE VARCHAR(250),
   PRICE INT,
   DEFINITION VARCHAR(1000000)
);

INSERT INTO BOOKS VALUES (1, 'Suzanne Collins. The Hunger Games', 'https://images.gr-assets.com/books/1447303603l/2767052.jpg', 
2300, 'The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts. Early in its history, a rebellion led by a 13th district against the Capitol resulted in its destruction and the creation of an annual televised event known as the Hunger Games. In punishment, and as a reminder of the power and grace of the Capitol, each district must yield one boy and one girl between the ages of 12 and 18 through a lottery system to participate in the games. The ''tributes'' are chosen during the annual Reaping and are forced to fight to the death, leaving only one survivor to claim victory.');

INSERT INTO BOOKS VALUES (2, 'J.K. Rowling. Harry Potter and the Order of the Phoenix', 'https://images.gr-assets.com/books/1255614970l/2.jpg', 
4300, 'There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror?Harry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams. But all these things pale next to the growing threat of He-Who-Must-Not-Be-Named-a threat that neither the magical government nor the authorities at Hogwarts can stop.');

INSERT INTO BOOKS VALUES (3, 'Dan Brown. The Da Vinci Code', 'https://images.gr-assets.com/books/1303252999l/968.jpg', 
3490, 'While in Paris, Harvard symbologist Robert Langdon is awakened by a phone call in the dead of the night. The elderly curator of the Louvre has been murdered inside the museum, his body covered in baffling symbols. As Langdon and gifted French cryptologist Sophie Neveu sort through the bizarre riddles, they are stunned to discover a trail of clues hidden in the works of Leonardo da Vinci—clues visible for all to see and yet ingeniously disguised by the painter.');

INSERT INTO BOOKS VALUES (4, 'Arthur Golden. Memoirs of a Geisha', 'https://images.gr-assets.com/books/1388367666l/930.jpg', 
5500, 'A literary sensation and runaway bestseller, this brilliant debut novel presents with seamless authenticity and exquisite lyricism the true confessions of one of Japan''s most celebrated geisha. In Memoirs of a Geisha, we enter a world where appearances are paramount; where a girl''s virginity is auctioned to the highest bidder; where women are trained to beguile the most powerful men; and where love is scorned as illusion. It is a unique and triumphant work of fiction - at once romantic, erotic, suspenseful - and completely unforgettable.');

INSERT INTO BOOKS VALUES (5, 'William Shakespeare. Romeo and Juliet', 'https://images.gr-assets.com/books/1327872146l/18135.jpg', 
4500, 'In Romeo and Juliet, Shakespeare creates a world of violence and generational conflict in which two young people fall in love and die because of that love. The story is rather extraordinary in that the normal problems faced by young lovers are here so very large. It is not simply that the families of Romeo and Juliet disapprove of the lover''s affection for each other; rather, the Montagues and the Capulets are on opposite sides in a blood feud and are trying to kill each other on the streets of Verona. Every time a member of one of the two families dies in the fight, his relatives demand the blood of his killer. Because of the feud, if Romeo is discovered with Juliet by her family, he will be killed. Once Romeo is banished, the only way that Juliet can avoid being married to someone else is to take a potion that apparently kills her, so that she is burried with the bodies of her slain relatives. In this violent, death-filled world, the movement of the story from love at first sight to the union of the lovers in death seems almost inevitable.');

INSERT INTO BOOKS VALUES (6, 'Paulo Coelho. The Alchemist', 'https://images.gr-assets.com/books/1483412266l/865.jpg', 
2340, 'Paulo Coelho''s masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure. His quest will lead him to riches far different—and far more satisfying—than he ever imagined. Santiago''s journey teaches us about the essential wisdom of listening to our hearts, of recognizing opportunity and learning to read the omens strewn along life''s path, and, most importantly, to follow our dreams.');

INSERT INTO BOOKS VALUES (7, 'Fyodor Dostoyevsky. Crime and Punishment', 'https://images.gr-assets.com/books/1382846449l/7144.jpg', 
5400, 'Raskolnikov, an impoverished student living in the St. Petersburg of the tsars, is determined to overreach his humanity and assert his untrammeled individual will. When he commits an act of murder and theft, he sets into motion a story that, for its excruciating suspense, its atmospheric vividness, and its depth of characterization and vision is almost unequaled in the literatures of the world. The best known of Dostoevsky’s masterpieces, Crime and Punishment can bear any amount of rereading without losing a drop of its power over our imaginations.');

INSERT INTO BOOKS VALUES (8, 'F. Scott Fitzgerald. The Great Gatsby', 'https://images.gr-assets.com/books/1490528560l/4671.jpg', 
4560, 'THE GREAT GATSBY, F. Scott Fitzgerald''s third book, stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his new love for the bearutiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted ''gin was the national drinnk and sex the national obsession,'' it is an exquisitely crafted tale of America in the 1920s.');

INSERT INTO BOOKS VALUES (9, 'John Steinbeck. Of Mice and Men', 'https://images.gr-assets.com/books/1511302904l/890.jpg', 
5450, 'The compelling story of two outsiders striving to find their place in an unforgiving world. Drifters in search of work, George and his simple-minded friend Lennie have nothing in the world except each other and a dream--a dream that one day they will have some land of their own. Eventually they find work on a ranch in California’s Salinas Valley, but their hopes are doomed as Lennie, struggling against extreme cruelty, misunderstanding and feelings of jealousy, becomes a victim of his own strength. Tackling universal themes such as the friendship of a shared vision, and giving voice to America’s lonely and dispossessed, Of Mice and Men has proved one of Steinbeck’s most popular works, achieving success as a novel, a Broadway play and three acclaimed films.');

INSERT INTO BOOKS VALUES (10, 'Aldous Huxley. Brave New World', 'https://images.gr-assets.com/books/1523061131l/5129.jpg', 
7660, 'Brave New World is a dystopian novel written in 1931 by English author Aldous Huxley, and published in 1932. Largely set in a futuristic World State of genetically modified citizens and an intelligence-based social hierarchy, the novel anticipates huge scientific developments in reproductive technology, sleep-learning, psychological manipulation, and classical conditioning that are combined to make a utopian society that goes challenged only by a single outsider. ');

INSERT INTO BOOKS VALUES (11, 'Antoine de Saint-Exupery. The Little Prince', 'https://images.gr-assets.com/books/1367545443l/157993.jpg', 
2300, 'Moral allegory and spiritual autobiography, The Little Prince is the most translated book in the French language. With a timeless charm it tells the story of a little boy who leaves the safety of his own tiny planet to travel the universe, learning the vagaries of adult behaviour through a series of extraordinary encounters. His personal odyssey culminates in a voyage to Earth and further adventures.');

INSERT INTO BOOKS VALUES (12, 'Frances Hodgson Burnett. The Secret Garden', 'https://images.gr-assets.com/books/1327873635l/2998.jpg', 
5640, 'One of the most delightful and enduring classics of children''s literature, The Secret Garden by Victorian author Frances Hodgson Burnett has remained a firm favorite with children the world over ever since it made its first appearance. Initially published as a serial story in 1910 in The American Magazine, it was brought out in novel form in 1911. ');

INSERT INTO BOOKS VALUES (13, 'George R.R. Martin. A Game of Thrones', 'https://images.gr-assets.com/books/1436732693l/13496.jpg', 
3450, 'Here is the first volume in George R. R. Martin’s magnificent cycle of novels that includes A Clash of Kings and A Storm of Swords. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin’s stunning series is destined to stand as one of the great achievements of imaginative fiction.');

INSERT INTO BOOKS VALUES (14, 'J.K. Rowling. Harry Potter and the Sorcerer''s Stone', 'https://images.gr-assets.com/books/1474154022l/3.jpg', 
3450, 'Harry Potter''s life is miserable. His parents are dead and he''s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he''s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.');

INSERT INTO BOOKS VALUES (15, 'Homer. The Odyssey', 'https://images.gr-assets.com/books/1390173285l/1381.jpg', 
5650, 'If the Iliad is the world''s greatest war epic, then the Odyssey is literature''s grandest evocation of everyman''s journey though life. Odysseus'' reliance on his wit and wiliness for survival in his encounters with divine and natural forces, during his ten-year voyage home to Ithaca after the Trojan War, is at once a timeless human story and an individual test of moral endurance. ');

INSERT INTO BOOKS VALUES (16, 'Herman Melville. Moby-Dick or, The Whale', 'https://images.gr-assets.com/books/1327940656l/153747.jpg', 
4420, 'So Melville wrote of his masterpiece, one of the greatest works of imagination in literary history. In part, Moby-Dick is the story of an eerily compelling madman pursuing an unholy war against a creature as vast and dangerous and unknowable as the sea itself. But more than just a novel of adventure, more than an encyclopaedia of whaling lore and legend, the book can be seen as part of its author''s lifelong meditation on America. Written with wonderfully redemptive humour, Moby-Dick is also a profound inquiry into character, faith, and the nature of perception.');

INSERT INTO BOOKS VALUES (17, 'George Orwell. 1984', 'https://images.gr-assets.com/books/1348990566l/5470.jpg', 
3230, 'Among the seminal texts of the 20th century, Nineteen Eighty-Four is a rare work that grows more haunting as its futuristic purgatory becomes more real. Published in 1949, the book offers political satirist George Orwell''s nightmare vision of a totalitarian, bureaucratic world and one poor stiff''s attempt to find individuality. The brilliance of the novel is Orwell''s prescience of modern life--the ubiquity of television, the distortion of the language--and his ability to construct such a thorough version of hell. Required reading for students since it was published, it ranks among the most terrifying novels ever written.');

INSERT INTO BOOKS VALUES (18, 'Jane Austen. Pride and Prejudice', 'https://images.gr-assets.com/books/1320399351l/1885.jpg', 
4530, 'Since its immediate success in 1813, Pride and Prejudice has remained one of the most popular novels in the English language. Jane Austen called this brilliant work ''her own darling child'' and its vivacious heroine, Elizabeth Bennet, ''as delightful a creature as ever appeared in print.'' The romantic clash between the opinionated Elizabeth and her proud beau, Mr. Darcy, is a splendid performance of civilized sparring. And Jane Austen''s radiant wit sparkles as her characters dance a delicate quadrille of flirtation and intrigue, making this book the most superb comedy of manners of Regency England.');

INSERT INTO BOOKS VALUES (19, 'Mark Twain. The Adventures of Tom Sawyer', 'https://images.gr-assets.com/books/1404811979l/24583.jpg', 
5430, 'On the banks of the Mississippi River, Tom Sawyer and his friends seek out adventure at every turn. Then one fateful night in the graveyard they witness a murder. The boys make a blood oath never to reveal the secret, and they run away to be pirates in search of hidden treasure. But when Tom gets trapped in a cave with scary Injun Joe, can he escape unharmed?');

INSERT INTO BOOKS VALUES (20, 'Maya Angelou. I Know Why the Caged Bird Sings', 'https://images.gr-assets.com/books/1327957927l/13214.jpg', 
6650, 'Sent by their mother to live with their devout, self-sufficient grandmother in a small Southern town, Maya and her brother, Bailey, endure the ache of abandonment and the prejudice of the local ''powhitetrash.'' At eight years old and back at her mother’s side in St. Louis, Maya is attacked by a man many times her age—and has to live with the consequences for a lifetime. Years later, in San Francisco, Maya learns that love for herself, the kindness of others, her own strong spirit, and the ideas of great authors (''I met and fell in love with William Shakespeare'') will allow her to be free instead of imprisoned.');

INSERT INTO BOOKS VALUES (21, 'Lois Lowry. The Giver', 'https://images.gr-assets.com/books/1342493368l/3636.jpg', 
3240, 'Twelve-year-old Jonas lives in a seemingly ideal world. Not until he is given his life assignment as the Receiver does he begin to understand the dark secrets behind this fragile community.');

INSERT INTO BOOKS VALUES (22, 'Arthur Conan Doyle. The Adventures of Sherlock Holmes', 'https://images.gr-assets.com/books/1164045516l/3590.jpg', 
4400, 'In The Adventures of Sherlock Holmes, the first collection of the great consulting detective''s cases, we encounter some of his most famous and devilishly difficult problems, including A Scandal in Bohemia, The Speckled Band, The Red-Headed League, The Blue Carbuncle, The Five Orange Pips and The Man with the Twisted Lip.');

INSERT INTO BOOKS VALUES (23, 'Cormac McCarthy. The Road', 'https://images.gr-assets.com/books/1439197219l/6288.jpg', 
3490, 'A father and his son walk alone through burned America. Nothing moves in the ravaged landscape save the ash on the wind. It is cold enough to crack stones, and when the snow falls it is gray. The sky is dark. Their destination is the coast, although they don’t know what, if anything, awaits them there. They have nothing; just a pistol to defend themselves against the lawless bands that stalk the road, the clothes they are wearing, a cart of scavenged food—and each other.');



