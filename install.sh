#!/usr/bin/bash
echo ""
echo "############################"
echo "# Neovim NMBuild Installer #"
echo "############################"
echo ""

# Formateo de variables
path_origen="$PWD/neovim"
path_origen_plugins="$path_origen/lua"
path_destino="$HOME/.config/nvim"
path_destino_plugins="$path_destino/lua"
path_logs="$PWD/logs"
log_name="install.log"
init_config="init.lua"
lazy_lua="lazy-lock.json"
seccion=""

echo "####################################"
echo "# 1- Instalacion Neovim NMBuild    #"   
echo "# 2- Desinstalacion Neovim NMBuild #"
echo "####################################"
echo ""
read -p "Seleccione una opcion: " MENU

if [ "$MENU" = '1' ]; then
    read -p "Instalar Neovim NMBuild? : (y/n) " SELECCION

    if [ "$SELECCION" = 'y' ]; then
        echo "$(date +"%H:%M:%S") - INFO - Instalando Neovim NMBuild"
        # echo "path_origen: $path_origen"
        # echo "path_origen_plugins: $path_origen_plugins"
        # echo "path_destino: $path_destino"
        # echo "path_destino_plugins: $path_destino_plugins"
        # echo "path_logs: $path_logs"
        
        # Seccion 1: creacion de estructura de archivos
        seccion="Seccion 1"        
        if [ -d "$path_logs" ]; then
            echo "$(date +"%H:%M:%S") - $seccion - INFO - Se ha encontrado carpeta logs"
        else
            echo "$(date +"%H:%M:%S") - $seccion - INFO - NO Se ha encontrado carpeta logs"
            echo "$(date +"%H:%M:%S") - $seccion - INFO - Creando carpeta logs"
            mkdir -p "$path_logs"
        fi

        if [ -f "$path_logs/$log_name" ]; then
            echo "$(date +"%H:%M:%S") - $seccion - INFO - Archivo log encontrado: $log_name" >> "$path_logs/$log_name"
        else
            echo "$(date +"%H:%M:%S") - $seccion - WARNING - Archivo log NO encontrado" >> "$path_logs/$log_name"
            echo "$(date +"%H:%M:%S") - $seccion - INFO - Creando log: $log_name" >> "$path_logs/$log_name"
            touch "$path_logs/$log_name"
        fi

        # Seccion 2: copiando configuraciones de plugins
        seccion="Seccion 2"
        if [ -d "$path_destino_plugins" ]; then
            echo "$(date +"%H:%M:%S") - $seccion - INFO - La carpeta destino existe: $path_destino_plugins" >> "$path_logs/$log_name"
            echo "$(date +"%H:%M:%S") - $seccion - INFO - Copiando configuracion de plugins" >> "$path_logs/$log_name"
            cp -r "$path_origen_plugins" "$path_destino_plugins"
        else
            echo "$(date +"%H:%M:%S") - $seccion - WARNING - La carpeta destino NO existe" >> "$path_logs/$log_name"    
            echo "$(date +"%H:%M:%S") - $seccion - INFO - Creando carpeta: $path_destino_plugins" >> "$path_logs/$log_name"
            mkdir -p "$path_destino"
            echo "$(date +"%H:%M:%S") - $seccion - INFO - Copiando configuracion de plugins" >> "$path_logs/$log_name"
            cp -r "$path_origen_plugins" "$path_destino_plugins"
        fi

        # Seccion 3: copiando archivo init.lua
        seccion="Seccion 3"
        if [ -f "$path_destino/$init_config" ]; then
            read -p "Archivo $init_config existente, desea reemplazarlo? (y/n) " SELECCION        

            if [ "$SELECCION" = 'y' ]; then
                echo "$(date +"%H:%M:%S") - $seccion - INFO - Creando backup del archivo $init_config original" >> "$path_logs/$log_name"
                mv "$path_destino/$init_config" "$path_destino/$init_config.original"
		
                echo "$(date +"%H:%M:%S") - $seccion - INFO - Copiando nuevo archivo $init_config" >> "$path_logs/$log_name"
                cp "$path_origen/$init_config" "$path_destino"
                cp "$path_origen/$lazy_lua" "$path_destino"

            else
                echo "$(date +"%H:%M:%S") - $seccion - WARNING - El archivo $init_config no ha sido reemplazado" >> "$path_logs/$log_name"	
                echo "$(date +"%H:%M:%S") - $seccion - WARNING - Los plugins deberan configurarse manualmente en su archivo $init_config " >> "$path_logs/$log_name"	
                cp "$path_origen/$lazy_lua" "$path_destino"
            fi

        else
            echo "$(date +"%H:%M:%S") - $seccion - INFO - Copiando archivo $init_config" >> "$path_logs/$log_name"	
            cp "$path_origen/$init_config" "$path_destino"
            cp "$path_origen/$lazy_lua" "$path_destino"
        fi
        
        # Seccion 4: primer inicio e instalacion de plugins
        seccion="Seccion 4"
        echo "$(date +"%H:%M:%S") - $seccion - INFO - Iniciando neovim e instalando plugins" >> "$path_logs/$log_name"
        nvim --headless +PlugInstall +qa
        echo "$(date +"%H:%M:%S") - $seccion - INFO - Instalacion finalizada" >> "$path_logs/$log_name"
        echo "##############"
        echo "# Todo listo #"
        echo "##############"
        exit 0

    else
        echo "$(date +"%H:%M:%S") - $seccion - ERROR - Ha seleccionado NO" >> "$path_logs/$log_name" 
        echo "$(date +"%H:%M:%S") - $seccion - ERROR - Instalacion cancelada" >> "$path_logs/$log_name" 
        echo "$(date +"%H:%M:%S") - INFO - Deteniendo instalacion de Neovim NMBuild"
        echo "###########################"
        echo "# Gracias, vuelva pronto! #"
        echo "###########################"
        exit 0
    fi

elif [ "$MENU" = '2' ]; then
    echo "$(date +"%H:%M:%S") - INFO - Desinstalando Neovim NMBuild"
    # Seccion 1: Eliminando archivos y restaurando originales
    seccion="Seccion 1"
    echo "$(date +"%H:%M:%S") - $seccion - INFO - Eliminando archivos" >> "$path_logs/$log_name" 
    if [ -f "$path_destino/$init_config.original" ]; then
        echo "$(date +"%H:%M:%S") - $seccion - INFO - Restaurando archivos originales" >> "$path_logs/$log_name"
        rm -rf "$path_destino/$init_config"
        mv "$path_destino/$init_config.original" "$path_destino/$init_config"
        rm -rf "$path_destino_plugins"
    else
        rm -rf "$path_destino_plugins"
    fi    

    echo "$(date +"%H:%M:%S") - $seccion - INFO - Desinstalacion finalizada" >> "$path_logs/$log_name"
    echo "###########################"
    echo "# Gracias, vuelva pronto! #"
    echo "###########################"
    exit 0
fi
