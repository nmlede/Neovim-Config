#!/usr/bin/bash
echo ""
echo "##########################################"
echo "#                                        #"
echo "#        Neovim NMBuild Installer        #"
echo "#                                        #"
echo "##########################################"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""

if [ Install.log ]; then
    rm Install.log
fi

touch Install.log

echo "Seleccione una opcion:"
echo "1- Instalar Neovim NMBuild desde cero"
echo "2- Reinstalar Neovim NMBuild"
echo "3- Desinstalar Neovim NMBuild"
echo ""
read -p "Seleccione una opcion: " MENU

if [ $MENU = '1' ]; then
    echo "Desea instalar la build de neovim? : (y/n)" 
    read -p "Ingrese una opcion: " SELECCION 

    if [ $SELECCION = 'y' ]; then
        echo "[INFO] Ha seleccionado $SELECCION"
        echo "##### Instalando Neovim NMBuild #####"
        
        if [ -d "$HOME/.config/nvim" ]; then
            echo "[INFO] La carpeta destino ya existe"
            echo "[INFO] La carpeta destino ya existe" >> Install.log
            echo "[INFO] Creando estructura de archivos"
            echo "[INFO] Creando estructura de archivos" >> Install.log
            
            mkdir $HOME/.config/nvim/Modules/
            
            echo "[INFO] Carpetas creadas"
            echo "[INFO] Carpetas creadas" >> Install.log
            echo "[INFO] Copiando archivos"
            echo "[INFO] Copiando archivos" >> Install.log
            
            cp $PWD/nvim/Modules/nvim-tree.vim $HOME/.config/nvim/Modules/
            cp $PWD/nvim/Modules/dashboard.vim $HOME/.config/nvim/Modules/
            cp $PWD/nvim/Modules/deoplete.vim $HOME/.config/nvim/Modules/
            cp $PWD/nvim/Modules/general.vim $HOME/.config/nvim/Modules/
            cp $PWD/nvim/Modules/plugins.vim $HOME/.config/nvim/Modules/
            cp $PWD/nvim/Modules/telescope.vim $HOME/.config/nvim/Modules/
            
            if [ -f "$HOME/.config/nvim/init.vim" ]; then
                echo "[INFO] Archivo init.vim ya existe, desea reemplazarlo? (y/n)"
                read -p "Ingrese una opcion: " SELECCION        
                
                if [ $SELECCION = 'y' ]; then
                    rm $HOME/.config/nvim/init.vim
                    
                    echo "[INFO] Copiando archivo init.vim"
                    echo "[INFO] Copiando archivo init.vim" >> Install.log
                    
                    cp /nvim/init.vim $HOME/.config/nvim/
                    
                    echo "[INFO] Archivo copiado"
                    echo "[INFO] Archivo copiado" >> Install.log
                    
                elif [ $SELECCION = 'n' ]; then
                    echo "[INFO] El archivo init.vim no ha sido reemplazado"		
                fi

            else
                echo "[INFO] Archivo init.vim inexistente"
                echo "[INFO] Archivo init.vim inexistente" >> Install.log
                echo "[INFO] Copiando archivo init.vim"
                echo "[INFO] Copiando archivo init.vim" >> Install.log
                
                cp /nvim/init.vim $HOME/.config/nvim/
                
                echo "[INFO] Archivo copiado"
                echo "[INFO] Archivo copiado" >> Install.log
            fi
            
            echo "[INFO] Archivos copiados"
            echo "[INFO] Archivos copiados" >> Install.log
            echo "[INFO] Estructura de archivos creada"
            echo "[INFO] Estructura de archivos creada" >> Install.log
        
            ls $HOME/.config/nvim/
            ls $HOME/.config/nvim/Modules/
        
        else
            echo "[INFO] La carpeta destino no existe"
            echo "[INFO] La carpeta destino no existe" >> Install.log
            echo "[INFO] Creando estructura de archivos"
            echo "[INFO] Creando estructura de archivos" >> Install.log
            
            mkdir -p $HOME/.config/nvim/Modules/
            
            echo "[INFO] Carpetas creadas"
            echo "[INFO] Carpetas creadas" >> Install.log
            echo "[INFO] Copiando archivos"
            echo "[INFO] Copiando archivos" >> Install.log
            
            cp $PWD/nvim/Modules/nvim-tree.vim $HOME/.config/nvim/Modules/
            cp $PWD/nvim/Modules/dashboard.vim $HOME/.config/nvim/Modules/
            cp $PWD/nvim/Modules/deoplete.vim $HOME/.config/nvim/Modules/
            cp $PWD/nvim/Modules/general.vim $HOME/.config/nvim/Modules/
            cp $PWD/nvim/Modules/plugins.vim $HOME/.config/nvim/Modules/
            cp $PWD/nvim/Modules/telescope.vim $HOME/.config/nvim/Modules/
            cp $PWD/nvim/init.vim $HOME/.config/nvim/
            
            echo "[INFO] Archivos copiados"
            echo "[INFO] Archivos copiados" >> Install.log
            echo "[INFO] Estructura de archivos creada"
            echo "[INFO] Estructura de archivos creada" >> Install.log
        
            ls $HOME/.config/nvim/
            ls $HOME/.config/nvim/Modules/
        fi
        
        echo "[INFO] Instalacion finalizada"
        echo "[INFO] Instalacion finalizada" >> Install.log
        echo "##### Todo listo, a programar! #####]"
        exit 0

    elif [ $SELECCION = 'n' ]; then
        echo "[INFO] Ha seleccionado $SELECCION"
        echo "[INFO] Instalacion cancelada."
        echo "[INFO] Instalacion cancelada." >> Install.log
        echo "##### Gracias, vuelva pronto! #####]"
        exit 0
    fi

elif [ $MENU = '2' ]; then
    echo "##### Reinstalando Neovim NMBuild #####"

    rm -r $HOME/.config/nvim
    echo "[INFO] Creando estructura de archivos"
    echo "[INFO] Creando estructura de archivos" >> Install.log
    
    mkdir -p $HOME/.config/nvim/Modules/
    
    echo "[INFO] Carpetas creadas"
    echo "[INFO] Carpetas creadas" >> Install.log
    echo "[INFO] Copiando archivos"
    echo "[INFO] Copiando archivos" >> Install.log
    
    cp $PWD/nvim/Modules/nvim-tree.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/dashboard.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/deoplete.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/general.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/plugins.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/telescope.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/init.vim $HOME/.config/nvim/
    
    echo "[INFO] Archivos copiados"
    echo "[INFO] Archivos copiados" >> Install.log
    echo "[INFO] Estructura de archivos creada"
    echo "[INFO] Estructura de archivos creada" >> Install.log

    ls $HOME/.config/nvim/
    ls $HOME/.config/nvim/Modules/
    
    echo "[INFO] Reinstalacion finalizada"
    echo "[INFO] Reinstalacion finalizada" >> Install.log
    echo "##### Todo listo, a programar! #####]"
    exit 0

elif [ $MENU = '3' ]; then
    echo "##### Deinstalando Neovim NMBuild #####"
    echo "[INFO] Eliminando archivos"
    echo "[INFO] Eliminando archivos" >> Install.log

    rm -r $HOME/.config/nvim

    echo "[INFO] Desinstalacion finalizada"
    echo "[INFO] Desinstalacion finalizada" >> Install.log
    echo "##### Gracias, vuelva pronto! #####]"
    exit 0
fi
