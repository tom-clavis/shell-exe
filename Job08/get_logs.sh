date_txt=$(date +%d-%m-%Y-%H:%M)
date_tar=$(date +%d-%m-%Y-%H-%M)
name_txt="number_connection-"$date_txt".txt"
name_tar="number_connection-"$date_tar".tar"
last | wc -l > /home/tom/Documents/Job08/$name_txt

tar -cvf /home/tom/Documents/Job08/Backup/$name_tar $name_txt

