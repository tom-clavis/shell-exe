
while IFS= read  -r uid prénom nom mdp role ;
do 
if [ "$role" = "admin" ] ;

then 

sudo useradd -m  -G sudo "$pénom-$nom"

echo "$prénom-$nom:$mdp" | sudo chpasswd

else 

sudo useradd -m "$prénom-$nom"

echo "$prénom-$nom:$mdp" | sudo chpasswd

fi 

done < Shell_Userlist.csv

