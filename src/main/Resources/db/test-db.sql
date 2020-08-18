
DELETE FROM party;
INSERT INTO party
  (ID, CREATIONTIME, UPDATETIME, VERSION, PLAYLISTURL,BACKGROUND, FONTFAMILY, GOOGLEFONTURL, PARTYNAME, DESCRIPTION, THEME, LINE, ARROW)

VALUES


(1, TIMESTAMP '2017-10-10 10:18:53.819', TIMESTAMP '2017-10-10 10:22:58.578', 2, '3P3XYqTVprXphzIfNF76c9','bg-20.png','''Unna'', serif', 'Unna:wght@400;700&display=swap','logo-20.png','The 1920s were hard hit by the dry law, it was forbidden to drink alcohol, so it was at parties where people could organize large dinners, with lots of people sitting at the table, good music and lots, lots of alcohol!', 'frame-20', 'line-20', 'arrow-20'),
(2, TIMESTAMP '2017-10-10 10:23:02.194', TIMESTAMP '2017-10-10 10:23:19.801', 1, '37i9dQZF1DX4UtSsGT1Sbe','bg-80.png','''Orbitron'', sans-serif','Orbitron:wght@400;700&display=swap','logo-80.png', '80''s? What a crazy times. Lights, colors, haircuts, clothes, the weirder the better! What about music? It was impossible to stop dancing. There are no parties like the 80''s!', 'frame-80', 'line-80', 'arrow-80'),
(3, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, '3PPoySGJSTPNuMP1jZVTKp','bg-sex.jpg','''Raleway'', sans-serif','Raleway:wght@400;700&display=swap', 'logo-sex.png', 'Do you have an amazon forest between your legs? Or do your balls weigh more than 2kg? The best things that life can give you in an incredible party full of surprises in between. Enjoy and have fun. Tomorrow you will be a new person!', 'frame-sex', 'line-sex', 'arrow-sex');




DELETE FROM fact;
INSERT INTO fact
  (ID, CREATIONTIME, UPDATETIME, VERSION, FACTSTR, PARTY_ID)

VALUES

(1, TIMESTAMP '2017-10-10 10:18:53.819', TIMESTAMP '2017-10-10 10:22:58.578', 1, 'On August 18, 1920, the 19th Amendment to the U.S. Constitution is ratified prohibiting any U.S. citizen from being denied the right to vote based on sex.', 1),
(2, TIMESTAMP '2017-10-10 10:23:02.194', TIMESTAMP '2017-10-10 10:23:19.801', 1, 'KDKA in Pittsburgh, PA, becomes the first radio station to offer regular broadcasts on November 2, 1920.', 1),
(3, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'On March 4, 1921, Congress approved the burial of an unidentified American soldier from World War I in the Tomb of the Unknown Soldier at Arlington National Cemetery.', 1),
(4, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Lila Bell and DeWitt Wallace begin publishing Readers Digest in 1922.', 1),
(5, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'F. Scott Fitzgerald publishes The Great Gatsby in 1925.', 1),
(6, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Tennessee school teacher John T. Scopes trial for teaching Darwins "Theory of Evolution" begins July 1925.', 1),
(7, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'A. A. Milne publishes his first collection of stories about the character Winnie-the-Pooh in 1926.', 1),
(8, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Charles Lindbergh lands "Spirit of St. Louis" in Paris on May 21, 1927, successfully completing the first trans-Atlantic flight.', 1),
(9, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Audiences see the first motion picture with sound The Jazz Singer in 1927.', 1),
(10, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Ford Motor Company celebrates as the 15 millionth Model T rolls off its Highland Park, MI, assembly line on May 26, 1927.', 1),
(11, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'William Faulkner publishes The Sound and the Fury in 1929.', 1),
(12, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Polish Soviet War (1920 and 21).', 1),
(13, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Major armed conflict in Ireland including Irish War of Independence (1919 to 1921) resulting in Ireland becoming an independent country in 1922 followed by the Irish Civil War (1922 and 23).', 1),
(14, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Russian famine of 1921 and 22 claimed up to five million victims.', 1),
(15, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Hitler being briefly imprisoned for one year in prison where he writes Mein Kampf.', 1),
(16, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'On April 12, 1980, the United States Olympic Committee voted to boycott the Summer Olympics in Moscow in response to the Soviet invasion of Afghanistan.', 2),
(17, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Mark David Chapman murders John Lennon outside the Dakota Hotel in New York City, NY, the evening of December 8, 1980.', 2),
(18, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Prince Charles and Lady Diana marry at Westminister Abbey on July 29, 1981.', 2),
(19, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'The musical Cats debuts on Broadway, October 8, 1982. It would hold the record for most performances (7,484) until surpassed by The Phantom of the Opera in January 2006.', 2),
(20, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Apple Computer® launches its Macintosh computer in 1984.', 2),
(21, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'The Space Shuttle Challenger explodes 74 seconds after liftoff on January 28, 1986.', 2),
(22, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Chris Van Allsburg The Polar Express wins the 1986 Caldecott Award.', 2),
(23, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'The stock market loses 22.6 percent of its value on "Black Monday," October 19, 1987.', 2),
(24, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Sylvester Stallone stars in 1988s Rambo III following the success with Rambo: First Blood (1982) and Rambo: First Blood Part II (1985).', 2),
(25, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Clark Kent helped name the Walkman.', 2),
(26, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Luke Skywalker was almost trained by buffy.', 2),
(27, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'You could buy the phone from your favorite show.', 2),
(28, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Barbra Streisand’s stylist invented the crimping iron.', 2),
(29, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Everyone was trying to learn the moonwalk.', 2),
(30, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'The average male orgasm lasts six seconds; the average female orgasm lasts twenty seconds.', 2),
(31, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'After fingers and vibrators, candles are the phallic objects used most often by female masturbators. Unlit ones, hopefully.', 3),
(32, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'The most common cause of penile rupture is vigorous masturbation. If that happens, you''re doing it wrong.', 3),
(33, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Despite what men claim, only 15 percent have a penis longer than seven inches. Only 3 percent have a penis more than eight inches long.', 3),
(34, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Orgasms can lower a woman''s risk of heart disease, stroke, breast cancer, and depression. ', 3),
(35, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'When two people kiss, they exchange between 10 million and 1 billion bacteria.', 3),
(36, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'A headache may actually make you more in the mood.', 3),
(37, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'The clitoris is way bigger than you think it is.', 3);
(38, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'A big penis won’t “stretch out” or ruin a vagina.', 3);
(39, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'Want an orgasm? Leave your socks on.', 3);




DELETE FROM cocktail;
INSERT INTO cocktail
  (ID, CREATIONTIME, UPDATETIME, VERSION, IMGURL, NAME, RECIPE, PARTY_ID)
VALUES

(1, TIMESTAMP '2017-10-10 10:23:02.194', TIMESTAMP '2017-10-10 10:23:19.801', 1, 'beeknees.png','BEE KNEES', '2 OZ Gin|0.75 OZ Honey Syrup|0.75 OZ Fresh Lemon Juice',  1),
(2, TIMESTAMP '2017-10-10 10:23:02.194', TIMESTAMP '2017-10-10 10:23:19.801', 1, 'boulevardie.png','BOULEVARDIER', '1 OZ Rye|1 OZ Campari|1 OZ Sweet Vermouth', 1),
(3, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'hankpanky.png', 'HANK PANKY', '1.5 OZ Gin|1.5 OZ Sweet Vermouth|2 Dashes Fernet Branca|Orange Twist, For Garnish',  1),
(4, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'grasshoper.png','GRASSHOPER', '1 OZ White Cacao Cream|1 OZ Green Mint Cream|1 OZ Heavy Cream',  1),
(5, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'scofflaw.png','SCOFFLAW', '1.5 OZ Rye Whiskey|1 OZ Dry Vermouth|0.75 OZ Lime Juice|0.25 OZ Grenadine|1 Dash Orange Bitters',  1),
(6, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'royalhawaiian.png','ROYAL HAWAIIAN', '1.5 OZ Gin|0.75 OZ Orgeat|1 OZ Pineapple Juice|0.5 OZ Lemon Juice',  1),
(7, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'elpresidente.png','EL PRESIDENTE', '1.5 OZ White Rum|0.75 OZ Dry Vermouth|0.5 OZ Orange Curacao|1 Dash Hibuscus Grenadine|Orange Peel',  1),
(8, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'brandyalexander.png','BRANDY ALEXANDER', '2 OZ Cognac|1 OZ Dark Creme de Cacao|1 OZ Heavy Cream|Nutmeg',  1),
(9, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'alabamasummer.png','ALABAMA SLAMMER', '11/2 oz Southern USA Style Whiskey Liqueur|1/2 oz Disaronno Amaretto|1/2 oz Rutte Sloe Gin|2 oz Orange Juice (freeshly squeezed)|3/4 oz Lemon Juice(freeshly squeezed)',  2),
(10, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'amarettosour.png','AMARETTO SOUR', '2 oz Disaronno Amaretto|1 oz Lemon Juice(freshly squeezed)|1 dash Angostura or Other Aromatic Bitters|1 oz Pasteurised Egg White',  2),
(11, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'b52.png','B-52', '1 oz Irish Cream Liqueur|1 oz Grande Marnier or Other Cognac Orange Liqueur|1 oz Coffe Liqueur',  2),
(12, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'betweenthesheets.png','BETWEEN THE SHEETS', '3/4 oz Bacardi Carta Blanca Light Rum|3/4 oz Cognac VSOP|3/4 oz De Kuyper Triple Sec(40%)|1/4 oz Lemon Juice (freshly squeezed)|1/12 Giffard Sugar Cane Syrup',  2),
(13, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'bluelagoon.png','BLUE LAGOON', '1 oz Ketel One Vodka|1 oz De kuyper Blue Curação|2/3 oz Lime Juice (freshly squeezed)|Top Up With Lemon-Lime Soda (Sprite/7-UP)',  2),
(14, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'bluehawaiian.png','BLUE HAWAIIAN FROZEN', '11/2 oz Bacardi Carta Blanca Light Rum|11/3 oz De kuyper Blue Curacao|1 oz Cream o Coconut|3 oz Pineaple Juice(fresh pressed)|1/4 oz Lime Juice(freshly squeezed)De kuyper Blue Curacao',  2),
(15, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'chillymartini.png','LITTLE DICK', '1 Serrano or ThaiChili|0.5 ounce (15ml) Simple Syrup|1.5 ounces (45ml) Gin or Vodka|2 ounces (60ml) Peach, Nectarine, or Pineapple Juice',  3),
(16, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 2, 'casinoroyal.png','SPERME', '2 ounces Gin|0.5 ounce Lemon Juice|1 teaspoon Maraschino Liqueur|Dash of Orange Bitters|1 Egg Yolk',  3),
(17, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'gisengginger.png','SKINNY DICK', '45ml Ginseng Vodka|15ml Dry Vermouth|0.5 stalk Lemongrass, Roughly Chopped|3 Slices of Fresh Ginger|10ml Ginger Syrup',  3),
(18, TIMESTAMP '2017-10-10 14:30:37.769', TIMESTAMP '2017-10-10 14:30:43.042', 1, 'brandyalexander.png','SMOOTH VAGINA', '1.5 ounces Cognac|1 ounce Dark Cacao Cream|1 ounce Cream|Garnish: Grated Nutmeg',  3);

