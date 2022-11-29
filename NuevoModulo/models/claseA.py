from odoo import api, fields, models, _, tools
class claseA(models.Model):
	_name = 'clasea.demo' #nombre del model

	#variables iniciales
	name = fields.Char("Nombre") 
	Ap = fields.Char("Apellido")
	Fecha_N= fields.Date('Fecha de Nacimiento')
	Edad = fields.Integer("Edad",compute="get_edad")
	Estado = fields.Selection(selection=[("activo","Activo"),("inactivo","Inactivo")])
	
	#funtion para calcular edad por fecha nacimiento
	
	def get_edad(self):
		for i in self:
			i.Edad=22
			
	def print_report(self):
		print("excel")