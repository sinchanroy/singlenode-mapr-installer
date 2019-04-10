#!/bin/bash

INSTALL_DIR=/opt/mapr
PATH=$PATH:/sbin:/usr/sbin

MFS_PORT=5660
CLDB_PORT=7222
NFS_MGMT_PORT=9998
MRCONFIG=server/mrconfig
MRDISK=server/mrdisk
MAPRCLI=bin/maprcli

echo "======================================"
echo "     SINGLENODE MAPR INSTALLER        "
echo "======================================"

while :
do
	read -p "Enter the MapR version you want to install      " version
	read -p "Enter the MEP version you want to install      " mep
	echo $version
	echo $mep
	case $version in
		6.1.0)
			case $mep in
                		6.1.0)
					echo "OK"
					break                        		
					;;
                        	6.0.1)
                                	echo "OK"
                                        break    
	                            	;;
                        	6.0.0)
					 break
                                	echo "OK"
                                	;;
        	        	*)
	                        	echo "Sorry, Incorrect version."
                	        	continue
                        		;;
			esac;;
		6.0.1)
                        case $mep in
                                5.0.2)
                                        echo "OK"
                                        break
                                        ;;
                                5.0.1)
                                        echo "OK"
                                        break
                                        ;;
                                5.0.0)
                                         break
                                        echo "OK"
                                        ;;
                                *)
                                        echo "Sorry, Incorrect version."
                                        continue
                                        ;;
                        esac;;
        	6.0.0)
                        case $mep in
                                4.1.3)
                                        echo "OK"
                                        break
                                        ;;
                                4.1.2)
                                        echo "OK"
                                        break
                                        ;;
                                4.1.1)
                                         break
                                        echo "OK"
                                        ;;
                                4.1.0)
                                         break
                                        echo "OK"
                                        ;;
                                4.0.0)
                                         break
                                        echo "OK"
                                        ;;
                                *)
                                        echo "Sorry, Incorrect version."
                                        continue
                                        ;;
                        esac;;
        	5.2.*)
                        case $mep in
                                3.0.5)
                                        echo "OK"
                                        break
                                        ;;
                                3.0.4)
                                        echo "OK"
                                        break
                                        ;;
                                3.0.3)
                                         break
                                        echo "OK"
                                        ;;
                                3.0.2)
                                        echo "OK"
                                        break
                                        ;;
                                3.0.1)
                                        echo "OK"
                                        break
                                        ;;
                                3.0)
                                        echo "OK"
                                        break
                                        ;;
                                2.0.3)
                                        echo "OK"
                                        break
                                        ;;
                                2.0.2)
                                        echo "OK"
                                        break
                                        ;;
                                2.0.1)
                                        echo "OK"
                                        break
                                        ;;
                                2.0)
                                        echo "OK"
                                        break
                                        ;;
                                1.1.4)
                                        echo "OK"
                                        break
                                        ;;
                                1.1.3)
                                        echo "OK"
                                        break
                                        ;;
                                1.1.2)
                                        echo "OK"
                                        break
                                        ;;
                                1.1.1)
                                        echo "OK"
                                        break
                                        ;;
                                1.1.0)
                                        echo "OK"
                                        break
                                        ;;
                                *)
                                        echo "Sorry, Incorrect version."
                                        continue
                                        ;;
                        esac;;
		*)
			echo "Sorry, Incorrect version."
			continue
			;;
	esac
done
echo -e "Let me proceed with installation"

echo -e "[maprtech] \nname=MapR Technologies " > /etc/yum/repos.d/maprtech.repo
echo "baseurl=http://package.mapr.com/releases/$version/redhat/" >> /etc/yum/repos.d/maprtech.repo
echo -e "enabled=1 \ngpgcheck=1 \nprotect=1\n\n[maprecosystem] \nname=MapR Technologies" >> /etc/yum/repos.d/maprtech.repo 
echo "baseurl=http://package.mapr.com/releases/MEP/MEP-$mep/redhat/" >> /etc/yum/repos.d/maprtech.repo
echo -e "enabled=1 \ngpgcheck=1 \nprotect=1 " >> /etc/yum/repos.d/maprtech.repo



