from odoo import api, fields, models, _, tools
from odoo.exceptions import UserError, ValidationError
class claseB(models.Model):
	_inherit = 'veterinary.demo'
	dato1H = fields.Char("DATO",compute="get_dato")

	def get_dato(self):
		for i in self:
			i.dato1H = i.name
	
	def operacion(self):
		raise UserError('resta')
		res = super(claseB, self).operacion()	
		return res
		