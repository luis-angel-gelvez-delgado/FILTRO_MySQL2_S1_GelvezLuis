/*Funciones*/

-- entregas por repartidor
select 
/*
Esta funcion nos permite visualizar una tabla con los pedidos entregado por cada repartidor con su respectiva hora de salida y de llegada
*/
    r.id_repartidor, 
    per.nombre as repartidor,
    z.nombre as zona,
    ped.id_pedido,
    d.hora_salida, 
    d.hora_entrega,
from repartidor r
join persona per on r.id_persona = per.id_persona
join zona z on r.id_zona = z.id_zona
join domicilio d on r.id_repartidor = d.id_repartidor
join pedido ped on ped.id_pedido = d.id_pedido;






















/*Vistas*/

--desempeño de repartidores

/*
Esta vista nos permite ver el desempeño de los repartidores sacando el promedio de tiempo entre la hora de salida y la hora de entrega
*/
create view vista_desempeno_repartidores as 
select 
    r.id_repartidor,
    concat(pers.nombre, ' ', pers.apellido) as nombre_completo,
    z.nombre as zona,
    count(d.id_domicilio) as entregas_totales,
    avg(timestampdiff(minute, d.hora_salida, d.hora_entrega)) as tiempo_promedio
from repartidor r
join persona pers on r.id_persona = pers.id_persona
join zona z on r.id_zona = z.id_zona
left join domicilio d on r.id_repartidor = d.id_repartidor
group by r.id_repartidor, pers.nombre, pers.apellido, z.nombre;



-- se puede ver ejecuntando el siguiente comando: 

select * from vista_desempeno_repartidores;