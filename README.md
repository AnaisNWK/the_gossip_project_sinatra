# the_gossip_project_sinatra

Structure du projet : 

the_gossip_project_sinatra
├── Gemfile
├── Gemfile.lock
├── config.ru
├── db
│   └── gossip.csv
└── lib
    ├── controller.rb
    ├── gossip.rb
    └── views
        ├── index.erb
        └── new_gossip.erb

Description : 

Le principe du projet est de créer une page web permettant d'envoyer, via un formulaire, des potins en remplissant le champ "Saisi ici ton nom" puis "Balance ton potin :"
Les potins sont stockés dans un fichier CSV 
Puis retranscrit sur la page d'accueil après chaque submit

