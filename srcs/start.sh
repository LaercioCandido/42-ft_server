# Inicia o nginx, mysql e php
/etc/init.d/nginx start
/etc/init.d/mysql start
/etc/init.d/php7.3-fpm start

echo "
                    ##        .            
              ## ## ##       ==            
           ## ## ## ##      ===            
       /""""""""""""""""\___/ ===        
  ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~   
       \______ o          __/            
         \    \        __/             
          \____\______/                
 
          |          |
       __ |  __   __ | _  __   _
      /  \| /  \ /   |/  / _\ | 
      \__/| \__/ \__ |\_ \__  |
      
     ---------------------------- 
               lcandido      
"
# Permite que o container fique aberto para interagir com os arquivos
bash
