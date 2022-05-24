#!/usr/bin/bash
echo ""
echo "##########################################"
echo "#        Neovim NMBuild Installer        #"
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

function copy_files(){
    cp $PWD/nvim/Modules/dashboard.lua $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/general.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/indent-guides.lua $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/keymap.lua $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/lspconfig.lua $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/lualine.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/nvim-cmp.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/nvim-tree.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/plugins.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/tagbar.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/telescope.vim $HOME/.config/nvim/Modules/
    cp $PWD/nvim/Modules/wilder.vim $HOME/.config/nvim/Modules/
    
    
    
    }

echo "#################################"
echo "# 1- Instalar Neovim NMBuild    #"   
echo "# 2- Desinstalar Neovim NMBuild #"
echo "#################################"
echo ""
read -p "Seleccione una opcion: " MENU

if [ $MENU = '1' ]; then
    echo "Desea instalar la build de neovim? : (y/n)" 
    read -p "Ingrese una opcion: " SELECCION 

    if [ $SELECCION = 'y' ]; then
        echo "#####################################"
        echo "##### Instalando Neovim NMBuild #####"
        echo "#####################################"
    
        if [ -d "$HOME/.config/nvim" ]; then
            echo "[INFO] La carpeta destino existe"
            echo "[INFO] La carpeta destino existe" >> Install.log
            echo "[INFO] Creando estructura de archivos"
            echo "[INFO] Creando estructura de archivos" >> Install.log
        
            mkdir $HOME/.config/nvim/Modules
            copy_files

            echo "[INFO] Carpetas creadas"
            echo "[INFO] Carpetas creadas" >> Install.log
            echo "[INFO] Copiando archivos"
            echo "[INFO] Copiando archivos" >> Install.log
            
           
            if [ -f "$HOME/.config/nvim/init.vim" ]; then
                echo "[INFO] Archivo init.vim existente, desea reemplazarlo? (y/n)"
                read -p "Ingrese una opcion: " SELECCION        
                
                if [ $SELECCION = 'y' ]; then
                    mv $HOME/.config/nvim/init.vim $HOME/.config/nvim/init.vim.original
                    
                    echo "[INFO] Copiando archivo init.vim"
                    echo "[INFO] Copiando archivo init.vim" >> Install.log
                    
                    cp $PWD/nvim/init.vim $HOME/.config/nvim/
                    
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
                
                cp $PWD/nvim/init.vim $HOME/.config/nvim/
                
                echo "[INFO] Archivo copiado"
                echo "[INFO] Archivo copiado" >> Install.log
            fi
            
            echo "[INFO] Archivos copiados"
            echo "[INFO] Archivos copiados" >> Install.log
            echo "[INFO] Estructura de archivos creada"
            echo "[INFO] Estructura de archivos creada" >> Install.log
        
        else
            echo "[INFO] La carpeta destino no existe"
            echo "[INFO] La carpeta destino no existe" >> Install.log
            echo "[INFO] Creando estructura de archivos"
            echo "[INFO] Creando estructura de archivos" >> Install.log
            
            mkdir $HOME/.config/nvim
            mkdir $HOME/.config/nvim/Modules
            
            echo "[INFO] Carpetas creadas"
            echo "[INFO] Carpetas creadas" >> Install.log
            echo "[INFO] Copiando archivos"
            echo "[INFO] Copiando archivos" >> Install.log
           
            copy_files
            cp $PWD/nvim/init.vim $HOME/.config/nvim/

            echo "[INFO] Archivos copiados"
            echo "[INFO] Archivos copiados" >> Install.log
            echo "[INFO] Estructura de archivos creada"
            echo "[INFO] Estructura de archivos creada" >> Install.log
        
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
    echo "#######################################"
    echo "##### Deinstalando Neovim NMBuild #####"
    echo "#######################################"
    echo ""
    echo ""
    echo "[INFO] Eliminando archivos"
    echo "[INFO] Eliminando archivos" >> Install.log

    if [ $HOME/.config/nvim/init.vim.original ]; then
        echo "[INFO] Restaurando archivos originales"
        echo "[INFO] Restaurando archivos originales" >> Install.log
        
        mv $HOME/.config/nvim/init.vim.original $HOME/.config/nvim/init.vim
        rm -rf $HOME/.config/nvim/Modules
    else
        rm -rf $HOME/.config/nvim
    fi    

    echo "[INFO] Desinstalacion finalizada"
    echo "[INFO] Desinstalacion finalizada" >> Install.log
    echo "##### Gracias, vuelva pronto! #####]"
    exit 0
fi
