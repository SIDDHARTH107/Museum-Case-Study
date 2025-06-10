# Museum-Case-Study

I was thinking to solve a SQL case study since a long ago. So, finally I solved a case study from TechtfQ YouTube channel. It was about a painting museum. 

```Dataset Link:``` https://www.kaggle.com/datasets/mexwell/famous-paintings

```Taken from:``` https://data.world/search?q=Famous+Paintings&scope=_all

```Description:``` Famous paintings and their artists. This data set is published to help students have interesting data to practice SQL. This dataset contains 8 csv files namely image_link.csv, museum.csv, museum_hours.csv, product_size.csv, subject.csv, work.csv, artist.csv, canvas_size.csv.

### Queries & Table
![image](https://github.com/user-attachments/assets/f6411c12-47f9-4dd4-b50e-e272284f7c3a)

This table consists of details of different artists name, their ids, nationaality, their art style, birth & their death year.

![image](https://github.com/user-attachments/assets/5af2aff4-ca4b-46d0-a998-22d8dd574750)

This table consists of width, height, & label of the canvas on which the painters have painted their paintings.

![image](https://github.com/user-attachments/assets/479d9c07-affb-487f-a23d-1f9ccf2fe299)

This table consists of all the image links and the patient's worker id.

![image](https://github.com/user-attachments/assets/a4f169bc-8a0b-4743-93e5-82b7d000c423)

This table consists of museum names and it's id, it's address, city, state, postal, phone nos., and it's url.

![image](https://github.com/user-attachments/assets/3a33374e-1156-4c9e-8425-31ec2df8dd02)

This table consists of the opening and the closing time of museum.

![image](https://github.com/user-attachments/assets/c332b8e5-e1d2-40cb-8ee2-126b193be018)

This table consists of the sale price, regular price, work_id, size_id.

![image](https://github.com/user-attachments/assets/e01fcad8-337b-4513-9138-6c38d9330c4d)

This table consists of the subject name and the work_id.

![image](https://github.com/user-attachments/assets/ae86f892-b079-427a-b6af-66ec1fdb5977)

This table consists of the work_id, the work name, style of the work, museum id, artist_id.

### Query

𝐒𝐄𝐋𝐄𝐂𝐓 𝐧𝐚𝐦𝐞, 𝐜𝐢𝐭𝐲, 𝐦𝐡.𝐝𝐚𝐲
𝐅𝐑𝐎𝐌 𝐦𝐮𝐬𝐞𝐮𝐦 𝐀𝐒 𝐦
𝐈𝐍𝐍𝐄𝐑 𝐉𝐎𝐈𝐍 𝐦𝐮𝐬𝐞𝐮𝐦_𝐡𝐨𝐮𝐫𝐬 𝐀𝐒 𝐦𝐡
𝐎𝐍 𝐦.𝐦𝐮𝐬𝐞𝐮𝐦_𝐢𝐝 = 𝐦𝐡.𝐦𝐮𝐬𝐞𝐮𝐦_𝐢𝐝
𝐖𝐇𝐄𝐑𝐄 𝐦𝐡.𝐝𝐚𝐲 𝐈𝐍 ('𝐒𝐮𝐧𝐝𝐚𝐲', '𝐌𝐨𝐧𝐝𝐚𝐲')
𝐆𝐑𝐎𝐔𝐏 𝐁𝐘 𝟏, 𝟐, 𝟑

OR

𝐒𝐄𝐋𝐄𝐂𝐓 𝐃𝐈𝐒𝐓𝐈𝐍𝐂𝐓 𝐦.𝐧𝐚𝐦𝐞 𝐚𝐬 𝐦𝐮𝐬𝐞𝐮𝐦_𝐧𝐚𝐦𝐞, 
                𝐦.𝐜𝐢𝐭𝐲, 
        				𝐦.𝐬𝐭𝐚𝐭𝐞,
        				𝐦.𝐜𝐨𝐮𝐧𝐭𝐫𝐲, 
        				𝐦𝐡.𝐝𝐚𝐲
𝐅𝐑𝐎𝐌 𝐦𝐮𝐬𝐞𝐮𝐦_𝐡𝐨𝐮𝐫𝐬 𝐦𝐡 
𝐉𝐎𝐈𝐍 𝐦𝐮𝐬𝐞𝐮𝐦 𝐦 𝐨𝐧 𝐦.𝐦𝐮𝐬𝐞𝐮𝐦_𝐢𝐝 = 𝐦𝐡.𝐦𝐮𝐬𝐞𝐮𝐦_𝐢𝐝
𝐖𝐇𝐄𝐑𝐄 𝐝𝐚𝐲 = '𝐒𝐮𝐧𝐝𝐚𝐲' 𝐀𝐍𝐃 𝐄𝐗𝐈𝐒𝐓𝐒 (𝐒𝐄𝐋𝐄𝐂𝐓 𝟏 
							                   𝐅𝐑𝐎𝐌 𝐦𝐮𝐬𝐞𝐮𝐦_𝐡𝐨𝐮𝐫𝐬 𝐦𝐡𝟐 
				                         𝐖𝐇𝐄𝐑𝐄 𝐦𝐡𝟐.𝐦𝐮𝐬𝐞𝐮𝐦_𝐢𝐝 = 𝐦𝐡.𝐦𝐮𝐬𝐞𝐮𝐦_𝐢𝐝 
			                           𝐀𝐍𝐃 𝐦𝐡𝟐.𝐝𝐚𝐲 = '𝐌𝐨𝐧𝐝𝐚𝐲')

![image](https://github.com/user-attachments/assets/a5a1ebf9-4738-4789-bcaf-b07ab82163ab)

What I am trying to achieve from this query is the name of the museum and it's city location which is open on Sundays and Mondays only.

𝐖𝐈𝐓𝐇 𝐦𝐲𝐜𝐭𝐞 𝐀𝐒
(
𝐒𝐄𝐋𝐄𝐂𝐓 *,
       𝐓𝐎_𝐓𝐈𝐌𝐄𝐒𝐓𝐀𝐌𝐏(𝐨𝐩𝐞𝐧, '𝐇𝐇:𝐌𝐈:𝐀𝐌') 𝐀𝐒 𝐨𝐩𝐞𝐧_𝐭𝐢𝐦𝐞,
	     𝐓𝐎_𝐓𝐈𝐌𝐄𝐒𝐓𝐀𝐌𝐏(𝐜𝐥𝐨𝐬𝐞, '𝐇𝐇:𝐌𝐈:𝐏𝐌') 𝐀𝐒 𝐜𝐥𝐨𝐬𝐞_𝐭𝐢𝐦𝐞,
	     𝐓𝐎_𝐓𝐈𝐌𝐄𝐒𝐓𝐀𝐌𝐏(𝐜𝐥𝐨𝐬𝐞, '𝐇𝐇:𝐌𝐈:𝐏𝐌') - 𝐓𝐎_𝐓𝐈𝐌𝐄𝐒𝐓𝐀𝐌𝐏(𝐨𝐩𝐞𝐧, '𝐇𝐇:𝐌𝐈:𝐀𝐌') 𝐀𝐒 𝐝𝐮𝐫𝐚𝐭𝐢𝐨𝐧 
𝐅𝐑𝐎𝐌 𝐦𝐮𝐬𝐞𝐮𝐦_𝐡𝐨𝐮𝐫𝐬 𝐀𝐒 𝐦𝐡
𝐈𝐍𝐍𝐄𝐑 𝐉𝐎𝐈𝐍 𝐦𝐮𝐬𝐞𝐮𝐦 𝐀𝐒 𝐦
𝐎𝐍 𝐦𝐡.𝐦𝐮𝐬𝐞𝐮𝐦_𝐢𝐝 = 𝐦.𝐦𝐮𝐬𝐞𝐮𝐦_𝐢𝐝
𝐎𝐑𝐃𝐄𝐑 𝐁𝐘 𝐝𝐮𝐫𝐚𝐭𝐢𝐨𝐧 𝐃𝐄𝐒𝐂
)

𝐒𝐄𝐋𝐄𝐂𝐓 𝐧𝐚𝐦𝐞,
       𝐬𝐭𝐚𝐭𝐞,
	     𝐝𝐮𝐫𝐚𝐭𝐢𝐨𝐧,
	     𝐝𝐚𝐲
𝐅𝐑𝐎𝐌 𝐦𝐲𝐜𝐭𝐞
𝐋𝐈𝐌𝐈𝐓 𝟏

![image](https://github.com/user-attachments/assets/1aea7a6f-4cf9-4145-8b58-d769f7ec7e35)

Here, I am trying to display the museum which is open for the longest time during a day followed by museum name, state, and hours open on which day 

𝐖𝐈𝐓𝐇 𝐜𝐭𝐞_𝐜𝐨𝐮𝐧𝐭𝐫𝐲 𝐀𝐒
	(𝐒𝐄𝐋𝐄𝐂𝐓 𝐜𝐨𝐮𝐧𝐭𝐫𝐲, 𝐂𝐎𝐔𝐍𝐓(*),
	        𝐑𝐀𝐍𝐊() 𝐎𝐕𝐄𝐑(𝐎𝐑𝐃𝐄𝐑 𝐁𝐘 𝐂𝐎𝐔𝐍𝐓(*) 𝐃𝐄𝐒𝐂) 𝐀𝐒 𝐜𝐨𝐮𝐧𝐭𝐫𝐲_𝐫𝐚𝐧𝐤𝐢𝐧𝐠
	 𝐅𝐑𝐎𝐌 𝐦𝐮𝐬𝐞𝐮𝐦
	 𝐆𝐑𝐎𝐔𝐏 𝐁𝐘 𝐜𝐨𝐮𝐧𝐭𝐫𝐲),
	    𝐜𝐭𝐞_𝐜𝐢𝐭𝐲 𝐀𝐒
	(𝐒𝐄𝐋𝐄𝐂𝐓 𝐜𝐢𝐭𝐲, 𝐂𝐎𝐔𝐍𝐓(*),
	        𝐑𝐀𝐍𝐊() 𝐎𝐕𝐄𝐑(𝐎𝐑𝐃𝐄𝐑 𝐁𝐘 𝐂𝐎𝐔𝐍𝐓(*) 𝐃𝐄𝐒𝐂) 𝐀𝐒 𝐜𝐢𝐭𝐲_𝐫𝐚𝐧𝐤𝐢𝐧𝐠
	  𝐅𝐑𝐎𝐌 𝐦𝐮𝐬𝐞𝐮𝐦
	  𝐆𝐑𝐎𝐔𝐏 𝐁𝐘 𝐜𝐢𝐭𝐲)
	  
-- 𝐍𝐨𝐰 𝐰𝐢𝐥𝐥 𝐮𝐬𝐞 𝐂𝐑𝐎𝐒𝐒 𝐣𝐨𝐢𝐧 𝐭𝐨 𝐣𝐨𝐢𝐧 𝐛𝐨𝐭𝐡 𝐭𝐡𝐞 𝐭𝐞𝐦𝐩𝐨𝐫𝐚𝐫𝐲 𝐭𝐚𝐛𝐥𝐞𝐬 𝐜𝐮𝐳 𝐭𝐡𝐞𝐲 𝐝𝐨𝐧'𝐭 𝐡𝐚𝐯𝐞 𝐚𝐧𝐲 𝐜𝐨𝐦𝐦𝐨𝐧 𝐏𝐊
𝐒𝐄𝐋𝐄𝐂𝐓 𝐒𝐓𝐑𝐈𝐍𝐆_𝐀𝐆𝐆(𝐃𝐈𝐒𝐓𝐈𝐍𝐂𝐓 𝐜𝐨𝐮𝐧𝐭𝐫𝐲, ' , ') 𝐀𝐒 𝐜𝐨𝐮𝐧𝐭𝐫𝐢𝐞𝐬,
	   𝐒𝐓𝐑𝐈𝐍𝐆_𝐀𝐆𝐆(𝐃𝐈𝐒𝐓𝐈𝐍𝐂𝐓 𝐜𝐢𝐭𝐲, ' , ') 𝐀𝐒 𝐜𝐢𝐭𝐢𝐞𝐬
𝐅𝐑𝐎𝐌 𝐜𝐭𝐞_𝐜𝐨𝐮𝐧𝐭𝐫𝐲
𝐂𝐑𝐎𝐒𝐒 𝐉𝐎𝐈𝐍 𝐜𝐭𝐞_𝐜𝐢𝐭𝐲
𝐖𝐇𝐄𝐑𝐄 𝐜𝐨𝐮𝐧𝐭𝐫𝐲_𝐫𝐚𝐧𝐤𝐢𝐧𝐠 = 𝟏
  𝐀𝐍𝐃 𝐜𝐢𝐭𝐲_𝐫𝐚𝐧𝐤𝐢𝐧𝐠 = 𝟏

![image](https://github.com/user-attachments/assets/5018786a-1f85-4a0c-92da-136df8391086)

Here, I am trying to display the country and the city with most no of museums. Outputting thw 2 seperate columns to mention the city and country and if there are multiple values, seperate them with comma.

