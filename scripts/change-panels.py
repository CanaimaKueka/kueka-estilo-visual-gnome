#!/usr/bin/env python
#-*-coding:utf-8-*-

import ConfigParser
import gobject
import os
import pynotify
import sys

NOMBRE_PAQUETE = "canaima-estilo-visual-gnome"
WORKDIR = sys.path[0]
HOMEDIR = os.environ["HOME"]

Config = ConfigParser.ConfigParser()
config_dir = HOMEDIR + '/.config/' + NOMBRE_PAQUETE
config_file_path = config_dir + '/panel.conf'
config_file = None

def es_modo_live():
    'Verifica si el entorno de ejecucion es un LiveCD'
    return os.path.isdir("/live/image")

def iniciar_configuracion():

	if not os.path.exists(config_file_path):

		# Creamos el directorio si aun no existe
		if not os.path.exists(config_dir):
			os.makedirs(config_dir)

	# Cargamos los datos que existan en el archivo
	Config.read(config_file_path)

def leer_configuracion(seccion, clave, tipo=None):

	iniciar_configuracion()
	if Config.has_section(seccion):
		if Config.has_option(seccion, clave):
			if tipo != None:
				if tipo == 'int':
					return Config.getint(seccion, clave)
				if tipo == 'float':
					return Config.getfloat(seccion, clave)
				if tipo == 'boolean':
					return Config.getboolean(seccion, clave)
			else:
				return Config.get(seccion, clave)

	return None

def escribir_configuracion(seccion, clave, valor):
	'Escribe un valor en el archivo de configuracion'
	iniciar_configuracion()

	# Armamos la estructura del archivo
	if not Config.has_section(seccion):
		Config.add_section(seccion)

	Config.set(seccion, clave, valor)

	# Escribimos los datos al archivo
	arch = open(config_file_path, 'w')
	Config.write(arch)
	arch.close()

def twin(n, action):
	os.system(WORKDIR + "/set-twin-panel.sh")
	cerrar_sesion()

def single(n, action):
	os.system(WORKDIR + "/set-single-panel.sh")
	cerrar_sesion()

def no_preguntar(n, action):
	escribir_configuracion('notificacion', 'mostrar', False)

def cerrar_sesion():
	notificacion_reinicio()
	os.system('/usr/bin/gnome-session-save --kill')

def notificacion_cambiar():
	pynotify.init(NOMBRE_PAQUETE)
	loop = gobject.MainLoop()
	n = pynotify.Notification(
		"¿Te gusta como se ve el panel?",
		"Esta versión de Canaima viene con nueva disposición de paneles, si lo prefieres puedes escojer entre las siguientes opciones:"
	)
	n.set_urgency(pynotify.URGENCY_NORMAL)
	n.set_timeout(pynotify.EXPIRES_NEVER)
	n.add_action("twin", "Usar panel tradicional", twin)
	n.add_action("single", "Usar panel nuevo", single)
	n.add_action("no_preguntar", "No volver a preguntar", no_preguntar)
	n.show()
	loop.run()

def notificacion_reinicio():
	pynotify.init(NOMBRE_PAQUETE)
	n = pynotify.Notification(
		"Cerrar la sesión",
		"Para aplicar todos los cambios es posible que necesites volver a iniciar tu sesion de usuario."
	)
	n.set_urgency(pynotify.URGENCY_NORMAL)
	n.set_timeout(pynotify.EXPIRES_NEVER)
	n.show()

def main():
	mostrar = leer_configuracion('notificacion', 'mostrar', 'boolean')
	if mostrar == None:
		escribir_configuracion('notificacion', 'mostrar', True)
		notificacion_cambiar()
	else:
		if mostrar:
			notificacion_cambiar()

if __name__ == '__main__':

    if not es_modo_live():
	   main()
