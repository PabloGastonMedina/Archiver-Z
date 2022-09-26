#!usr/bin/env bash

#LASTUPDATE

clear


FILE=check
if test -f "$FILE"; then
    echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m      

    '''
    echo -e "The following programs will be installed: Zip, 7zip, Rar"
    read -p "Continue? [y/n]: " scelta

    case "y" in
        "$scelta" )
        if [ "$EUID" -ne 0 ]
        then echo "Please run as root"
        exit
        fi

            #apt-get update -y
            apt-get install zip
            apt-get install rar
            rm check
            
        echo -e "\nArchive-Z setup successiful completed, now run bash az.sh to run the program!"
        exit
    esac
    case "n" in
        "$scelta" )
        
        exit
    esac
    case "" in
        "$scelta" )
        
        exit
    esac
fi

echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m      

\e[1;33;4;44mSelect the format of file you want to crack\e[0m  
'''


echo -e "\e[3m1)zip   \e[3m2)7z\n3)rar\e[0m\n"
read -p ": " scelta

count_file=$(find . -type f | wc -l)
count_file_verifica=$count_file
case $scelta in
    "1" ) 
        clear
        echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m      
                                                                                        
        '''
        echo -e "\n1)Bruteforce    2)Dictionary\n"
        read -p ":" scelta_2
        case $scelta_2 in
            "1")
                count_file=$(find . -type f | wc -l)
                count_file_verifica=$count_file
                clear
                echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m      
                                                                                        
        '''
                echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━"
                ls
                echo -e "━━━━━━━━━━━━━━━━━━━━━━━━\n"
                read -p "zip file name> " file_name
        

                for c1 in {A..Z} {a..z} {0..9}
                do
                    count_words=`unzip -P "$c1" "$file_name" >/dev/null 2>&1` 
                    echo "trying> $c1"
                    count_file=$(find . -type f | wc -l)

                    if [[ "$count_file" != "$count_file_verifica" ]]; then
                        echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2\e[0m"
                        exit
                    fi

                done



                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        count_words=`unzip -P "$c1$c2" "$file_name" >/dev/null 2>&1`
                        echo "trying> $c1$c2"
                        count_file=$(find . -type f | wc -l)

                        if [[ "$count_file" != "$count_file_verifica" ]]; then
                            echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2\e[0m"
                            exit
                        fi

                    done
                done


                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        for c3 in {A..Z} {a..z} {0..9}
                        do
                            count_words=`unzip -P "$c1$c2$c3" "$file_name" >/dev/null 2>&1`
                            echo "trying> $c1$c2$c3"
                            count_file=$(find . -type f | wc -l)

                            if [[ "$count_file" != "$count_file_verifica" ]]; then
                                echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2$c3\e[0m"
                                exit
                            fi
                        done
                    done
                done


                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        for c3 in {A..Z} {a..z} {0..9}
                        do
                            for c4 in {A..Z} {a..z} {0..9}
                            do
                                count_words=`unzip -P "$c1$c2$c3$c4" "$file_name" >/dev/null 2>&1`
                                echo "trying> $c1$c2$c3$c4"
                                count_file=$(find . -type f | wc -l)

                                if [[ "$count_file" != "$count_file_verifica" ]]; then
                                    echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2$c3$c4\e[0m"
                                    exit
                                fi
                            done
                        done
                    done
                done

                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        for c3 in {A..Z} {a..z} {0..9}
                        do
                            for c4 in {A..Z} {a..z} {0..9}
                            do
                                for c5 in {A..Z} {a..z} {0..9}
                                do
                                    count_words=`unzip -P "$c1$c2$c3$c4$c5" "$file_name" >/dev/null 2>&1`
                                    echo "trying> $c1$c2$c3$c4$c5"
                                    count_file=$(find . -type f | wc -l)

                                    if [[ "$count_file" != "$count_file_verifica" ]]; then
                                        echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2$c3$c4$c5\e[0m"
                                        exit
                                    fi
                                done
                            done
                        done
                    done
                done
            
        esac
        case $scelta_2 in
            "2" )
                clear
                echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m                                                                                              
        '''
                echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━"
                ls
                echo -e "━━━━━━━━━━━━━━━━━━━━━━━━\n"
                read -p "zip file name> " file_name
                clear  
                echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m                                                                                              
        '''
                echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━"
                ls
                echo -e "━━━━━━━━━━━━━━━━━━━━━━━━\n"
                read -p "word list name> " wl_name
                while read -r line; do
                    echo "tryng $line..."
                    count_words=`unzip -P $line $file_name`
                    echo "$count_words"
                    if [[ "$count_words" == *"extracting:"* ]]; then
                        clear
                        echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m                                                                                              
        '''
                        echo -e "\n\e[1;32mPASSWORD FOUND!\e[0m \e[3m$file_name password: $line\e[0m"
                        exit
                    fi

                done <$wl_name 
        esac





esac



case $scelta in
    "3" )
        count_file=$(find . -type f | wc -l)
        count_file_verifica=$count_file
        clear
        echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m      
                                                                                        
        '''
        echo -e "\n1)Bruteforce    2)Dictionary\n"
        read -p ":" scelta_2
        case $scelta_2 in
            "1")
             clear
                echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m      
                                                                                        
        '''
                echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━"
                ls
                echo -e "━━━━━━━━━━━━━━━━━━━━━━━━\n"
                read -p "rar file name> " file_name
        
        

                for c1 in {A..Z} {a..z} {0..9}
                do
                    count_words=`unrar x "$file_name" -p"$c1">/dev/null 2>&1` 
                    echo "trying> $c1"
                    count_file=$(find . -type f | wc -l)

                    if [[ "$count_file" != "$count_file_verifica" ]]; then
                        echo "It's there."
                        exit
                    fi

                done



                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        count_words=`unrar x "$file_name" -p"$c1$c2">/dev/null 2>&1`
                        echo "trying> $c1$c2"
                        count_file=$(find . -type f | wc -l)

                        if [[ "$count_file" != "$count_file_verifica" ]]; then
                            echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2\e[0m"
                            exit
                        fi

                    done
                done


                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        for c3 in {A..Z} {a..z} {0..9}
                        do
                            count_words=`unrar x "$file_name" -p"$c1$c2$c3">/dev/null 2>&1`
                            echo "trying> $c1$c2$c3"
                            count_file=$(find . -type f | wc -l)

                            if [[ "$count_file" != "$count_file_verifica" ]]; then
                                echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2$c3\e[0m"
                                exit
                            fi
                        done
                    done
                done


                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        for c3 in {A..Z} {a..z} {0..9}
                        do
                            for c4 in {A..Z} {a..z} {0..9}
                            do
                                count_words=`unrar x "$file_name" -p"$c1$c2$c3$c4">/dev/null 2>&1`
                                echo "trying> $c1$c2$c3$c4"
                                count_file=$(find . -type f | wc -l)

                                if [[ "$count_file" != "$count_file_verifica" ]]; then
                                    echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2$c3$c4\e[0m"
                                    exit
                                fi
                            done
                        done
                    done
                done

                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        for c3 in {A..Z} {a..z} {0..9}
                        do
                            for c4 in {A..Z} {a..z} {0..9}
                            do
                                for c5 in {A..Z} {a..z} {0..9}
                                do
                                    count_words=`unrar x "$file_name" -p"$c1$c2$c3$c4$c4">/dev/null 2>&1`
                                    echo "trying> $c1$c2$c3$c4$c5"
                                    count_file=$(find . -type f | wc -l)

                                    if [[ "$count_file" != "$count_file_verifica" ]]; then
                                        echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2$c3$c4$c5\e[0m"
                                        exit
                                    fi
                                done
                            done
                        done
                    done
                done
            
        esac
        case $scelta_2 in
            "2" )
                clear
                echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m                                                                                              
        '''
                echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━"
                ls
                echo -e "━━━━━━━━━━━━━━━━━━━━━━━━\n"
                read -p "zip file name> " file_name
                clear  
                echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m                                                                                              
        '''
                echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━"
                ls
                echo -e "━━━━━━━━━━━━━━━━━━━━━━━━\n"
                read -p "word list name> " wl_name
                while read -r line; do
                    echo "tryng $line..."
                    count_words=`unzip -P $line $file_name`
                    echo "$count_words"
                    if [[ "$count_words" == *"extracting:"* ]]; then
                        clear
                        echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m                                                                                              
        '''
                        echo -e "\n\e[1;32mPASSWORD FOUND!\e[0m \e[3m$file_name password: $line\e[0m"
                        exit
                    fi

                done <$wl_name 
        esac





esac

case $scelta in
    "2" ) 
        clear
        echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m      
                                                                                        
        '''
        echo -e "\n1)Bruteforce    2)Dictionary\n"
        read -p ":" scelta_2
        case $scelta_2 in
            "1")
                count_file=$(find . -type f | wc -l)
                count_file_verifica=$count_file
                clear
                echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m      
                                                                                        
        '''
                echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━"
                ls
                echo -e "━━━━━━━━━━━━━━━━━━━━━━━━\n"
                read -p "7z file name> " file_name
                echo "gh"

                for c1 in {A..Z} {a..z} {0..9}
                do
                    count_words=`7z e "$file_name" -p"$c1" >/dev/null 2>&1` 
                    echo "trying> $c1"
                    count_file=$(find . -type f | wc -l)

                    if [[ "$count_file" != "$count_file_verifica" ]]; then
                        echo "It's there."
                        exit
                    fi

                done



                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        count_words=`7z e "$file_name" -p"$c1$c2" >/dev/null 2>&1`
                        echo "trying> $c1$c2"
                        count_file=$(find . -type f | wc -l)

                        if [[ "$count_file" != "$count_file_verifica" ]]; then
                            echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2\e[0m"
                            exit
                        fi

                    done
                done


                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        for c3 in {A..Z} {a..z} {0..9}
                        do
                            count_words=`7z e "$file_name" -p"$c1$c2$c3" >/dev/null 2>&1`
                            echo "trying> $c1$c2$c3"
                            count_file=$(find . -type f | wc -l)

                            if [[ "$count_file" != "$count_file_verifica" ]]; then
                                echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2$c3\e[0m"
                                exit
                            fi
                        done
                    done
                done


                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        for c3 in {A..Z} {a..z} {0..9}
                        do
                            for c4 in {A..Z} {a..z} {0..9}
                            do
                                count_words=`7z e "$file_name" -p"$c1$c2$c3$c4" >/dev/null 2>&1`
                                echo "trying> $c1$c2$c3$c4"
                                count_file=$(find . -type f | wc -l)

                                if [[ "$count_file" != "$count_file_verifica" ]]; then
                                    echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2$c3$c4\e[0m"
                                    exit
                                fi
                            done
                        done
                    done
                done

                for c1 in {A..Z} {a..z} {0..9}
                do
                    for c2 in {A..Z} {a..z} {0..9}
                    do
                        for c3 in {A..Z} {a..z} {0..9}
                        do
                            for c4 in {A..Z} {a..z} {0..9}
                            do
                                for c5 in {A..Z} {a..z} {0..9}
                                do
                                    count_words=`7z e "$file_name" -p"$c1$c2$c3$c4" >/dev/null 2>&1`
                                    echo "trying> $c1$c2$c3$c4$c5"
                                    count_file=$(find . -type f | wc -l)

                                    if [[ "$count_file" != "$count_file_verifica" ]]; then
                                        echo -e "\n\e[1;32mPASSWORD FOUND: $c1$c2$c3$c4$c5\e[0m"
                                        exit
                                    fi
                                done
                            done
                        done
                    done
                done
            
        esac
        case $scelta_2 in
            "2" )
                clear
                echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m                                                                                              
        '''
                echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━"
                ls
                echo -e "━━━━━━━━━━━━━━━━━━━━━━━━\n"
                read -p "7z file name> " file_name
                clear  
                echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m                                                                                              
        '''
                echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━"
                ls
                echo -e "━━━━━━━━━━━━━━━━━━━━━━━━\n"
                read -p "word list name> " wl_name
                while read -r line; do
                    echo "tryng $line..."
                    count_words=`7z e $file_name -p"$line`
                    echo "$count_words"
                    if [[ "$count_words" == *"extracting:"* ]]; then
                        clear
                        echo -e ''' 


 $$$$$$\                      $$\       $$\                            \$$$$$$$$\ 
$$  __$$\                     $$ |      \__|                           \____$$  |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$\    $$\  $$$$$$\            $$  / 
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |\$$\  $$  |$$  __$$\ $$$$$$\  $$  /  
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ | \$$\$$  / $$$$$$$$ |\______|$$  /   
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  \$$$  /  $$   ____|       $$  /    
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |   \$  /   \$$$$$$$\       $$$$$$$$\ 
\__|  \__|\__|       \_______|\__|  \__|\__|    \_/     \_______|      \________|
\e[1;34m=========                                                              ==========\e[0m                                                                                              
        '''
                        echo -e "\n\e[1;32mPASSWORD FOUND!\e[0m \e[3m$file_name password: $line\e[0m"
                        exit
                    fi

                done <$wl_name 
        esac





esac
