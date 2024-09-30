#!/bin/bash
HOME="/home/container"
HOMEA="$HOME/linux/.apt"
STAR1="$HOMEA/lib:$HOMEA/usr/lib:$HOMEA/var/lib:$HOMEA/usr/lib/x86_64-linux-gnu:$HOMEA/lib/x86_64-linux-gnu:$HOMEA/lib:$HOMEA/usr/lib/sudo"
STAR2="$HOMEA/usr/include/x86_64-linux-gnu:$HOMEA/usr/include/x86_64-linux-gnu/bits:$HOMEA/usr/include/x86_64-linux-gnu/gnu"
STAR3="$HOMEA/usr/share/lintian/overrides/:$HOMEA/usr/src/glibc/debian/:$HOMEA/usr/src/glibc/debian/debhelper.in:$HOMEA/usr/lib/mono"
STAR4="$HOMEA/usr/src/glibc/debian/control.in:$HOMEA/usr/lib/x86_64-linux-gnu/libcanberra-0.30:$HOMEA/usr/lib/x86_64-linux-gnu/libgtk2.0-0"
STAR5="$HOMEA/usr/lib/x86_64-linux-gnu/gtk-2.0/modules:$HOMEA/usr/lib/x86_64-linux-gnu/gtk-2.0/2.10.0/immodules:$HOMEA/usr/lib/x86_64-linux-gnu/gtk-2.0/2.10.0/printbackends"
STAR6="$HOMEA/usr/lib/x86_64-linux-gnu/samba/:$HOMEA/usr/lib/x86_64-linux-gnu/pulseaudio:$HOMEA/usr/lib/x86_64-linux-gnu/blas:$HOMEA/usr/lib/x86_64-linux-gnu/blis-serial"
STAR7="$HOMEA/usr/lib/x86_64-linux-gnu/blis-openmp:$HOMEA/usr/lib/x86_64-linux-gnu/atlas:$HOMEA/usr/lib/x86_64-linux-gnu/tracker-miners-2.0:$HOMEA/usr/lib/x86_64-linux-gnu/tracker-2.0:$HOMEA/usr/lib/x86_64-linux-gnu/lapack:$HOMEA/usr/lib/x86_64-linux-gnu/gedit"
STARALL="$STAR1:$STAR2:$STAR3:$STAR4:$STAR5:$STAR6:$STAR7"
export LD_LIBRARY_PATH=$STARALL
export PATH="/bin:/usr/bin:/usr/local/bin:/sbin:$HOMEA/bin:$HOMEA/usr/bin:$HOMEA/sbin:$HOMEA/usr/sbin:$HOMEA/etc/init.d:$PATH"
export BUILD_DIR=$HOMEA

bold=$(echo -en "\e[1m")
nc=$(echo -en "\e[0m")
lightblue=$(echo -en "\e[94m")
lightgreen=$(echo -en "\e[92m")

echo "
${bold}${lightgreen}========================================================================
                                                                                                  
${bold}${lightblue}██╗███████╗       █████╗    ███████╗██████╗  █████╗  ██████╗███████╗                                                
${bold}${lightblue}██║██╔════╝      ██╔══██╗   ██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝                                                
${bold}${lightblue}██║███████╗█████╗███████║   ███████╗██████╔╝███████║██║     █████╗                                                                      
${bold}${lightblue}██║╚════██║╚════╝██╔══██║   ╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝                                                  
${bold}${lightblue}██║███████║      ██║  ██║██╗███████║██║     ██║  ██║╚██████╗███████╗                                                
${bold}${lightblue}╚═╝╚══════╝      ╚═╝  ╚═╝╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝                                                
${bold}${lightblue}                                                                                                                    
${bold}${lightblue}██████╗██╗  ██╗███████╗ █████╗ ██████╗     ██████╗ ██████╗  ██████╗  ██████╗ ████████╗    ██╗   ██╗██████╗ ███████╗
${bold}${lightblue}██╔════╝██║  ██║██╔════╝██╔══██╗██╔══██╗    ██╔══██╗██╔══██╗██╔═══██╗██╔═══██╗╚══██╔══╝    ██║   ██║██╔══██╗██╔════╝   
${bold}${lightblue}██║     ███████║█████╗  ███████║██████╔╝    ██████╔╝██████╔╝██║   ██║██║   ██║   ██║       ██║   ██║██████╔╝███████╗
${bold}${lightblue}██║     ██╔══██║██╔══╝  ██╔══██║██╔═══╝     ██╔═══╝ ██╔══██╗██║   ██║██║   ██║   ██║       ╚██╗ ██╔╝██╔═══╝ ╚════██║
${bold}${lightblue}╚██████╗██║  ██║███████╗██║  ██║██║         ██║     ██║  ██║╚██████╔╝╚██████╔╝   ██║        ╚████╔╝ ██║     ███████║
${bold}${lightblue} ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝         ╚═╝     ╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝         ╚═══╝  ╚═╝     ╚══════╝

${bold}${lightgreen}  ___      _    _             _  __    ___                     
${bold}${lightgreen} |   \ ___| |__(_)__ _ _ _   / |/  \  |_ _|_ __  __ _ __ _ ___ 
${bold}${lightgreen} | |) / -_) '_ \ / _` | ' \  | | () |  | || '  \/ _` / _` / -_)
${bold}${lightgreen} |___/\___|_.__/_\__,_|_||_| |_|\__/  |___|_|_|_\__,_\__, \___|
${bold}${lightgreen}                                                     |___/     
                                                                                                                
${bold}${lightgreen}========================================================================
 "
 
echo "${nc}"

if [[ -f "./installed" ]]; then
    echo "${bold}${lightgreen}==> Started ${lightblue}Container${lightgreen} <=="
    function runcmd1 {
        printf "${bold}${lightgreen}Default${nc}@${lightblue}Container${nc}:~ "
        read -r cmdtorun
        ./libraries/proot -S . /bin/bash -c "$cmdtorun"
        runcmd
    }
    function runcmd {
        printf "${bold}${lightgreen}Default${nc}@${lightblue}Container${nc}:~ "
        read -r cmdtorun
        ./libraries/proot -S . /bin/bash -c "$cmdtorun"
        runcmd1
    }
    runcmd
else
    echo "Downloading Debian 10"
    curl -sSLo files.zip https://github.com/RealTriassic/Ptero-VM-JAR/releases/download/latest/files.zip >/dev/null 2>err.log
    curl -sSLo unzip https://raw.githubusercontent.com/afnan007a/Ptero-vm/main/unzip >/dev/null 2>err.log
    curl -sSLo gotty https://raw.githubusercontent.com/afnan007a/Replit-Vm/main/gotty >/dev/null 2>err.log
    chmod +x unzip >/dev/null 2>err.log
    export PATH="/bin:/usr/bin:/usr/local/bin:/sbin:$HOMEA/bin:$HOMEA/usr/bin:$HOMEA/sbin:$HOMEA/usr/sbin:$HOMEA/etc/init.d:$PATH"
    ./unzip files.zip >/dev/null 2>err.log
    ./unzip root.zip
    tar -xf root.tar.gz >/dev/null 2>err.log
    chmod +x ./libraries/proot >/dev/null 2>err.log
    chmod +x ngrok >/dev/null 2>err.log
    chmod +x gotty >/dev/null 2>err.log
    rm -rf files.zip >/dev/null 2>err.log
    rm -rf root.zip >/dev/null 2>err.log
    rm -rf root.tar.gz >/dev/null 2>err.log
    cmds=("mv gotty /usr/bin/" "apt-get update" "apt-get -y install sudo nano neofetch python3 dropbear tmate dialog perl-modules" "curl -o /bin/systemctl https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl3.py")

    for cmd in "${cmds[@]}"; do
        ./libraries/proot -S . /bin/bash -c "$cmd >/dev/null 2>err.log"
    done
    echo -ne '\n'
    touch installed
    
    echo "
${bold}${lightgreen}========================================================================
                                                                                                  
${bold}${lightblue}██╗███████╗       █████╗    ███████╗██████╗  █████╗  ██████╗███████╗                                                
${bold}${lightblue}██║██╔════╝      ██╔══██╗   ██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝                                                
${bold}${lightblue}██║███████╗█████╗███████║   ███████╗██████╔╝███████║██║     █████╗                                                                      
${bold}${lightblue}██║╚════██║╚════╝██╔══██║   ╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝                                                  
${bold}${lightblue}██║███████║      ██║  ██║██╗███████║██║     ██║  ██║╚██████╗███████╗                                                
${bold}${lightblue}╚═╝╚══════╝      ╚═╝  ╚═╝╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝                                                
${bold}${lightblue}                                                                                                                    
${bold}${lightblue}██████╗██╗  ██╗███████╗ █████╗ ██████╗     ██████╗ ██████╗  ██████╗  ██████╗ ████████╗    ██╗   ██╗██████╗ ███████╗
${bold}${lightblue}██╔════╝██║  ██║██╔════╝██╔══██╗██╔══██╗    ██╔══██╗██╔══██╗██╔═══██╗██╔═══██╗╚══██╔══╝    ██║   ██║██╔══██╗██╔════╝   
${bold}${lightblue}██║     ███████║█████╗  ███████║██████╔╝    ██████╔╝██████╔╝██║   ██║██║   ██║   ██║       ██║   ██║██████╔╝███████╗
${bold}${lightblue}██║     ██╔══██║██╔══╝  ██╔══██║██╔═══╝     ██╔═══╝ ██╔══██╗██║   ██║██║   ██║   ██║       ╚██╗ ██╔╝██╔═══╝ ╚════██║
${bold}${lightblue}╚██████╗██║  ██║███████╗██║  ██║██║         ██║     ██║  ██║╚██████╔╝╚██████╔╝   ██║        ╚████╔╝ ██║     ███████║
${bold}${lightblue} ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝         ╚═╝     ╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝         ╚═══╝  ╚═╝     ╚══════╝

${bold}${lightgreen}  ___      _    _             _  __    ___                     
${bold}${lightgreen} |   \ ___| |__(_)__ _ _ _   / |/  \  |_ _|_ __  __ _ __ _ ___ 
${bold}${lightgreen} | |) / -_) '_ \ / _` | ' \  | | () |  | || '  \/ _` / _` / -_)
${bold}${lightgreen} |___/\___|_.__/_\__,_|_||_| |_|\__/  |___|_|_|_\__,_\__, \___|
${bold}${lightgreen}                                                     |___/     
                                                                                                                
${bold}${lightgreen}========================================================================
 "
 
echo "${nc}"
    
    echo "${bold}${lightgreen}==> Started ${lightblue}VPS${lightgreen} <=="
    function runcmd1 {
        printf "${bold}${lightgreen}root${nc}@${lightblue}cheap-vps${nc}:~ "
        read -r cmdtorun
        ./libraries/proot -S . /bin/bash -c "$cmdtorun"
        runcmd
    }
    function runcmd {
        printf "${bold}${lightgreen}root${nc}@${lightblue}cheap-vps${nc}:~ "
        read -r cmdtorun
        ./libraries/proot -S . /bin/bash -c "$cmdtorun"
        runcmd1
    }
    runcmd
fi
