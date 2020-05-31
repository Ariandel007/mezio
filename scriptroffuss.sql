use springroffus;
-- Tiendas Virtuales--

INSERT INTO tienda_virtual 
VALUES (default,'Maestro', 'https://www.maestro.com.pe/');

INSERT INTO tienda_virtual
VALUES (default,'Sodimac', 'https://www.sodimac.com.pe/sodimac-pe/');

INSERT INTO tienda_virtual 
VALUES (default,'Casa Grande', 'http://casagrande.com.pe/');

INSERT INTO tienda_virtual
VALUES (default,'Casa Chica', 'http://www.mueblesalida.com/');

INSERT INTO tienda_virtual
VALUES (default,'MueblesCarlos', 'http://www.mueblescarlos.com/');

INSERT INTO tienda_virtual
VALUES (default,'MejoresMuebles', 'http://www.mejoresmuebles.com/');


-- categoria--

INSERT INTO categoria (nombre)
VALUES ('Dormitorio');

INSERT INTO categoria (nombre)
VALUES ('Sala');

INSERT INTO categoria (nombre)
VALUES ('Comedor');

INSERT INTO categoria (nombre)
VALUES ('Baño');

INSERT INTO categoria (nombre)
VALUES ('Estudio');

INSERT INTO categoria (nombre)
VALUES ('Jardin');

INSERT INTO categoria (nombre)
VALUES ('Cocina');



-- sub_categoria--


-- -Dormitorio---


INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Ropero', 1);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Comoda', 1);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Velador', 1);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Cabecera', 1);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Zapatera', 1);



-- -Sala---


INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Sofa', 2);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Centro de Entretenimiento', 2);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Repisa', 2);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Mesa de Centro', 2);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Sillon', 2);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Mueble Bar', 2);



-- -Comedor---


INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Juego de Comedor', 3);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Mesa de Comedor', 3);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Silla de Comedor', 3);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Aparador', 3);


-- -Baño---


INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Vanitorio', 4);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Gabinete', 4);


-- -Estudio---


INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Escritorio', 5);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Librero', 5);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Silla Ejecutiva', 5);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Estante', 5);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Archivador', 5);

-- -Jardin---


INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Banco', 6);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Mesas de Exterior', 6);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Silla', 6);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Sillon', 6);



-- -Cocina---


INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Alacena', 7);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Despensero', 7);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Repostero', 7);

INSERT INTO sub_categoria (nombre, id_categoria)
VALUES ('Estante', 7);

-- -usuario -----

INSERT INTO Usuario(`username`,`correo`,`password`) VALUES('Brian Sexton','aliquet.nec.imperdiet@metusIn.com','eRs9xtJus');
INSERT INTO Usuario(`username`,`correo`,`password`) VALUES('Nicholas Jensen','at.velit@aliquet.org','3S1P3492c');
INSERT INTO Usuario(`username`,`correo`,`password`) VALUES('Alfonso Burgess','pellentesque@et.org','g0lWmQKgz');
INSERT INTO Usuario(`username`,`correo`,`password`) VALUES('Gavin Mcpherson','id.sapien.Cras@nibhdolor.co.uk','Q56fRceCV');
INSERT INTO Usuario(`username`,`correo`,`password`) VALUES('Audra Donovan','dolor.sit.amet@duilectus.com','U1t78Mc8g');



-- Muebles--

-- -Dormitorio---

-- --Roperos----

INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Armario para ropa 2 puertas
Rimax', 181.5, 65, 58.4, 'Ropero de madera color Wengue', 'https://sodimac.scene7.com/is/image/SodimacPeru/1701126?$lista175$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/99/99f4eb85906201da92e801e264268bc086de938e_01.top.png', 1, 1,'','Barroco');    

INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Ropero 6 puertas 2 cajones
San Marino', 181, 150, 47.5, 'Ropero de Aglomerado de madera color Chocolate', 'https://sodimac.scene7.com/is/image/SodimacPeru/2373084_5?$producto495$&id=2ocSh3&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/99/99f4eb85906201da92e801e264268bc086de938e_01.top.png', 1, 2,'','Barroco');    


INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Ropero 6 puertas 3 cajones y Espejo Tunisia
Moval', 230, 233, 47, 'Ropero de Aglomerado de Madera Color Castaño', 'https://cdnclp.paraguay.com/pictures/2017/04/25/17725/2537576L.jpg', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/8e/8ea7d612a2f06a563077181aac53d30affc89b26_02.top.png', 1, 6,'','Barroco');    


INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Ropero 4 Puertas 2 Cajones Cedro
Home Collection', 180, 120.5, 49.8, 'Ropero de tablero de aglomerado de melanimico color Cedro', 'https://sodimac.scene7.com/is/image/SodimacPeru/2719371_01?$producto495$&id=gERR12&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/99/99f4eb85906201da92e801e264268bc086de938e_01.top.png', 1, 3,'','Barroco');    


INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Ropero Capri 4 Puertas 3 Cajones Blanco
Moval', 204, 165, 47, 'Ropero de Aglomerado de madera color Blanco', 'https://sodimac.scene7.com/is/image/SodimacPeru/2827174_01?$producto495$&id=u8TRv2&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/2a/2a541c881e5cdee63a21f0d4d20bad1701e702c9_01.top.png', 1, 6,'','Barroco');    


-- --Comoda----


INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Cómoda París 8 Cajones Walnut Tvilum', 86.9, 183.4, 48.5, 'Comoda de Aglomerado y Folio', 'https://sodimac.scene7.com/is/image/SodimacPeru/2718847?$producto495$&id=Wg7rD3&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/8b/8b12b910732bcb32a00d60e8493412506b18f448_02.top.png', 2, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Cómoda Paris 8 cajones blanco Tvilum', 87, 183, 48, 'Comoda de Aglomerado de Madera color Blanco', 'https://http2.mlstatic.com/comoda-8-cajones-homy-tvilum-paris-87x183x49-nueva-D_NQ_NP_668059-MLC29010885821_122018-F.jpg', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/f1/f1c22ce1ad3fc8e93a075ab14c5e2a2954ddb67a_01.top.png', 2, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Cómoda con cambiador de bebé 4 Cajones Blanco Madeforstores', 95, 89, 74, 'Comoda de Melamina y PVC color Blanco', 'https://sodimac.scene7.com/is/image/SodimacPeru/2578921?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/2a/2a541c881e5cdee63a21f0d4d20bad1701e702c9_01.top.png', 2, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Cómoda París 8 Cajones Blanco Roble Patinado Tvilum', 86.9, 183.3, 48.5, 'Comoda de Aglomerado de Madera color Marmol', 'https://sodimac.scene7.com/is/image/SodimacPeru/2718812?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/a0/a0158884c0a8cec1345f089becd4d48cd7b806db_01.top.png', 2, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Comoda Sauvie Blanco Casabella', 117, 46.5, 148, 'Comoda de Madera Brasil Blanco', 'https://sodimac.scene7.com/is/image/SodimacPeru/2960788?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/2a/2a541c881e5cdee63a21f0d4d20bad1701e702c9_01.top.png', 2, 2,'','Barroco');    


-- --Velador----

INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Velador de 1 cajón Tvilum', 54, 40.5, 30, 'Velador de Aglomerado de Madera color Cerezo', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/175128-velador-de-1-cajon.jpg', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/2c/2c25d80999b01d05ddabeb4dc3565cde45e138e2_00.top.png', 3, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Velador 1 Cajón Chocolate', 50, 39, 37, 'Velador de Madera color Chocolate', 'https://sodimac.scene7.com/is/image/SodimacPeru/2595893?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/2c/2c25d80999b01d05ddabeb4dc3565cde45e138e2_00.top.png', 3, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Velador 2 cajones Mocca Amarulla Casa Bonita', 51, 42, 36, 'Velador de Madera color Chocolate', 'https://sodimac.scene7.com/is/image/SodimacPeru/2482347?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/bb/bbf543b8e12a82dfe246114e359741f801771e3e_02.top.png', 3, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Velador de 1 cajón Moduart', 61.5, 47, 36, 'Velador de Aglomerado Madera color Cedro', 'https://sodimac.scene7.com/is/image/SodimacPeru/173640X?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/2c/2c25d80999b01d05ddabeb4dc3565cde45e138e2_00.top.png', 3, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Velador Apolo 2 Cajones Moval', 61, 46, 39, 'Velador de Madera color Mate', 'https://sodimac.scene7.com/is/image/SodimacPeru/2433842?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/1a/1a8882095aa1aa7e9d4ab68d4b36533f833f6d7b_01.top.png', 3, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Velador Veneto 2 cajones MadeforStores', 57.9, 40.2, 38, 'Velador de Melamina color Roble y Blanco', 'https://sodimac.scene7.com/is/image/SodimacPeru/2579847?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/c1/c15029fc979b002f5aae534d39bcfb0266fc9f88_02.top.png', 3, 2,'','Barroco');    


-- --Cabecera----

INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Cabecera Bali Native Casabella', 110, 11.2, 262, 'Cabecera de Madera Gamuza Conac', 'https://sodimac.scene7.com/is/image/SodimacPeru/2959623?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/21/219c97f26c20a50a7b18b9d2f471bc1f62176a07_01.top.png', 4, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Cabecera 2Pz-Q Rustic Madesa', 100, 230, 43, 'Cabecera de Aglomerado de Madera color Pintura Poliester', 'https://sodimac.scene7.com/is/image/SodimacPeru/3209911_01?$producto495$&id=IaUSN0&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/8b/8b12b910732bcb32a00d60e8493412506b18f448_02.top.png', 4, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Cabecera Silcosil', 110, 220, 40, 'Cabecera de Aglomerado de Madera color Chocolate', 'https://sodimac.scene7.com/is/image/SodimacPeru/2540606?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/08/088843f210f687079612e406a79012795aae1246_00.top.png', 4, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Cabecera Sevilla Castaño Avela Flex Moval', 264, 110, 43, 'Cabecera de Madera color Castaño Avela', 'https://sodimac.scene7.com/is/image/SodimacPeru/2745003_01?$producto495$&id=gAHSX0&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/68/688efc6d7ca7c6b3d682cc82736f486ad51aa3bb_01.top.png', 4, 2,'','Barroco');    

-- --Zapatera----

INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Zapatera Cronos 30 Pares Blanco Gaudi', 170, 80, 24, 'Zapatera de Melamina Blanca', 'https://sodimac.scene7.com/is/image/SodimacPeru/2903105_01?$producto495$&id=j5sSn0&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/2a/2a541c881e5cdee63a21f0d4d20bad1701e702c9_01.top.png', 5, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Zapatera Mantas Modupak', 73, 113, 20.5, 'Zapatera Minifix color Cerezo', 'https://sodimac.scene7.com/is/image//SodimacPeru/2956535?$lista175$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/f8/f897c9ad057a4c384f05038c043b2c457169c8d6_01.top.png', 5, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Zapatera 1 puerta 15 pares', 179, 50, 21, 'Zapatera de Madera con acabado en Melamine color Blanco', 'https://sodimac.scene7.com/is/image/SodimacPeru/2491435_1?$producto495$&id=wIiTF0&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/3e/3e45fdbe71026f38713c3f8d2a07c70362cbf32c_01.top.png', 5, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Zapatera Jenny 10 Pares Manzano Gaudi', 45, 100, 30, 'Zapatera de Aglomerado de Madera color Manzano', 'https://sodimac.scene7.com/is/image/SodimacPeru/2902680_01?$producto495$&id=K-QSX0&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/49/49ce4873eba08b14143ecb4102c8d6583fe11621_01.top.png', 5, 3,'','Barroco');    


-- -Sala---
-- --Sofa----

INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Sofá 2 cuerpos beige Homy', 71, 145, 73, 'Sofa modelo Julieta de Madera y tapiz de Tela', 'https://sodimac.scene7.com/is/image/SodimacCL/3320510?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/2c/2ce64052e08fe1155224936ba65dbdf533409918_01.top.png', 6, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Sofá 3 cuerpos Honey', 99, 211, 103, 'Sofa modelo Relax de Tela y Poliester', 'https://sodimac.scene7.com/is/image/SodimacCL/3155080?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/c6/c6129a29c0b26cf276031538b6bfb81b6e25b194_01.top.png', 6, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Sofá 3 cuerpos negro Rosen', 85, 190, 85, 'Sofa modelo Mira de Madera y Poliuretano', 'https://sodimac.scene7.com/is/image/SodimacCL/3627837?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/49/49d04c65d465b78dc50471bedd63515fdde3e779_01.top.png', 6, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Seccional gris Homy', 84, 84, 200, 'Sofa modelo Milan de Pino, Tela y Ecocuero', 'https://sodimac.scene7.com/is/image/SodimacCL/3391892_01?$producto495$&iv=3vPmv2&wid=489&hei=489', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/83/83b7286d45429af5464ba688ce4e1548ecc0f820_00.top.png', 6, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Sofá 2 cuerpos azul Tudor', 76, 155, 89, 'Sofa modelo Murano de Tela Poliester', 'https://sodimac.scene7.com/is/image/SodimacCL/3321665_01?$producto495$&id=DK3nP0&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/91/918639859ab60522633797207800b07a619c71b5_01.top.png', 6, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Sofá 3 cuerpos beige Homy', 95, 95, 206, 'Sofa modelo Ray de Tela Poliester', 'https://sodimac.scene7.com/is/image/SodimacCL/3023524?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/7f/7f6271463f22a90de08a8077f335cb43e480bc76_00.top.png', 6, 3,'','Barroco');    

-- --Centro de Entretenimiento----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Centro de entretenimiento Curve Caemmun', 182.6, 159, 43.7, 'Centro de Entretenimiento de MDF y MDP Marron', 'https://http2.mlstatic.com/centro-de-entretenimiento-rack-hasta-55-caemmun-curve-havana-D_NQ_NP_753458-MLA27918129928_082018-F.jpg', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/dd/dd4796f39fb4de11ebce9f9459581668dfbc15b6_01.top.png', 7, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Centro de entretenimiento Global 48', 204.5, 136.5, 38.5, 'Centro de Entretenimiento de Aglomerado de Madera Multicolor', 'https://sodimac.scene7.com/is/image/SodimacPeru/2378256?$producto495$&id=4F5rD3&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/49/49ce4873eba08b14143ecb4102c8d6583fe11621_01.top.png', 7, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Centro de entretenimiento Jade Línea Brasil', 186.4, 108.4, 37.4, 'Centro de Entretenimiento de Aglomerado de Madera Marron', 'https://sodimac.scene7.com/is/image/SodimacPeru/2464926_3?$producto495$&id=_tGSn0&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/9b/9bff183b9e1f64783eeb25c12f31855998e756a3_01.top.png', 7, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Centro de entretenimiento Ravello Móveis', 186, 210, 39, 'Centro de Entretenimiento de MDP Marron', 'https://sodimac.scene7.com/is/image/SodimacPeru/265556X?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/79/79512d40595d489a0bb8e3bc0ca965c5a75ea934_01.top.png', 7, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Centro de Entretenimiento Turín Cacau 50', 187, 160, 37, 'Centro de Entretenimiento de MDF Marron', 'https://sodimac.scene7.com/is/image/SodimacPeru/3239551_01?$producto495$&id=0-3Sn3&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/dc/dc4b6a1b56faf0b0ac679141c9c53f1449bf984a_02.top.png', 7, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Centro de entretenimiento Thalia Línea Brasil', 197, 209, 45, 'Centro de Entretenimiento de MDF y MDP Marron', 'https://sodimac.scene7.com/is/image/SodimacPeru/2380056_1?$producto495$&id=27ORZ2&fmt=jpg&fit=constrain,1&wid=493&hei=493', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/61/61da788a7fd67fe1a1bf270e16f458caadb0225e_01.top.png', 7, 2,'','Barroco');    

-- --Repisa----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Cubo infantil MDF Blanco Casa Bonita', 75, 32, 11.7, 'Repisa de MDF color Blanca ', 'https://sodimac.scene7.com/is/image/SodimacCL/2067447?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/80/80b40ff3da7018b6b515b6ee0199450ef0160d8f_00.top.png', 8, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Repisa cuadrada Blanco Just Home Collection', 36, 36, 10, 'Repisa de MDF color Blanca ', 'https://sodimac.scene7.com/is/image/SodimacCL/231617X?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/d8/d87dc1e4662dee6534444c157f7541a4e42e641a_01.top.png', 8, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Repisa de torre Blanco y Naranja', 75, 40, 40, 'Repisa de MDF y Polietileno', 'https://img.eshop.cl/uploads/micropost/picture/964245/2316137.jpeg', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/80/80b40ff3da7018b6b515b6ee0199450ef0160d8f_00.top.png', 8, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Repisa Blanco Honey', 18.3, 75, 15, 'Repisa modelo Maria de MDF', 'https://sodimac.scene7.com/is/image/SodimacCL/3432106?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/da/daaa42cead9f46865f5e9f03ad49e29964db8833_01.top.png', 8, 3,'','Barroco');    

-- --Mesa de Centro----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Mesa de centro Blanco Tvilum', 43, 60, 98, 'Mesa de Centro de Madera color Blanco y Oak', 'https://sodimac.scene7.com/is/image/SodimacCL/2835878?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/80/80b40ff3da7018b6b515b6ee0199450ef0160d8f_00.top.png', 9, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Mesa de centro Cordillera Silcosil', 40, 90, 50, 'Mesa de Centro de Melamina color Chocolate', 'https://sodimac.scene7.com/is/image/SodimacCL/3304760?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/4b/4bb63a6e8c6a72c3414012cf085fd7b0e7e7f648_01.top.png', 9, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Mesa de centro Tiago Homy', 41, 108, 58, 'Mesa de Centro de Aglomerado de Madera', 'https://sodimac.scene7.com/is/image/SodimacCL/3232751_01?$producto495$&iv=dVknP1&wid=1349&hei=1349&fit=fit,1', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/83/83e5029bceb0327bc453be8529b5be6828c29df3_01.top.png', 9, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Mesa de centro Blanco/Natural Decocasa', 30, 80, 80, 'Mesa de Centro de Aglomerado de Madera', 'https://sodimac.scene7.com/is/image/SodimacCL/384756X?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/b3/b36bf1cc9a174900b1096a0009728556f6ef1b1e_01.top.png', 9, 6,'','Barroco');    


-- --Sillon----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Sofá 1 Cuerpo Candela JP Stylos', 110, 120, 90, 'Sillon de Madera y Ultracuero', 'https://www.jpstylos.pe/wp-content/uploads/2018/02/juego-de-sillones-candela.jpg', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/a8/a832dbfc657c8a763f27a892338f567ce5532769_01.top.png', 10, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Sillón Michigan Just Home Collection', 103, 94, 160, 'Sillon de Madera y Espuma color Gris', 'https://homecenterco.scene7.com/is/image/SodimacCO/345041_1?$producto495$&id=s5xRd1&fmt=jpg&fit=constrain,1&wid=380&hei=380', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/59/59f6147fb2acd2726083ac071b3bb9c9a68a9173_01.top.png', 10, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Sillón Arturo Just Home Collection', 105, 98, 161, 'Sillon de Madera y Espuma color Marron', 'https://sodimac.scene7.com/is/image/SodimacPeru/276251X?$producto310$', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/40/408b04b01b1e8f202bbbb73cc9db18d4e744d616_03.top.png', 10, 1,'','Barroco');    

-- -Comedor---
-- --Mesa de Comedor----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Mesa de Comedor Montego Bay', 75, 100, 100, 'Mesa montengo bay decorativa negra estilo ratán de material PVC.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2052156?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/eb/eb72d804784efd835c405bd700246f9e4a35b3eb_01.top.png ', 13, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Mesa red de Comedor con vidrio blanca Home Collection', 72, 120, 120, 'Mesa blanca de estructura de metal con tablero de vidrio.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2399520_1?$producto495$&id=M_3Sr2&fmt=jpg&fit=constrain,1&wid=493&hei=493  ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/5c/5c321aac1a1d8a63d7af39ff1e9d53e93ce3dd95_01.top.png ', 13, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Mesa de Comedor Plegable Just Hc Garden', 72, 152, 76, 'Mesa blanca Just Hc Garden de estructura de metal con tablero de plástico.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/1689673.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/d8/d87dc1e4662dee6534444c157f7541a4e42e641a_01.top.png ', 13, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Mesa de Vidrio para Comedor Just Home Collection', 76, 80, 150, 'Mesa moderna de metal y vidrio templado de China.', 'https://sodimac.scene7.com/is/image//SodimacPeru/276072X?$lista175$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/b7/b7428f121f71c2af9c43788e2ccd72138f758cf4_00.top.png ', 13, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Mesa de Comedor de vidrio redonda Home Collection', 75, 90, 90, 'Mesa plateada de estructura de acero con tablero de vidrio de China.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2028425_1?$producto495$&id=Sf3Tv1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/5c/5c321aac1a1d8a63d7af39ff1e9d53e93ce3dd95_01.top.png ', 13, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Mesa de Comedor Aluminio Cuadrado Home Collection', 71, 70, 70, 'Mesa gris de alumnio de China.', 'https://sodimac.scene7.com/is/image/SodimacPeru/1095129_1?$producto495$&id=UM6TJ1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/15/15890b0c84372ae77e044f9f0d7521f15642677b_01.top.png ', 13, 1,'','Barroco');    
-- --Silla de Comedor----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Silla Comedor Ana Negra Home Collection', 98, 43, 47.5, 'Silla negra 50% acero, 30% espuma, 10% mandera enchapada, 10% policloruro de vinilo de China.', 'https://sodimac.scene7.com/is/image//SodimacPeru/2580535?$lista175$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/3b/3bd6c135290f91d82c9195f020b06d9b1583413c_01.top.png ', 14, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Silla Comedor Abner Negro Home Collection', 98, 42, 49, 'Silla negra de poliuretano de China.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2580519?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/3b/3bd6c135290f91d82c9195f020b06d9b1583413c_01.top.png ', 14, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Silla Comedor Ada sin Brazo Negra Reyplast ', 84, 43.5, 42, 'Silla negra de plástico de Perú.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/2493357.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/3b/3bd6c135290f91d82c9195f020b06d9b1583413c_01.top.png ', 14, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Silla Comedor PU Blanca', 90, 43, 52, 'Silla de metal blanca de forro PU de China.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2760541?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/96/96bb7c0f0c5e6a045c14188a036b33dda0baf199_01.top.png ', 14, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Silla Comedor Verde Agua Always Star', 95, 40, 49, 'Silla turqueza de estructura de metal con forro de cuerina de Turquía.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2722860?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/26/268e64b8b792fb04fbf147fe83b5105bc04842b4_00.top.png ', 14, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Silla Comedor Tom negro', 84, 48.5, 44, '	Silla de comedor negro con asiento de polipropileno y poliuterano. Patas en haya.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2488892?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/36/36d3f23b527e656b939ffaff983c93f21d56871f_00.top.png ', 14, 1,'','Barroco');    
-- --Aparador----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Aparador 3 puertas blanco BRV', 69.5, 90, 33, ' Aparador  blanco de MDF de la marca BRV Móveis de Brasil.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2600323_1?$producto495$&id=IIESv1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/9b/9b388c45e936d58f9fb7f18e7ec5a0c524fd1d98_01.top.png ', 15, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Aparador Rustic Madesa', 79, 160, 40, ' Aparador  rectangular marrón de MDP y herrajes de procedencia de Brasil.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2679264_01?$producto495$&id=TmFST0&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/96/964b1436fcc5e52cd6aa41c86ce8d4642b46737b_01.top.png ', 15, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Aparador Classic Rústico Malbec DJ Moveis', 85.4, 103, 41.5, ' Aparador de material MDF y MDO de acabado con pintura UV de Brasil.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2876892?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/4b/4bb63a6e8c6a72c3414012cf085fd7b0e7e7f648_01.top.png ', 15, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Aparador Ibiza Moca Casabella', 73, 33, 120, ' Aparador  mocacciono de MDF de la marca Casabella de Brasil.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2959992?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/fd/fd9f8aeebee7e5fb9ec895e7b337aedea1ad9a1c_01.top.png ', 15, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Aparador Santorini Deck Casabella', 70, 34, 135, ' Aparador  color deck de MDF de la marca Casabella de Brasil.', 'https://sodimac.scene7.com/is/image/SodimacPeru/296001X?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/1a/1ae18d416d3b571ccb8d27e6d0dbc3e05cbbff98_01.top.png ', 15, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Aparador Ibiza Aspen Casabella', 73, 33, 120, ' Aparador  color Aspen de MDF de la marca Casabella de Brasil.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2959976?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/33/33933cd5971b274a6323e7eec8004bce2ea88aa0_01.top.png ', 15, 1,'','Barroco');    
-- -Baño---
-- --Vanitorio----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Vanitorio Blanco Sensi D acqua', 90, 45, 45, ' Vanitorio blanco de WD superficie sólida modelo Hopp de China.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2570114?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/1d/1da1c057e1d08402a8e5eb1932188760be4caca9_01.top.png ', 16, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Mueble Vanitorio Cube Alto D acqua', 35, 50, 40, 'Vanitorio blanco matte de WD superficie sólida modelo Cube Alto de China.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2570203?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/8c/8c00e2bfbf9e6136a4d344b0409f806913a73de0_01.top.png ', 16, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Vanitorio Barcelos  BL', 62, 80, 46, ' Vanitorio blanco de melamina cubierta con cerámica modelo Barcelos de China.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/f4ea13762643a47ed5e89916e50c7bd1.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/8c/8c00e2bfbf9e6136a4d344b0409f806913a73de0_01.top.png ', 16, 2 ,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Vanitorio Rectangular Blanco Sensi D acqua', 90, 40, 40, ' Vanitorio rectangular blanco matte de WD superficie sólida de China.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2570149_1?$producto495$&id=NFYRL2&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/8c/8c00e2bfbf9e6136a4d344b0409f806913a73de0_01.top.png ', 16, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Vanitorio Dublin Blanco Sensi Elite', 52, 65, 52, ' Vanitorio blanco de MDF y MFC modelo Dublin.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2649195?$lista175$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/8c/8c00e2bfbf9e6136a4d344b0409f806913a73de0_01.top.png ', 16, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Vanitorio River Chocolate Sensi D acqua Deluxe', 50, 80, 47.6, ' Mueble vanitorio blanco para baño. Resistente y duradero. 2 Cajones de madera.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2649187?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/8c/8c00e2bfbf9e6136a4d344b0409f806913a73de0_01.top.png ', 16, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Vanitorio Seia D acqua', 85, 50, 46, ' Vanitorio color nuez de melamina modelo Seia de China.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2454378?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/92/92201a52221871768eec0282c1236f1c7f5426b7_01.top.png ', 16, 1,'','Barroco');    
-- --Gabinete----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Gabinete de Baño Modupak', 71, 50, 13, ' Gabinete  de baño blanco con 1 Repisa de apoyo. Mueble fabricado en melamina de 15mm. Canto delgado (0.4mm). Espejo.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2156466?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/15/153b2dfce6cfaa7b2cc10a0d745c3389bcf4baab_06.top.png ', 17, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Gabinete toallero Niza 2 puertas Pisopak', 70, 60, 20, ' Gabinete  de baño blanco con aglomerado de madera. Cuenta con una barra de madera para colgar toallas.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2593661?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/9b/9b388c45e936d58f9fb7f18e7ec5a0c524fd1d98_01.top.png ', 17, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Gabinete con Puerta y Espejo', 60, 60, 15, ' Gabinete color wenqué con 2 repisas de vidrio de 40 x 12 cm, puerta de espejo para empotrar en la pared. Puerta con espejo de 40 x 50 cm, ideal para botiquín.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/2454386.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/19/1919fd789bd91034c3a10af8203217407e3dd619_01.top.png ', 17, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Gabinete Barcelona Madera Monterrey ', 61, 38, 15, ' Gabinete  de baño de madera modelo Barcelona de Perú.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/3ab45d88cb4098e4eab8b1f7b839d9b4.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/b2/b2562bdd31b510ec7a6913f1fd4152101d8cccef_01.top.png ', 17, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Gabinete Astro Wengue Monterrey ', 61, 38, 15, ' Gabinete  de baño de madera modelo Astro de Perú.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/c273d679787ee804a0a62e994106afd2.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/92/92201a52221871768eec0282c1236f1c7f5426b7_01.top.png ', 17, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Gabinete Madera Bl', 66.5, 58, 22, ' Gabinete  de baño blanco con 1 puerta con espejo y 3 compartimientos. Origen de China', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/179173-botiquin-1-puerta-y-3-repisas.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/9b/9b388c45e936d58f9fb7f18e7ec5a0c524fd1d98_01.top.png ', 17, 6,'','Barroco');    





-- -Estudio---
-- --Escritorio----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Escritorio con 1 pared de vidrio Asenti ', 89, 170, 145, 'Escritorio de oficina de vidrio templado', 'https://sodimac.scene7.com/is/image/SodimacPeru/1857282C3_01?$producto495$&id=GA0SV3&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/dc/dc2f4711283b5dc8ae944c6f38f7532804444798_01.top.png', 18, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ('Escritorio en L negro Asenti', 76, 105, 58, 'Escritorio de Melamine con lateral de vidrio templado', 'https://sodimac.scene7.com/is/image/SodimacPeru/226224X_1?$producto495$&id=FOlSd1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/00/00866a5b0b157ba6c41c655239f4e3b8703fb0b0_01.top.png ', 18, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'ESCRITORIO 3CAJ ', 110, 53, 76, 'Escritorio de madera con 3 cajones', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/2602040.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/d4/d4cea9be3ca54c18cbb38a5a11e12541ec18ba30_01.top.png ', 18, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Escritorio Júpiter Home Collection', 75, 75, 120, 'Escritorio de metal Cromado y negro', 'https://sodimac.scene7.com/is/image/SodimacPeru/2760487?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/43/436ab008524b3b06764c7834643005df08714b41_01.top.png ', 18, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Escritorio Jupiter Nogal Modupak', 125, 75, 49, 'Escritorio Repisa multiusos. Fabricado en melamina de 15mm.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2956276_01?$producto495$&id=N9SS31&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/76/76b32b683454c8dd1ed99443bde39f6021830e9a_01.top.png ', 18, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Escritorio Canarias Asenti', 75.3, 120, 60, 'Escritorio Aglomerado de madera', 'https://sodimac.scene7.com/is/image/SodimacPeru/2262363_1?$producto495$&id=V0nSX1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/7a/7ab623c7623d3ead3cfeb455b9178c2ae1213162_01.top.png ', 18, 1,'','Barroco');    
-- --Librero----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Librero Gran Roque Rob/Fen Casabella', 176, 30.5, 60, 'Librero Casbella de Almendra de Brasil ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2960664_01?$producto495$&id=KkvSP0&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/cf/cf0a26f26d1513d6a4300bb2d71d958122ff45ff_01.top.png ', 19, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Librero NY Practimac', 160.6, 62.9, 31.6, 'Librero Aglomerado con melamínico de Colombia', 'https://sodimac.scene7.com/is/image/SodimacPeru/2592908?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/fc/fccbc5d345b7887301b6644eddf52d58a37f65f2_01.top.png ', 19, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Librero negro', 175, 60, 24, 'Librero  negro de folio de Dinamarca de la marca Tvilum  ', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/181443-io-librero-negro-6-repisas-neg.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/e1/e1ab967c0f48dcfdba37f1e52554e0207f998ec4_02.top.png ', 19, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Librero 5 Repisas Jazmin Tvilum', 175, 60, 24, 'Librero con 5 repisas de Folio con Aglomerado de Dinamarca', 'https://sodimac.scene7.com/is/image/SodimacPeru/2602318?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/fc/fccbc5d345b7887301b6644eddf52d58a37f65f2_01.top.png ', 19, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Librero 2 Puertas Penang Roble/Fen Casabella', 173.5, 31.5, 60, 'Librero Casbella de Roble de Brasil', 'https://sodimac.scene7.com/is/image//SodimacPeru/2960680?$lista175$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/fc/fccbc5d345b7887301b6644eddf52d58a37f65f2_01.top.png ', 19, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Librero 4 espacios Tvilum', 132, 50, 34.5, 'Librero Aglomera de madera con acabado de Folio de Dinamarca ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2020777?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/fc/fccbc5d345b7887301b6644eddf52d58a37f65f2_01.top.png', 19, 1,'','Barroco');    
-- --Silla Ejecutiva----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla Ejecutiva Gerencial negro Asenti', 124, 66, 73, 'Asiento de Cuerina con estructura de metal y polipropileno de China ', 'http://ergonomiaperu.com/wp-content/uploads/2016/06/ERGO-3059H-1-ergonomiaperu-sillas-ergonomicas.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/f5/f556caba5d201adc350d5c86db319d74bd3af917_01.top.png ', 20, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla Ejecutiva PC Avignon con Brazos Negra Home Collection', 92, 53, 69, 'Asiento negro de 80% Polipropileno ,15% metal, 5% MDF de China ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2723689?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/f5/f556caba5d201adc350d5c86db319d74bd3af917_01.top.png ', 20, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla Ejecutiva De Oficina En Cuerina Y Malla', 102, 61, 50, 'Asiento de Cuerina con Respaldo y acolchado. Base de Nylon. De China', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/99e45fb0724a18d6d3da418a5c96e116.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/f5/f556caba5d201adc350d5c86db319d74bd3af917_01.top.png ', 20, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla Ejecutiva redonda tela gris Asenti', 79, 54, 55, 'Asiento gris de Tela con estructura de metal de China ', 'https://i.linio.com/p/c50e2010865d92f7fa3bb069a36f3ea6-product.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/d1/d16c5be68b6ade80cd1328370cd6b3e859c331aa_01.top.png ', 20, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla Ejecutiva de PC Barrie blanca Home Collection Office', 91, 57, 55, 'Asiento Blanco de Plástico con estructura de aluminio de China ', 'https://sodimac.scene7.com/is/image/SodimacCL/334570X_01?$producto495$&iv=m5hnx0&wid=1349&hei=1349&fit=fit,1 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/02/02b0f6d5a6fa25a4f4e019a06db598d4a2236418_01.top.png ', 20, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla Ejecutiva  juvenil negra Asenti', 88, 49, 55, 'Asiento negro de Tela con estructura de metal y nylon de China ', 'https://sodimac.scene7.com/is/image/SodimacPeru/18597_1?$producto495$&id=CUISt1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/c1/c1057b25a20b48ebdff5bac1bb3e91acb6cb8500_02.top.png ', 20, 1,'','Barroco');    
-- --Estante----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Estante blanco 12 espacios BRV', 218, 74, 29.5, 'Estante blanco de madera con acabado de melamine de Brasil ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2509121_1?$producto495$&id=hcLSr1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/2d/2df036e0cc8d3e633b9b54b660f4428af60adec9_00.top.png ', 21, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Estante Zen con Puertas Chocolate Silcosil', 180, 60, 30, 'Estante chocolate de aglomerado con acabado de melamine de Chile ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2757451?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/b4/b490c157622f2687afacac2526b7c28ca3b4a67c_01.top.png ', 21, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Estante Zen  Blanco Silcosil', 180, 60, 30, 'Estante blanco de aglomerado con acabado de melamine de Chile ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2906678?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/f9/f916b8850627ac554795b25ae3f827ee7d493f05_01.top.png ', 21, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Estante de 5 repisas Tvilum', 206, 40.6, 26.7, 'Estante negro de folio con acabado de melamine y respaldo de MDF', 'https://sodimac.scene7.com/is/image/SodimacPeru/1111817?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/57/57bf20ed39e81145e417832fbf0b7867a5f817e8_01.top.png ', 21, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Estante Blanco Madera Silcosil', 100, 51, 20, 'Estante blanco madera de aglomerado con acabado de melamine de Chile ', 'https://sodimac.scene7.com/is/image//SodimacPeru/2757478?$lista175$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/63/63fb966ae8a96a526619aec4a5a45f81f589a787_01.top.png ', 21, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Estante 4 repisas Zigzag Silcosil', 120, 45, 20, 'Estante wengue de aglomerado de madera de Chile ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2663341?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/63/63fb966ae8a96a526619aec4a5a45f81f589a787_01.top.png ', 21, 1,'','Barroco');    
-- --Archivador----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Archivador 9 cajones Home Collection', 85, 80, 40, 'Archivador multicolor de aglomerado con respaldo de MDF de China ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2262398_1?$producto495$&id=UIyRP1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/f9/f9e98a4c1a06dc4f30cd89790c13e1adc18ff6f4_01.top.png ', 22, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Archivador Okinawa Blanco Casabella', 74.5, 46.5, 68, 'Archivador blanco de Casabella con procedencia de Brasil ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2960559?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/63/63fb966ae8a96a526619aec4a5a45f81f589a787_01.top.png ', 22, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Archivador de 4 cajones Tvilum', 68, 48.5, 49, 'Archivador de color roble de folio con acabado de melamine de Dinamarca ', 'https://sodimac.scene7.com/is/image/SodimacPeru/1857541_1?$producto495$&id=hz0SV3&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/98/98d9ba00f5bf36ceda22cbe1dce0a37896820164_01.top.png ', 22, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Archivador Penang Roble/Fen Casabella', 74.5, 31.5, 60, 'Archivador de roble de Brasil ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2960567_01?$producto495$&id=pdESd3&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/dd/ddc0076e6db3645037d0bd6245366147be5df960_01.top.png ', 22, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Archivador de 4 cajones Home Collection', 65, 45, 30, 'Archivador multicolor de aglomerado de madera con acabado de polibutileno de China', 'https://sodimac.scene7.com/is/image/SodimacPeru/2262371_1?$producto495$&id=NxnS53&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/f9/f9e98a4c1a06dc4f30cd89790c13e1adc18ff6f4_01.top.png ', 22, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Cajonera Brown 3 Cajones Home Collection', 61, 37, 35, 'Archivador marrón y blanco de comodas de MDF de China ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2772426_01?$producto495$&id=hS_SP3&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/1c/1c3ffde96647f308130ca9ab026b50136f033071_01.top.png ', 22, 1,'','Barroco');    
-- -Jardín---
-- --Banco----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Banco bar madera y acero Killanqa', 75, 32, 32, 'Banco multicolor de acero de Perú ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2488124?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/da/da541b4726ef2103d4839d49d15928f1e6fa5924_01.top.png ', 28, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Banco madera y acero Killanqa', 44.5, 32, 32, 'Banco multicolor de madera con estructura de acero de Perú ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2488132_1?$producto495$&id=9qoSl3&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/da/da541b4726ef2103d4839d49d15928f1e6fa5924_01.top.png ', 28, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Banco bambino', 48, 40, 34, 'Banco azul de plástico de Perú ', 'https://sodimac.scene7.com/is/image/SodimacPeru/132470_1?$producto495$&id=w_VSR3&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/8c/8c6b455fceb6b0ae542fcf897dbb66a9c6e088d1_00.top.png ', 28, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Banco bar Rio gris Home Collection', 112, 43, 59, 'Banco gris de madera de China ', 'https://sodimac.scene7.com/is/image/SodimacPeru/132470_1?$producto495$&id=w_VSR3&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/49/496301fda678ac9e0ec77b8840ae462f0db4966f_01.top.png ', 28, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Banco Bar Amat Just Home Collection', 70, 39, 35, 'Banco multicolor de acero de China ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2464829?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/84/842e0f120cce258e454dc054be777d3d2981c666_01.top.png ', 28, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Banco bar Chapita plateado Home Collection', 81.5, 33, 38.5, 'Banco plateado de ABS y acero de China ', 'https://sodimac.scene7.com/is/image/SodimacPeru/2642689?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/e3/e308e986fcbcf4a23cf0393f97c7a539496ccdf2_01.top.png ', 28, 1,'','Barroco');    
-- --Mesas de Exterior----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Mesa Tavarua con Vidrio Reyplast', 75, 95, 180, 'Mesa café con Tejido texturizado tipo ratán. material UV y 100% virgen.', 'https://toleplast.com/wp-content/uploads/2018/12/MESA-TAVARUA-180-X-95-MOD.RATAN-CON-VIDRIO.png ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/1d/1d073d1d1dd0ccebb0ca61b85350a8c215f0762c_01.top.png ', 29, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Mesa Sevilla de aluminio con madera Just Hc Garden', 71, 60, 60, 'Mesa marrón de madera con aluminio', 'https://sodimac.scene7.com/is/image/SodimacPeru/1095099_1?$producto495$&id=9nKTV2&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/5b/5b5eecabebfbbbd69ab5f31609e4e3e5ad8c96a6_01.top.png ', 29, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Just Hc Garden - Mesa Plegable Maleta', 72, 152, 76, 'Mesa blanca de plástico de China.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/1689673.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/0a/0a898a46035394a8551053e95ac08e207529b18a_01.top.png ', 29, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Mesa Redonda Caral Blanco Reyplast ', 71.3, 80.4, 80.4, 'Mesa caral redonda blanco, es ideal para tus espacios exteriores, resistente y de fácil mantenimiento.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/155610X.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/f8/f89658dd7f872e67690889212bfd2bea13452459_02.top.png ', 29, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Mesa de aluminio redonda Just Home Collection', 72, 60, 60, 'Mesa plateada de aluminio.  De transporte fácil y tiene unas gomas en sus patas cuyo fin es evitar que el aluminio ralle el piso.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2546396?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/a0/a0689241ec96c900f0f9fd839460bd72834a46b5_01.top.png ', 29, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Mesa redonda Dear Santa', 70.5, 122, 122, 'Mesa blanca de metal para el aire libre.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2005085_1?$producto495$&id=iyiS_0&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/7f/7fb519f6ee00bf40fad7f51e6020e5df093f9a68_01.top.png ', 29, 6,'','Barroco');    
-- --Silla----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla Ada con brazo blanco', 85, 52, 57, 'Silla blanca de plástico con estructura de aluminio para el aire libre.', 'https://oechsle.vteximg.com.br/arquivos/ids/623811-1000-1000/image-bee24d3e334d48c49217e1297719e41f.jpg?v=636840563035200000 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/13/135a13a1df3bb16900a6090addaa9a0c693a0059_01.top.png ', 30, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla Ducati Polinplast', 82, 40.5, 52.5, 'Silla blanca de plástico con patas antideslizantes para el aire libre.', 'https://sodimac.scene7.com/is/image/SodimacPeru/1748459_1?$producto495$&id=0hGSP0&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/13/135a13a1df3bb16900a6090addaa9a0c693a0059_01.top.png ', 30, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla master confort', 90, 56, 47, 'Sillas para espacios para espacio libre que brinda practicidad pero con el mejor estilo.Se puede mojar, liviana y resistente.Silla Master II Confort.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/178176-silla-master-confort.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/13/135a13a1df3bb16900a6090addaa9a0c693a0059_01.top.png ', 30, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla fija Forte natural Tramontina', 90, 45.5, 55.5, 'Silla Fabricada en madera maciza Jatoba de alta densidad y resistencia a la intemperie. Mueble imponente con terminación perfecta al más sensible toque de las manos..', 'https://sodimac.scene7.com/is/image/SodimacPeru/2363305?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/a1/a170b4fd59df0917b5a8e27011a7f8db0891f490_02.top.png ', 30, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla Madera Acacia Home Collection', 84, 55, 58, 'Silla de madera de acacia con brazos , perfecta para añadir a la decoración del exterior.', 'https://sodimac.scene7.com/is/image/SodimacPeru/1347446_1?$producto495$&id=RvyST1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/a1/a170b4fd59df0917b5a8e27011a7f8db0891f490_02.top.png ', 30, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Silla Lounge Cable Blanco', 65, 70, 66, 'Silla blanca de estructura de metal resistente. Modelo Lounge.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2578808_1?$producto495$&id=L6OS_1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/13/135a13a1df3bb16900a6090addaa9a0c693a0059_01.top.png ', 30, 1,'','Barroco');    
-- --Sillón----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Sillón individual Maldivas sin brazos Just Hc Garden', 65, 75, 90, 'Sillón blanco marrón modelo maldivas de fibra sintética.', 'https://sodimac.scene7.com/is/image/SodimacPeru/1214160_1?$producto495$&id=m0sSb2&fmt=jpg&fit=constrain,1&wid=493&hei=499 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/3e/3e73c553ebba0e0411bfa6988ba58da782de42f0_01.top.png ', 30, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Sillón Maldivas individual con brazos Just Hc Garden', 65, 75, 90, 'Sillón blanco marrón modelo maldivas de fibra sintética para una persona.', 'https://sodimac.scene7.com/is/image/SodimacPeru/1214187_1?$producto495$&id=HmlS12&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/84/840fd1af24ffabc6b4b65fbf9534af164fa2c284_01.top.png ', 30, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Sillón Reclinable Washington Asenti', 100.5, 60, 65, 'Sillón negro de espuma con estructura de madera y metal.', 'https://i.linio.com/p/6845d3ee272215c005733a1ba98d16ed-product.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/46/46ea54546696de71b5723a553ea2ffc1d8dc9b5f_01.top.png ', 30, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Sillón seccional RW para 5 personas Home Collection', 76, 232, 82, 'Sillón gris modelo RW de fibra sintética.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2399210?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/b8/b8360f6a97dff427de95d62c1e27b0ac279afaa8_01.top.png ', 30, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Sillón columpio azul Home Collection', 150, 168, 110, 'Sillón azul de acero con asientos de poliéster.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2115743_1?$producto495$&id=qD1SH0&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/bf/bf4bab446a7cc6b0ea4c300a1e00599e6420a90b_01.top.png ', 30, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Sillón columpio verde Home Collection', 163, 163, 120, 'Sillón verde con estructura de acero con asientos de poliéster, tapasol incorporado.', 'https://sodimac.scene7.com/is/image/SodimacPeru/208614X_1?$producto495$&id=mcURf2&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/5a/5a2173a18b55641cb1859be012216f0f196af7a4_00.top.png ', 30, 1,'','Barroco');    
-- -Cocina---
-- --Alacena----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Alacena Sevilla Home Collection', 198, 180, 52, 'Alacena blanco con avellana modelo Sevilla con tiradores de plástico cromado.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/2205017.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/03/03fa11518180d3634e1b97bf9ba7aca7230b5943_01.top.png ', 30, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Alacena Lucy Casa Bonita', 171, 91, 39, 'Alacena de modelo Lucy que combina con cualquier mueble. Puerta de vidrio. Espacios diferenciados para organización.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2658755_01?$producto495$&id=Q8FSn3&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/03/03fa11518180d3634e1b97bf9ba7aca7230b5943_01.top.png ', 30, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Alacena Lucy', 172, 61, 38, 'Alacena blanco con acabado de cubierta melamínica de Brasil.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/2444461.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/da/da39c0dd8e8c8510ffb7da5024b3c58f8fc36690_01.top.png ', 30, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Alacena 2 puertas Home Collection', 180, 60, 40, 'Alacena blanco de melamine con espaldar MDF de Chile.', 'https://sodimac.scene7.com/is/image/SodimacPeru/224411X?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/da/da39c0dd8e8c8510ffb7da5024b3c58f8fc36690_01.top.png ', 30, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Alacena multiusos blanca Pisopak', 120, 40, 32, 'Alacena de aglomerado de madera, ideal para cocina de espacio reducido. Cuenta con 4 espacios para organizar todo lo que se desee.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2593653_1?$producto495$&id=u1nSB0&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/da/da39c0dd8e8c8510ffb7da5024b3c58f8fc36690_01.top.png ', 30, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Alacena Ébano Home Collection', 192, 180, 52, 'La Cocina Ebano es completa. Tiene puertas de vidrio para acomodar los cristales, 2 puertas más altas y canones. Moderna y muy espaciosa.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2703769?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/13/13b4819303aaa2daab66ce2962c3ea868d508553_01.top.png ', 30, 1,'','Barroco');    
-- --Despensero----
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Despensero de luxe con ruedas Reyplast', 85.3, 49.8, 34.9, 'Despensero blanco de plástico de Perú.', 'https://sodimac.scene7.com/is/image/SodimacPeru/1251627_1?$producto495$&id=Xh6TV1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/da/da39c0dd8e8c8510ffb7da5024b3c58f8fc36690_01.top.png ', 30, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Despensero 4 niveles  Casa Bonita', 101, 33.7, 33.7, 'Despensero plateado organizador con ruedas multinivel de China.', 'https://http2.mlstatic.com/frutero-4-niveles-casa-bonita-producto-nuevo-D_NQ_NP_711434-MPE29577502052_032019-F.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/f3/f3dd5afea04f2b3fce14196c4a44dadf789b5894_01.top.png ', 30, 1,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Despensero Porta tabla y cuchillos de cocina Home Collection', 36, 41, 16.5, 'Despensero plateado de acero inoxidable de China.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/afe7554986ce8fe3c6edaf233bb8a24e.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/56/5652aba4e1a97204047d6b5c4e59fdab385073af_01.top.png ', 30, 2,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Canastilla con botellero Just Home Collection', 51.5, 34.5, 43.2, 'Despensero con rack de botellas y panero. Se desliza hacia delante gracias a sus rieles telescópicos.', 'https://www.maestro.com.pe/maestro/uploads/products/images/medium/2118289.jpg ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/56/5652aba4e1a97204047d6b5c4e59fdab385073af_01.top.png ', 30, 3,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Despensero de cocina linus transparente Interdesign', 5.8, 5.8, 7.6, 'Despensero transparente de China.', 'https://sodimac.scene7.com/is/image/SodimacPeru/525359_1?$producto495$&id=PD-Rj1&fmt=jpg&fit=constrain,1&wid=493&hei=493 ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/f3/f3dd5afea04f2b3fce14196c4a44dadf789b5894_01.top.png ', 30, 6,'','Barroco');    
INSERT INTO Mueble(nombre, alto, ancho, largo, descripcion, imagen, icono, id_sub_categoria, id_tienda_virtual,url,estilo) VALUES ( 'Organizador de cocina 2 lados Inter Design', 11, 17, 6.5, 'Despensero blanco de acrílico y silicona de China.', 'https://sodimac.scene7.com/is/image/SodimacPeru/2455374?$producto310$ ', 'https://d1g6u5sj133j06.cloudfront.net/cdb/renders/77/772b40cd81cc68e48baed6f2cfb08f704591e515_02.top.png ', 30, 1,'','Barroco');    




