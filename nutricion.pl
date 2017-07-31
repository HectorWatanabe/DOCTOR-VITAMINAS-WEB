
alimentocontiene(citricos,c).
alimentocontiene(pimientos,c).
alimentocontiene(espinaca,c).
alimentocontiene(coliflor,c).
alimentocontiene(papa,c).

alimentocontiene(garbanzos,b1).
alimentocontiene(cereales_integrales,b1).
alimentocontiene(nueces,b1).
alimentocontiene(huevos,b1).
alimentocontiene(arroz,b1).

alimentocontiene(lacteos,b2).
alimentocontiene(cereales,b2).
alimentocontiene(espinaca,b2).
alimentocontiene(lechuga,b2).

alimentocontiene(tomate,b5).
alimentocontiene(brocoli,b5).
alimentocontiene(zanahorias,b5).
alimentocontiene(esparragos,b5).

alimentocontiene(higado,b7).
alimentocontiene(pescado,b7).
alimentocontiene(pollo,b7).
alimentocontiene(sandia,b7).
alimentocontiene(fresas,b7).

alimentocontiene(lentejas,b9).
alimentocontiene(ternera,b9).
alimentocontiene(almendras,b9).
alimentocontiene(pasas,b9).

alimentocontiene(col,a).
alimentocontiene(mantequilla,a).
alimentocontiene(calabaza,a).
alimentocontiene(melon,a).
alimentocontiene(pavo,a).

alimentocontiene(yogurt,d).
alimentocontiene(pan,d).
alimentocontiene(leche,d).
alimentocontiene(salmon,d).

sintomas(escorbuto,c).
sintomas(caida_del_cabello,c).
sintomas(caspa,c).


sintomas(depresion,b1).
sintomas(irritabilidad,b1).
sintomas(falta_de_concentracion,b1).

sintomas(cansancio_ocular,b2).
sintomas(dolor_de_cabeza_frecuente,b2).
sintomas(transtornos_digestivos,b2).
sintomas(irritabilidad,b2).

sintomas(fatiga,b5).
sintomas(nauseas,b5).
sintomas(calambres,b5).


sintomas(nauseas,b7).
sintomas(calambres,b7).
sintomas(palidez,b7).

sintomas(insomnio ,b9).
sintomas(cansancio,b9).
sintomas(inapetencia,b9).

sintomas(acne,a).
sintomas(manchas_oculares,a).
sintomas(dificultad_ver_oscuridad,a).

sintomas(debilidad,d).
sintomas(fatiga_cronica,d).
sintomas(depresion,d).

prescripcion(S,V,A):- 
sintomas(S,V), alimentocontiene(A,V).

