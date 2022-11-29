from odoo import api, fields, models, _, tools
import io
from xlsxwriter.workbook import Workbook, Worksheet
class reporte(models.Model):
	_name = 'popup' #nombre del model
	
	def print_report(self):
		direccion = "D:/Reportes/"

		Workbook = Workbook(direccion + 'temporal.xlsx')
		Worksheet = Workbook.add_worksheet("hoja1")
		Worksheet_segunda = Workbook.add_worksheet("hoja2")

		self.env.cr.execute(""" select  * from  clasea_demo """)
		
		