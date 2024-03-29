#! /bin/bash

read -p "Provide Title : " title
read -p "Provide Categories [cat1, cat2] : " categories
read -p "Provide Tags [tag1, tag2] : " tags
read -p "Enter Chapter number : " chap
read -p "Enter Post number : " post 
read -p "Enter image path : " img_path

date_format=$(date +"%Y-%m-%d")
time=$(date +"%Y-%m-%d %H:%M:%S")

title_single=$(echo $title | sed 's/ /_/g;s/?//g')

file_name="${date_format}-${title_single}.md"

echo $file_name 

echo -e "---\ntitle: \" ${title} \"\ndate: \" ${time} \"\ncategories: \"${categories}\"\nimage: \"/assets${img_path}\"\ntags: ${tags}\npermalink: \"/:categories/:title.html\"\n---" > $file_name
if [[ -z $chap ]]
then 
	echo "Post ${post}" >> $file_name 
else 
	echo "Chapter - ${chap}, Post ${post}" >> $file_name 
fi 

