#=========================================================================================
#view count plan
CREATE OR REPLACE VIEW podcast_cluster AS SELECT 
R.spotify_subscription_plan,
count(R.ID)
FROM user_podcast AS L RIGHT JOIN user_premium AS R ON L.ID = R.ID
group by R.spotify_subscription_plan ;
select * from podcast_cluster;

#=========================================================================================
#fav_pod_genre by plan
#view count plan
CREATE OR REPLACE VIEW fav_pod AS SELECT 
fav_pod_genre,
R.spotify_subscription_plan,
count(R.ID)
FROM user_podcast AS L RIGHT JOIN user_premium AS R ON L.ID = R.ID
where fav_pod_genre !="none"
group by R.spotify_subscription_plan, fav_pod_genre
ORDER BY R.spotify_subscription_plan;
select * from fav_pod;

#=========================================================================================
#pod_host_preference by plan    

CREATE OR REPLACE VIEW fav_host AS SELECT 
pod_host_preference,
R.spotify_subscription_plan,
count(R.ID)
FROM user_podcast AS L RIGHT JOIN user_premium AS R ON L.ID = R.ID
where pod_host_preference !="none" 
group by R.spotify_subscription_plan, pod_host_preference
ORDER BY R.spotify_subscription_plan;
select * from fav_host;

#=========================================================================================
#preffered_pod_duration by plan
CREATE OR REPLACE VIEW fav_duration AS SELECT
preffered_pod_duration,
R.spotify_subscription_plan,
count(R.ID)
FROM user_podcast AS L RIGHT JOIN user_premium AS R ON L.ID = R.ID
where preffered_pod_duration !="none"
group by R.spotify_subscription_plan, preffered_pod_duration
ORDER BY R.spotify_subscription_plan;
select * from fav_duration;

#=========================================================================================
#pod_variety_satisfaction by plan
CREATE OR REPLACE VIEW fav_variety AS SELECT
pod_variety_satisfaction,
R.spotify_subscription_plan,
count(R.ID)
FROM user_podcast AS L RIGHT JOIN user_premium AS R ON L.ID = R.ID
where pod_variety_satisfaction !="none"
group by R.spotify_subscription_plan, pod_variety_satisfaction
ORDER BY R.spotify_subscription_plan;
select * from fav_variety;
#=========================================================================================
#preferred_listening_content by plan
CREATE OR REPLACE VIEW fav_content AS SELECT
preferred_listening_content,
R.spotify_subscription_plan,
count(R.ID)
FROM user_podcast AS L RIGHT JOIN user_premium AS R ON L.ID = R.ID
where preferred_listening_content !="none"
group by R.spotify_subscription_plan, preferred_listening_content
ORDER BY R.spotify_subscription_plan;
select * from fav_content;
#=========================================================================================
#pod_lis_frequency by plan
CREATE OR REPLACE VIEW fav_frequency AS SELECT
L.pod_lis_frequency,
R.spotify_subscription_plan,
count(R.ID)
FROM user_podcast AS L RIGHT JOIN user_premium AS R ON L.ID = R.ID
where L.pod_lis_frequency !="none"
group by R.spotify_subscription_plan, L.pod_lis_frequency
ORDER BY R.spotify_subscription_plan;
select * from fav_frequency;
#=========================================================================================
#preffered_pod_format by plan
CREATE OR REPLACE VIEW fav_format AS SELECT
preffered_pod_format,
R.spotify_subscription_plan,
count(R.ID)
FROM user_podcast AS L RIGHT JOIN user_premium AS R ON L.ID = R.ID
where preffered_pod_format !="none"
group by R.spotify_subscription_plan, preffered_pod_format
ORDER BY R.spotify_subscription_plan;
select * from fav_format
