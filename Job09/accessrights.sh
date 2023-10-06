
while IFS= read  -r uid prenom nom mdp role ;
do 
if [ "$role" = "admin" ] ;

then 

sudo useradd -m  -G sudo "$prenom-$nom"

echo "$prenom-$nom:$mdp" | sudo chpasswd

else 

sudo useradd -m "$prenom-$nom"

echo "$prenom-$nom:$mdp" | sudo chpasswd

fi 

done > Shell_Userlist.csv

