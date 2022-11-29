{
    'name': 'PRUEBA_ODOO',
    'version': '0.1',
    'summary': 'Odoo 15 Development',
    'sequence': -100,
    'description': """Odoo 15 Development Tutorials""",
    'category': 'Tutorials',
    'author': 'MOISES',
    'maintainer': 'Odoo Mates',
    'license': 'AGPL-3',
    'depends': ['base', 'veterinary'],

    "data":
    [
        'security/security.xml',
        'security/ir.model.access.csv',
        'views/vistaA.xml',
        'views/vistaB.xml',
        'views/report.xml',
        'views/patient_details_template.xml',
    ],
    'demo': [],
    'qweb': [],
    'installable': True,
    'application': True,
    'auto_install': False,
}
