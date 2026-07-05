
--Ran this to get a small list of posts to look through
SELECT * FROM public.forum_posts
WHERE date BETWEEN '2048-04-01' and '2048-04-30'
ORDER BY date ASC;

--One of the post was in english so I tried looking other posts with the same ID in that table. no matches
SELECT * FROm public.forum_posts
WHERE id = 'nbZY_';

--so then I tried to find other posts by the author
SELECT * from public.forum_posts
WHERE author = 'smart-money-44'

--users message
--You should all invest in EmptyStack Solutions soon or you'll regret it.
--My dad works there and he's got some serious inside intel. Their
--self-driving taxis are the future and the future is here.

-- I then ran this just to see the columns of the table
SELECT * FROM public.forum_accounts

--Then this to find the real name of the user
SELECT * FROM public.forum_accounts
WHERE username = 'smart-money-44'

--Name was Brad Steele

--this to look up same last name
SELECT * FROM public.forum_accounts
WHERE last_name = 'Steele'

--came back with
--Andrew Steele sharp-engine-57
--Kevin Steele stinky-tofu-98
--Brad Steele smart-money-44

--Looked for other forum post for the other users
SELECT * from public.forum_posts
WHERE author = 'sharp-engine-57'

SELECT * from public.forum_posts
WHERE author = 'stinky-tofu-98'
--didnt find any

-- Ran this to columns
SELECT * FROM public.emptystack_accounts

--Ran this to find users related to orifinal post
SELECT * FROM public.emptystack_accounts
WHERE last_name = 'Steele'

--got the following username, password, first_name, and last_name
--"triple-cart-38"	"password456"	"Andrew"	"Steele"
--"lance-main-11"	"password789"	"Lance"	"Steele"

--Andrew is the only one with an ES and forum acount

--Used andrews credentiasl to get through node mainframe

--Ran this to see columns
SELECT * FROM public.emptystack_messages


--users inital message mentioned taxis
SELECT *
FROM public.emptystack_messages
WHERE body ILIKE '%taxi%';

--"LidWj"	"your-boss-99"	"triple-cart-38"	"Project TAXI"	"Deploy Project TAXI by end of week. We need this out ASAP."

--ran this to see columns
SELECT * from public.emptystack_accounts

--looked up the senders info
SELECT * from public.emptystack_accounts
WHERE username = 'your-boss-99'

--"your-boss-99"	"notagaincarter"	"Skylar"	"Singer"

--to see columns
SELECT * from public.emptystack_projects

--taxi was in the subject
SELECT * from public.emptystack_projects
WHERE code = 'TAXI'

--"DczE0v2b"	"TAXI"

--Shutdown success
--Username: your-boss-99
--Password: notagaincarter
--Project ID: DczE0v2b