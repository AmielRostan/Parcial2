# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# me tira un error de que el worker type esta mal asignado por que le doy un integer, no supe como resolverlo.
MedicalCenterType.destroy_all
MedicalCenterType.create!([{
  name: "Hospital",
  description: "es publico"
},
{
  name: "Clinica",
  description: "es privado"
},
{
  name: "Sanatorio",
  description: "es privado"
},
{
  name: "Dispensario",
  description: "dispensa"
},
{
  name: "Salita",
  description: "es publico"
}])
WorkerType.destroy_all
WorkerType.create!([{
  name: "Medico",
  description: "profesional de salud"
},
{
  name: "Enfermero",
  description: "profesional de salud"
},
{
  name: "Chofer",
  description: "conductor de vehiculos"
}])
Worker.destroy_all
Worker.create!([{
  first_name: "Mateo",
  last_name: "Lopez",
  phone_number: 123,
  email: "a@a.com",
  worker_type: 1
},
{
  first_name: "Matias",
  last_name: "Perez",
  phone_number: 123,
  email: "a@a.com",
  worker_type: 1
},
{
  first_name: "Alex",
  last_name: "Oliva",
  phone_number: 123,
  email: "a@a.com",
  worker_type: 2
},
{
  first_name: "Axel",
  last_name: "Dinox",
  phone_number: 123,
  email: "a@a.com",
  worker_type: 2
},
{
  first_name: "Lucia",
  last_name: "Gomez",
  phone_number: 123,
  email: "a@a.com",
  worker_type: 3
},
{
  first_name: "Luz",
  last_name: "Rodriguez",
  phone_number: 123,
  email: "a@a.com",
  worker_type: 3
}])
MedicalCenter.destroy_all
MedicalCenter.create!([{
  name: "SAP",
  description: "profesional de salud",
  address: "1",
  phone_number: 123,
  medical_center_type: 1
},
{
  name: "SEP",
  description: "profesional de salud",
  address: "2",
  phone_number: 123,
  medical_center_type: 2
},
{
  name: "SIP",
  description: "profesional de salud",
  address: "3",
  phone_number: 123,
  medical_center_type: 3
},
{
  name: "SOP",
  description: "profesional de salud",
  address: "4",
  phone_number: 123,
  medical_center_type: 4
}])
