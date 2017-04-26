CREATE DATABASE  IF NOT EXISTS `floresdebach` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `floresdebach`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: floresdebach
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

GRANT  SELECT,DELETE,ALTER,UPDATE,INSERT,LOCK TABLES ON floresdebach.* TO 'usuario'@'localhost' IDENTIFIED BY 'mipass';
--
-- Table structure for table `cuestionario`
--

DROP TABLE IF EXISTS `cuestionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuestionario` (
  `IDCuestionario` int(11) NOT NULL AUTO_INCREMENT,
  `DescripcionCuestionario` varchar(1000) DEFAULT NULL,
  `NumCuestionario` int(11) NOT NULL,
  PRIMARY KEY (`IDCuestionario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuestionario`
--

LOCK TABLES `cuestionario` WRITE;
/*!40000 ALTER TABLE `cuestionario` DISABLE KEYS */;
INSERT INTO `cuestionario` VALUES (1,'Cuestionario 1',1),(2,'Cuestionario 2',2),(3,'Para realizar el formulario, tienes que elegir las diez características que más se acerquen a tí o de las que desees deshacerte. El número entre paréntesis corresponde al remedio indicado. Para cada remedio existen dos características. Si se seleccionan dos características con el mismo índice este es más importante. Aunque debes tener en cuenta que este test es sólo aproximativo y de ninguna manera puede sustituir al estudio aproximativo de todos los remedios.',3);
/*!40000 ALTER TABLE `cuestionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flor`
--

DROP TABLE IF EXISTS `flor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flor` (
  `IDFlor` int(11) NOT NULL AUTO_INCREMENT,
  `NombreFlor` varchar(20) NOT NULL,
  `DescripcionFlor` varchar(2000) NOT NULL,
  PRIMARY KEY (`IDFlor`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flor`
--

LOCK TABLES `flor` WRITE;
/*!40000 ALTER TABLE `flor` DISABLE KEYS */;
INSERT INTO `flor` VALUES (1,'Agrimonia','Oculta emociones tortuosas, problemas graves, angustia inconsciente tras una máscara de alegría y despreocupación permanentes. Evita discusiones y busca armonía. Tendencia a las adicciones como el tabaco, drogas, alcohol, juego, trabajo, asumir riesgos, comida, compras, etc., como un mecanismo de escape a su tormento mental. Busca y necesita ser aceptado. Si se enferma bromea al respecto. Para personas que no expresan su verdadera preocupación, que se presentan alegres ante los demás. No solo mienten a los demás sino también a sí mismo. No les gustan los enfrentamientos.  Ponen al mal tiempo buena cara.'),(2,'Alamo Temblón','Miedo a lo sobrenatural, a lo desconocido o incierto, a situaciones imprecisas que siente que lo amenazan y a la muerte. Presagios. Temor vago e inexplicable. Agorafobia, claustrofobia.\nEsta esencia está indicada para personas que padecen presentimientos desagradables o temores inesperados, con sensaciones de desasosiego generalizado.\nPara el tratamiento básico en caso de: angustia, miedo generalizado o sin ninguna explicación, pánico interior, presentimientos desagradables, miedos indefinidos, imaginaciones angustiosas.\nTrata aquellos trastornos patológicos que van acompañados o son causados por presentimientos de temor o por miedos inexplicables. Recomendada para miedos y ansiedades de origen desconocido.  No sabes identificar muy bien a que se debe tu miedo\n'),(3,'Haya','Tiende a ser intolerante y a criticar despiadadamente. Juzga sin sensibilidad, ni comprensión. Arrincona a las personas. No soporta las ideas y costumbres diferentes a las suyas. Es arrogante. Depresión Reactiva. Esta flor de Bach está indicada para personas intolerantes y críticas. Son individuos que no soportan los errores de los demás. Se sienten superiores, suelen ser arrogantes. Les irritan las personas que utilizan muletillas en el lenguaje.\nBeech ayuda a aceptar a las personas, a ver su belleza, se vuelve tolerante.\n'),(4,'Centaurea','No puede decir no.  Reacciona exageradamente a los deseos de los demás, buscando complacerlos. Sacrifica sus propias necesidades para quedar bien con los demás. Su predisposición a servir es explotada por las personas. Se presta al dominio y abuso de otros. Su voluntad es débil. Sometimiento y complacencia a los demás. Se aconseja tomarla a personas dóciles, calladas, personas que no saben decir no a nada. Siempre quieren agradar a los demás. Tienen poca fuerza de voluntad. Se dejan influenciar por los demás, son débiles y sumisas.\n'),(5,'Ceratostigma','Busca la aprobación y el consejo de los demás pues no confía en su juicio, intuición, ni en sus decisiones y opiniones. Sus convicciones no son firmes. Cambia fácilmente de opinión. Es indeciso. Es para personas inseguras e indecisas. Personas que no confían en sus propias decisiones. Prefieren pedir opinión a los demás, aunque ellos estén capacitados para solucionar su problema. Se dejan influenciar por los demás y son muy manipulables.'),(6,'Cerasifera','Miedo a perder el control en sus actos, a cometer acciones terribles y a enloquecer. Pensamientos irracionales persistentes. Arrebatos incontrolables.\nEste remedio floral está relacionado con la sensación de miedo de perder el control, miedo de hacer cosas terribles.\nPara el tratamiento básico en caso de: exceso de presión psíquica o emocional, sentimientos desbordantes o de difícil control.\nEsta esencia resulta de mucha utilidad en los casos en donde la persona se da cuenta de que el control de su razón se ve amenazada con perderse con motivo de una vivencia con una enorme carga emocional, que ya no puede dominar sus sentimientos o que podría hacer algo que realmente no quiere y de lo que más tarde se arrepentiría. \nEsta flor de Bach la utilizaremos cuando haya miedo a perder la razón o el control, cuando se está al borde de una crisis nerviosa. Es especialmente recomendado en casos muy extremos en que la persona puede matarse o matar a otro, aunque en este caso lo mejor es ir a un buen terapeuta.\nTambién se recomienda en casos de furia, en casos de bulimia y anorexia que no pueden controlarse.\nPuede controlar el crecimiento de enfermedades.'),(7,'Brote de Castaño','Repite sus errores, porque no reflexiona sobre ellos, ni aprende de sus experiencias. Reincide. No escarmienta. Esta flor de Bach se recomienda a personas que siempre cometen los mismos errores, que les cuesta aprender la lección. Son inmaduros cuando se les presenta un problema.\nEl Dr. Bach hizo el siguiente escrito para describir el potencial positivo de esta flor: “Este remedio nos ayuda a aprovechar plenamente nuestras experiencias cotidianas, vernos a nosotros mismos y nuestros errores tal como lo hacen los demás.”'),(8,'Achicoria','Sobreprotege a sus seres queridos y los domina mediante una manipulación excesiva. Considera saber más que sus dependientes. Tiene una personalidad posesiva y egoísta. Se inmiscuye en los asuntos de los demás continuamente. Espera la devoción de los que sobreprotege y cuando no la obtiene se siente víctima. Después los persigue criticando. Posesividad, manipulación, demanda de agradecimiento y sumisión. Se recomienda a personas egoístas, déspotas y posesivas. Les gusta controlar a sus personas más cercanas.\nTambién se aconseja para los niños a los que les gusta llamar la atención y que normalmente son intolerantes.\n'),(9,'Clemátide','Soñador que evade la realidad. Su pensamiento es disperso. Difícilmente  está en el aquí y en el ahora. Distraído, presta poca atención a lo que sucede a su alrededor. Vive en un mundo de fantasía, como un mecanismo de escape a su infelicidad. Esta flor de Bach está recomendada para personas que se distraen fácilmente, que no ponen atención, que sueñan despiertas.\nEs ideal para niños que no se concentran en sus estudios.\nSon personas que no parecen tener interés en el mundo real, están ensimismados en su mundo.\n'),(10,'Manzano Silvestre','Flor de la limpieza para quien tiene la sensación de estar sucio o ser impuro. Baja autoestima y terror a contaminarse. Limpiadores compulsivos. Esta flor de Bach se aconseja a personas que se sienten impuras, se avergüenzan de su imperfección y falta de orden. Se preocupan más por cosas triviales que por una grave enfermedad.\nEstán muy pendiente de la limpieza, bien sea de la casa, de sus manos.\nCrab Apple se recomienda cuando la persona no se gusta, siente asco de sí misma.\n'),(11,'Olmo','Abrumado por sus responsabilidades. Cree o tiene exceso de responsabilidad. Piensa que no es capaz de cumplirlas. Este remedio es para personas que suelen ser fuertes pero a veces los sobreesfuerzos la sobrepasan, se sienten agobiadas por la situación.\nTeme no estar a la altura de las circunstancias, de no poder cumplir con sus ideales y esto la lleva a deprimirse.\n'),(12,'Genciana de Campo','Pesimismo, Depresión por causas conocidas. Escepticismo. Control débil ante la frustración. Fácil desánimo ante los obstáculos. Abandono de sí mismo. Esta flor es sobre todo para personas que tienen dudas, que están desanimadas, y que se sienten deprimidas por una causa conocida.\nCualquier dificultad los desalienta.\nA esta flor se la relación con la fe.\nEste remedio ayuda a superar las dificultades, a dominarlas, a superar los conflictos.\n'),(13,'Aulaga','Desesperado. Sin ninguna esperanza. Siente que ya no tiene caso nada. Perdida de fe y optimismo. Gorse es la flor de Bach que necesita la gente que ha perdido la esperanza.\nEsta flor de Bach da optimismo a quienes han abandonado la lucha en momentos de gran desesperación, como en casos de estados terminales, sin esperanza.\n'),(14,'Brezo','Ensimismado. Centrado en sí mismo. Necesita público que lo escuche. Habla excesivamente pero no escucha. La flor de Bach Heather se recomienda a personas que hablan mucho de sus problemas; ellos son el centro de la conversación, no dejan hablar a los demás. Son hipocondriacos, se centran en sí mismos, sóllo se preocupan por ellos mismos. No le gusta estar en soledad, siempre necesita compañía. Debido a sus temas monotemáticos y aburridos todos le huyen.\nAl tomar Heather aprendes a escuchar, a dialogar y a enfrentar el miedo a la soledad.\n'),(15,'Acebo','Celos, desconfianza, envidia, odio y rencor. Carece de compasión. Para quienes necesitan amor. Sienten desprecio, insatisfacción, deseo de venganza y de dañar. Las personas Holly son crueles, disfrutan con el sufrimiento ajeno. Las palabras que podrían identificar a estas personas son los celos, el odio y la envidia. Sufren mucho por dentro. Esta flor es ideal para los niños que sienten celos de sus hermanos.\n'),(16,'Madreselva','No vive el presente. Nostalgia, añoranza del pasado y de los buenos tiempos. Lo mejor de la vida ya paso. Es el remedio de los nostálgicos, que viven en el pasado, recuerdan a sus seres queridos perdidos, no dan importancia al presente ni al futuro.\nEs la flor de los conservadores. Siempre viven de los recuerdos.\nEsta flor proporciona la recuperación del presente y el seguir evolucionando.\n'),(17,'Hojarazo','Agotamiento mental por hastío. Esta flor de Bach se utiliza en personas con cansancio mental y físico, pero sobre todo para las que tienen cansancio físico.\nSon personas que al despertar se sienten cansadas, no se encuentran con fuerzas para desarrollar sus tareas diarias, tienen falta de ánimo, de interés.\nNecesitan un estimulante para enfrentarse al nuevo día, bien sea café, vitaminas, etc.\n'),(18,'Impaciencia','Soledad de quien no puede estar acompañado porque marcha de prisa. Irritabilidad.   Según la doctora Stern esta flor de Bach actúa más sobre lo físico que sobre lo mental.\nTodo lo hacen muy rápido, les irritan las personas lentas. No son tolerantes con los demás.\nCuando se ponen enfermos quieren que todo se solucione rápidamente.\nLa persona que toma Impatiens se relaja, sin embargo, su actividad mental sigue trabajando.\nEsta flor de Bach es aconsejable en personas que se irritan con facilidad.\n'),(19,'Alerce','Sentimiento de inferioridad. Espera fracasar. Incapacidad, autoanulación.  La flor de Bach Larch la deben tomar personas que no tienen confianza en sí mismas.\nEsa falta de confianza las hace sentirse inferiores a los demás y esto le llega a deprimir.\nNo se creen capaces de encontrar un buen trabajo y creen que fracasaran en todo.\n'),(20,'Mimulo','Miedo a lo desconocido. A situaciones concretas, definibles y  cotidianas. Timidez. Introvertido.\nEsta esencia está indicada para personas que a veces tienen miedo o están temerosos de modo general. \nPara el tratamiento básico en caso de: tendencia a asustarse con demasiada rapidez o en exceso. En todos los trastornos patológicos que van acompañados o son causados por temor o miedo a cosas concretas, tangibles.\nLas típicas personas mímulus siempre están temiendo algo por eso su vida se encuentra muy limitada. Esta esencia ayuda a tratar los miedos reales, estimula la capacidad de evaluar correcta y racionalmente los peligros. Ayuda muy eficazmente a las personas tímidas, en general se administra como tratamiento adicional siempre que una enfermedad esté causada o intensificada por el miedo. \nAconsejada a personas con miedo a cosas conocidas. Miedos identificados, reales y tangibles. \n'),(21,'Mostaza','Depresión, tristezas de causas desconocidas que aparecen y desaparecen sin motivo. Melancolía. “Las hojas de mostaza tienen la virtud de renovar el espíritu, eliminar la melancolía y aclarar la mente”.\nEsta flor se utiliza para la tristeza profunda sin causa conocida, como si una nube profunda nos cayese, una nube profunda y negra. La mostaza nos da claridad y seguridad.\nTambién es recomendada cuando hay desequilibrios emocionales profundos.\nDurante la menopausia ayuda a regular las hormonas y a atenuar los sofocones.\n'),(22,'Roble','Lucha desesperadamente contra la corriente sin descanso. Dedicación obsesiva al trabajo. Excesivo sentido del deber, altruismo sin medida. Las personas que necesitan esta flor de Bach jamás se rinden, son fuertes, valientes, concienzudas, nunca pierden la esperanza. Nunca dejan ver a los demás su cansancio y debilidad. Cuando se jubilan o pierden el trabajo se deprimen'),(23,'Olivo','Agotamiento total físico y mental. Esta flor de Bach se utiliza para el cansancio, para el agotamiento de la mente y del cuerpo, sobre todo cuando este agotamiento va acompañado de sufrimiento (estrés, mucho trabajo, etc.). La persona que necesita esta flor tiene siempre mucho sueño, necesita dormir mucho.\nCuando se toma esta flor proporciona energía, fuerza y vitalidad para seguir luchando.\n'),(24,'Pino','Desesperación por sentimiento de culpa y autoreproche. Arrepentimiento excesivo. Autoacusación. Las personas en estado Pine tienen problemas consigo mismos, no como en estado Larch que tiene problemas con el mundo.\nSuelen ser personas obsesivas y masoquistas.\nSon muy humildes y por eso siempre se disculpan ante los demás. Cuando caen enfermas piensan que es porque se lo merecen.\n'),(25,'Castaño Rojo','Miedo a que suceda algún daño a los seres queridos. Excesiva preocupación por ellos.\nActúa muy eficazmente en las personas que sienten miedo excesivo por los demás.\nMuchas personas con falta de confianza en ellas mismas proyectan sus miedos, sus angustias y muestran una preocupación extrema por los demás, preferentemente sus seres queridos.\nPara el tratamiento básico de: preocupación enfermiza, compasión opresiva, exceso de atención hacia los demás. Es otra de las flores de Bach que actúan en casos de miedo, sobre todo miedo por los familiares y amigos, miedo a que les ocurra alguna desgracia. No pueden evitar su preocupación por los problemas de los demás y temen lo peor para ellos (familiares y amigos).\n'),(26,'Heliantemo','Pánico y terror paralizante. Estados de angustia agudos. Pesadillas.\nEsta esencia floral está indicada para las situaciones de pánico o de shock emocional.\nProporciona tranquilidad, es de mucha utilidad en caso de accidentes o ante hechos violentos repentinos, ya que actúa sobre el bloqueo producido, ya sea psíquico o físico, y restaura la coordinación normal de las funciones mentales y vegetativas.\nEstá especialmente indicado para aquellas personas con tendencia al pánico, habilidad psíquica y miedo latente a la vida.\nEs una de las esencias que componen el remedio de rescate o urgencia del sistema Bach. Esta flor forma parte del Rescue Remedy (remedio rescate o remedio urgente) y por ello es muy importante. La flor de Bach Rock Rose se utiliza en situaciones de pánico y fobias extremas.\nTambién se recomienda esta flor de Bach en situaciones de estrés y para personas que tienen pesadillas, cuando se debe a un peligro como tener un accidente o haber estado a punto de tenerlo, también ante una catástrofe natural.\n'),(27,'Agua de Roca','Perfeccionismo. Severidad, Rigidez consigo mismo.\nEs el único remedio que no pertenece al mundo vegetal, sino al agua pura de manantial.\nLos que necesitan tomar esta flor se Bach son personas que se reprimen, que quieren ser perfectas, y que a su vez quieren ser un modelo a seguir por los demás. Son seres disciplinados y estrictos. Comen solo para vivir, poca cantidad y sano.'),(28,'Scleranthus','Indecisión entre dos extremos opuestos. Inestabilidad, ambivalencia. Es la flor de la indecisión, de la duda, les resulta difícil tomar decisiones, sobre todo cuando se les presenta elegir entre dos posibilidades.\nEs de gran ayuda en personas con problemas de equilibrio, y también para las que sufren mareos al viajar.\nEsta flor proporciona equilibrio, certidumbre y decisión.\n'),(29,'Estrella de Belén','Secuelas de traumatismos físicos y mentales. Impacto psicológico. También llamada Estrella de Belén, se relaciona con la estrella de David.\nSe recomienda a personas que se encuentran en estado de Shock, bien sea mental o físico.\nEl estado de Shock lo puede desencadenar un accidente, el recibir una mala noticia, un susto, etc.\nAl tomar esta flor de Bach recibes consuelo y alivio. Actúa como sellador en los estados de Shock. Es una de las flores que forman parte del Remedio Rescate (Rescue Remedy).\n'),(30,'Castaño Dulce','Desesperación profunda. Sienten que han llegado al límite del sufrimiento. Angustia. Sufrimiento extremo. Cuando la angustia de la persona es extrema se aconseja esta flor de Bach, cuando se siente al límite de su resistencia.\nEl Dr. Bach la describió como:\n“La desesperación extrema de aquellos que han llegado al límite de su resistencia”.\nPara la persona en estado de bloqueo cada minuto es una eternidad. Ha perdido la esperanza por completo.\nSiente que Dios le ha abandonado.\nPero cuando toma esta flor de Bach se siente de vuelta a la vida.\n'),(31,'Verbena','Fanatismo. No comparte la carga. Fortaleza excesiva. Exceso de entusiasmo.\nLos que la necesitan son personas excesivamente entusiastas. Este remedio es aconsejado a vendedores y profesores.\nA veces tienden hacia el fanatismo y la exageración para intentar convencer a los demás.\nCuando tienen un proyecto entre manos, no se relajan, a veces no duermen, no comen.\nSon personas audaces y creativas.\n'),(32,'Vid','Avidez por el poder. Dominador. “Pequeño Tirano”. Inflexibilidad. \nSe sienten superiores a los demás, son dominantes, imponen su voluntad. Su inflexibilidad le puede llevar a padecer dolores musculares. Son crueles, ordenan sin dar explicaciones pues siempre se creen en poder de la razón.\nEn estado positivo ayudan a los demás, son personas sabias y a la vez comprensivas y cariñosas.\n'),(33,'Nogal','Indecisión para iniciar nuevas etapas o manejar situaciones difíciles. Inconstancia. Es necesario su tratamiento en procesos de adaptación, en cambios que se presentan en la vida, como mudanzas divorcios, jubilación y menopausia.\nTambién para personas que trabajan en tareas en las que no se sienten realizados. Aumenta la adaptación a lo nuevo.\n'),(34,'Violeta de Agua','Soledad de los orgullosos. Distanciamiento por sentimiento de superioridad. Reserva y distancia afectiva. Las personas que necesitan esta flor de Bach son orgullosas y reservadas viven en una torre de cristal. No sirven para trabajar en equipo. Son autosuficientes. A veces su orgullo les hace sentirse aislados. Hablan poco y no les gusta comunicarse con los demás.\n'),(35,'Castaño Blanco','Rumiación torturante de ideas. Diálogos internos. Congestión mental. Los pacientes que necesitan esta flor de Bach se sienten inquietos, su preocupación les debilita el ánimo.\nNo se concentran por estar siempre con los mismos pensamientos.\nReviven continuamente en su mente momentos pasados que han sido desagradables. Dan vueltas sobre las mismas cosas, se les suele decir que parece un disco rayado.\nTomar esta flor de Bach proporciona claridad mental, paz y sosiego.\n'),(36,'Avena Silvestre','Falta de metas. Descontento e incertidumbre por desconocer la misión de la vida. Insatisfacción. Desorientación. Búsqueda de propósito. Se recomienda a personas indecisas que no saben qué dirección tomar. Personas que tienen mucho talento pero no saben qué hacer. Se sienten insatisfechos por no encontrar su misión en esta vida, por no encontrar una meta.\n'),(37,'Rosa Silvestre','Desinterés, apatía, resignación, capitulación. Falta de motivación. Existencia monótona, apatía sin tristeza aparente. Esta flor la necesitan las personas apáticas, las personas muy pasivas, las personas a las que les falta pasión.\nSon seres que se resignan fácilmente ante situaciones desfavorables.\nSon personas débiles o que han pasado algún trauma o depresión. Han perdido la alegría de vivir.\nWild Rose proporciona energía, interés en la vida y en el trabajo. Sentimiento de libertad.\n'),(38,'Sauce','Se siente víctima del destino. Resentimientos. Amargura, queja, autocompasión. \nLa persona que necesita tomar la flor de Bach Wilow se queja amargamente, tiene mucho resentimiento y se compadece de sí mismo. La culpa de las circunstancias siempre la tienen los demás. Envidia la fortuna de los demás. Esta flor nos proporciona el saber perdonar, nos convierte en personas positivas y nos ayuda a asumir nuestra culpa en vez de adjudicársela a los demás.\n');
/*!40000 ALTER TABLE `flor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flor_receta`
--

DROP TABLE IF EXISTS `flor_receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flor_receta` (
  `Dosis` int(11) NOT NULL,
  `IDFlor` int(11) NOT NULL,
  `IDReceta` int(11) NOT NULL,
  PRIMARY KEY (`IDFlor`,`IDReceta`),
  KEY `IDReceta` (`IDReceta`),
  CONSTRAINT `flor_receta_ibfk_1` FOREIGN KEY (`IDFlor`) REFERENCES `flor` (`IDFlor`),
  CONSTRAINT `flor_receta_ibfk_2` FOREIGN KEY (`IDReceta`) REFERENCES `receta` (`IDReceta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flor_receta`
--

LOCK TABLES `flor_receta` WRITE;
/*!40000 ALTER TABLE `flor_receta` DISABLE KEYS */;
/*!40000 ALTER TABLE `flor_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `IDPaciente` int(11) NOT NULL AUTO_INCREMENT,
  `NombrePaciente` varchar(60) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `Mail` varchar(60) NOT NULL,

  `Telefono` varchar(19) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Edad` int(11) NOT NULL,
  `DescripcionPaciente` varchar(1000) DEFAULT NULL,
  `IDTerapeuta` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDPaciente`),
  KEY `IDTerapeuta` (`IDTerapeuta`),
  CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`IDTerapeuta`) REFERENCES `terapeuta` (`IDTerapeuta`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'PATRICIA','Femenino','daniela@daniela.com','5555545452','lkj',21,NULL,3);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente_respuesta`
--

DROP TABLE IF EXISTS `paciente_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente_respuesta` (
  `IDPaciente` int(11) NOT NULL,
  `IDRespuesta` int(11) NOT NULL,
  PRIMARY KEY (`IDPaciente`,`IDRespuesta`),
  KEY `IDRespuesta` (`IDRespuesta`),
  CONSTRAINT `paciente_respuesta_ibfk_1` FOREIGN KEY (`IDPaciente`) REFERENCES `paciente` (`IDPaciente`),
  CONSTRAINT `paciente_respuesta_ibfk_2` FOREIGN KEY (`IDRespuesta`) REFERENCES `respuesta` (`IDRespuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente_respuesta`
--

LOCK TABLES `paciente_respuesta` WRITE;
/*!40000 ALTER TABLE `paciente_respuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta` (
  `IDPregunta` int(11) NOT NULL AUTO_INCREMENT,
  `DescripcionPregunta` varchar(200) NOT NULL,
  `IDCuestionario` int(11) DEFAULT NULL,
  `NumPregunta` int(11) NOT NULL,
  PRIMARY KEY (`IDPregunta`),
  KEY `IDCuestionario` (`IDCuestionario`),
  CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`IDCuestionario`) REFERENCES `cuestionario` (`IDCuestionario`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,'¿Sientes preocupaciones e inquietudes y sin embargo tiendes a disimular y a aparentar buen humor a pesar de los sentimientos interiores?',1,1),(2,'¿Prefieres ceder antes que enfrentarte a una discusión por la angustia que éstas te producen?',1,2),(3,'¿Cuándo te sientes mal prefieres llenarte de actividades con el fin de no enfrentarte al silencio de la soledad?',1,3),(4,'¿Tienes la sensación de que va a ocurrir algo sin saber de qué se trata?',1,4),(5,'¿Te asalta de pronto en cualquier momento una sensación ansiosa que llega a veces a asustarte?',1,5),(6,'¿Sientes una especie de miedo impreciso del que no hablas con nadie?',1,6),(7,'¿Te irrita la gente con facilidad?',1,7),(8,'¿La actitud de los demás hace que se dispare tu mal humor y tiendes a criticar su negligencia?',1,8),(9,'¿Sientes que te gustaría ser más tolerante, que necesitas ver más belleza y bien en el ambiente que te rodea?',1,9),(10,'¿Te cuesta enormemente negarte a hacer algo que te han pedido aunque realmente no quieras o no te apetezca hacerlo?',1,10),(11,'¿Antepones en general las necesidades de los demás a las tuyas realizando mas trabajo del que te corresponde?',1,11),(12,'¿Te esfuerzas en exceso por agradar, ser amable y servicial?',1,12),(13,'¿Pides consejo a unos y a otros antes de tomar una determinación?',1,13),(14,'¿Dudas excesivamente de tu propio criterio?',1,14),(15,'¿Te falta confianza en ti mismo para tomar tus propias decisiones?',1,15),(16,'¿Te falta autocontrol y así lo sientes?',1,16),(17,'¿Te estas sintiendo como “una bombona de butano” a punto de explotar?',1,17),(18,'¿Te pasa por la cabeza hacer una locura de la que luego puedas arrepentirte?',1,18),(19,'¿Tiendes a cometer los mismos errores aunque hayas pasado ya por una experiencia parecida?',1,19),(20,'¿Te da la sensación de no aprender en la vida?',1,20),(21,'¿Las personas allegadas te dicen que no te enteras de las cosas?',1,21),(22,'¿Necesitas estar pendiente y cerca de tus seres queridos?',1,22),(23,'¿Crees saber lo que los demás necesitan y tú se lo das aunque no te lo pidan?',1,23),(24,'¿Disfrutas ayudando a corregir a tu gente lo que está mal?',1,24),(25,'¿Eres idealista y soñador hasta el punto de tener un mundo de imaginación al margen de todo lo demás?',1,25),(26,'¿Crees que vendrán tiempos mejores en el futuro y la mente se dispersa en ellos?',1,26),(27,'¿Te sientes últimamente adormilado y prefieres dormir a realizar otras actividades?',1,27),(28,'¿Te gustaría sentirte plenamente limpio y purificado?',1,28),(29,'¿Te acomplejan detalles de tu cuerpo hasta el punto de desear verte libre de ellos?',1,29),(30,'¿Cuándo un tratamiento no funciona como esperabas, te sientes abatido?',1,30),(31,'¿Eres una persona eficaz que siempre funciona bien pero en estos momentos te da la sensación de no poder con todo?',1,31),(32,'¿Atraviesas un momento de depresión por que crees que la tarea que has emprendido es demasiado difícil y te sobrepasa?',1,32),(33,'¿Te dedicas a tu actividad por vocación o de algún modo esperas hacer algo importante a nivel colectivo?',1,33),(34,'¿Estas desanimado por eso que esperabas y que no ha salido adelante?',1,34),(35,'¿Tiendes a ver el vaso medio vacío?',1,35),(36,'¿Aunque las cosas vayan saliendo adelante te hundes ante el mínimo obstáculo y contratiempo?',1,36),(37,'¿Has perdido la fe completamente y te da la sensación de que ya no se puede hacer nada por ti?',1,37),(38,'¿Piensas que la suerte está echada y has tirado la toalla?',1,38),(39,'¿Aunque te gustaría equivocarte y estás dispuesto a probar tratamientos por no defraudar a los demás estás seguro de que va a ser para nada?',1,39),(40,'¿Necesitas hablar de tus molestias y problemas con la gente sin importarte mucho quien sea?',1,40),(41,'¿Necesitas la compañía de los demás y no soportas estar solo?',1,41),(42,'¿Tienes la sensación de que las personas no te prestan la atención que tú necesitas?',1,42),(43,'¿Te sientes muy dolido con alguien a quien quieres hasta el punto de pensar en darle su merecido?',1,43),(44,'¿Has perdido la confianza en los demás y ahora no te fías de nadie o de casi nadie?',1,44),(45,'¿Te da la sensación de que los demás tienen mas suerte que tú y eso te genera un sentimiento de estar apartado?',1,45),(46,'¿Revives como si aún existieran experiencias pasadas que no te permiten estar aquí y ahora?',1,46),(47,'¿Sientes añoranza por algo, por alguien, por algún lugar donde estuviste o por alguien del pasado?',1,47),(48,'¿Lo que sucedió en el pasado tiene mas relevancia y fuerza que lo está sucediendo ahora?',1,48),(49,'¿Dudas de tu capacidad para afrontar el día porque las actividades cotidianas se te hacen muy cuesta arriba?',1,49),(50,'¿Tienes sensación de rutina y monotonía y eso hace que te cueste empezar el día?',1,50),(51,'¿Te faltan fuerzas mentales o físicas para sobrellevar el día?',1,51),(52,'¿La lentitud te pone de mal humor e incluso llega a irritarte?',1,52),(53,'¿Eres de acción rápida y los retrasos te incomodan demasiado?',1,53),(54,'¿Tienes fama de arreador entre la gente?',1,54),(55,'¿Sientes de algún modo que no haces nada bien?',1,55),(56,'¿Crees que los demás poseen en general más capacidades que tú?',1,56),(57,'¿Es frecuente que esperes el fracaso en tus empresas y por eso decidas no intentarlo?',1,57),(58,'¿Te consideras una persona tímida y vergonzosa?',1,58),(59,'¿Tienes miedo a algo conocido, arañas, perros o incluso a la gente?',1,59),(60,'¿Te guardas los miedos para ti y tiendes a no hablar de ellos con nadie?',1,60),(61,'¿Tienes temporadas de tristeza repentina injustificable?',1,61),(62,'¿Sientes una nube negra encima de ti que te roba la alegría?',1,62),(63,'¿Te es imposible mostrarte alegre ante los demás?',1,63),(64,'¿Tiendes a luchar en las cosas cotidianas de la vida por muchos obstáculos que aparezcan?',1,64),(65,'¿El mayor inconveniente que ves en la enfermedad es que te impide seguir cumpliendo con tus obligaciones?',1,65),(66,'¿Es difícil que pierdas la esperanza o te des por vencido?',1,66),(67,'¿Has tenido una temporada de gran desgaste bien sea mental o físico?',1,67),(68,'¿La vida cotidiana te resulta ahora un esfuerzo insufrible debido a tu falta de energía?',1,68),(69,'¿Tu cansancio no te permite disfrutar de nada por muy apetecible que parezca?',1,69),(70,'¿Tienes tendencia a pensar que todo lo que haces o dices puede mejorarse?',1,70),(71,'¿Sueles autoculparte aunque las cosas no hayan salido tan mal?',1,71),(72,'¿Te sientes responsable hasta de los errores ajenos?',1,72),(73,'¿Te resulta difícil no temer por los demás?',1,73),(74,'¿Te inquieta pensar que pueda pasarles algo a tus seres queridos?',1,74),(75,'¿El miedo a que los otros sufran te hace olvidarte de ti mismo?',1,75),(76,'¿Te sientes excesivamente asustado o atemorizado?',1,76),(77,'¿Tienes tendencia a que el miedo te paralice?',1,77),(78,'¿Sientes que tu situación es desesperada y empiezas a sentir pánico?',1,78),(79,'¿Te consideras metódico y disciplinado?',1,79),(80,'¿Estás seguro de que tu forma de actuar sirve de ejemplo a otras personas?',1,80),(81,'¿Consideras que hay que ser estrictos con las normas para evolucionar espiritualmente?',1,81),(82,'¿Te cuesta decidirte entre dos opciones?',1,82),(83,'¿Es algo habitual en ti que hoy pienses una cosa y mañana otra?',1,83),(84,'¿Vives interiormente tus dudas sin compartirlas con nadie?',1,84),(85,'¿Has tenido una vivencia que no has podido integrar?',1,85),(86,'¿Sientes una verdadera angustia por algo muy impactante e inesperado?',1,86),(87,'¿Necesitas sobreponerte por algo que te ha bloqueado?',1,87),(88,'¿Sientes una angustia insoportable?',1,88),(89,'¿Te sientes al límite de tus fuerzas?',1,89),(90,'¿Te da la sensación de que ya no puedes mas?',1,90),(91,'¿Te consideras una persona de ideas fijas?',1,91),(92,'¿Intentas convencer a los demás cuando crees tener razón?',1,92),(93,'¿Eres una persona llena de entusiasmo y dinamismo?',1,93),(94,'¿Te consideras una persona muy capaz y segura de ti misma?',1,94),(95,'¿La gente a tu alrededor se queja de ti por ser muy organizador?',1,95),(96,'¿Tiendes a dar instrucciones incluso cuando estas enfermo?',1,96),(97,'¿Estas en una situación de cambio y te está costando adaptarte?',1,97),(98,'¿Las opiniones de los demás te alejan del camino que realmente querrías seguir?',1,98),(99,'¿Necesitas constancia y firmeza?',1,99),(100,'¿Prefieres la soledad al bullicio?',1,100),(101,'¿Te consideras una persona independiente, capaz y segura de ti?',1,101),(102,'¿Crees que nadie debe inmiscuirse en los asuntos de nadie?',1,102),(103,'¿Das vueltas y mas vueltas a una idea de la que te quieres librar?',1,103),(104,'¿Los pensamientos repetitivos llegan a agobiarte?',1,104),(105,'¿Te cuesta concentrarte porque las ideas indeseadas surgen una y otra vez?',1,105),(106,'¿Procuras disfrutar de la vida intensamente y deseas adquirir toda la experiencia posible porque sientes que algo importante que aún no ha llegado te espera?',1,106),(107,'¿Tienes la sensación de no encontrar lo que andas buscando?',1,107),(108,'¿Te sientes frustrado por que al final de las experiencias tienes la sensación decepcionante de haber perdido el tiempo?',1,108),(109,'¿Consideras que eres una persona resignada?',1,109),(110,'¿Te tomas la vida tal y como viene?',1,110),(111,'¿Cuándo algo no sale como tenías previsto, te encoges de hombros y piensas que ya pasará?',1,111),(112,'¿Te quejas mucho últimamente de la suerte que te ha tocado vivir?',1,112),(113,'¿Te amarga no conseguir los resultados que esperas?',1,113),(114,'¿Sientes que has perdido interés en cosas de la vida que antes disfrutabas?',1,114),(115,'¿Suele sentir miedo, terror o pánico frente a determinadas situaciones? ',2,1),(116,'¿Tiene pesadillas con cierta regularidad? ',2,2),(117,'¿Tiene miedos específicos y concretamente identificables que quisiera superar? ',2,3),(118,'¿Es tímido o asustadizo?  ',2,4),(119,'¿Es compulsivo o tiene impulsos a hacer cosas que reconoce que están mal, pero le es difícil controlarse?  ',2,5),(120,'¿Teme hacerse daño o agredir a otros?  ',2,6),(121,'Aunque no sea de noche, ¿se siente inquieto por algún temor al que no le encuentra explicación?  ',2,7),(122,'¿Se despierta con la sensación de que algo malo puede suceder, o tiene una sensación de aprensión y presagio?  ',2,8),(123,'¿Está tan ligado a sus seres queridos que lo que les pasa a ellos siente como que le pasara a usted?  ',2,9),(124,'¿Teme que algo malo pueda pasarle a aquellos cercanos a usted?  ',2,10),(125,'Después de pedir y recibir consejo de los demás se siente confundido frente a una decisión, modificándola según la última recomendación?  ',2,11),(126,'¿Se siente inseguro frente a cómo piensa y revisa sus decisiones en relación con los puntos de vista de otros?  ',2,12),(127,'¿Suele oscilar entre dos posibilidades, pero trata de encontrar la solución solo, sin que nadie lo influya?  ',2,13),(128,'¿Reacciona rápido a las provocaciones y enseguida pierde su equilibrio interior? ',2,14),(129,'En caso de estar deprimido, ¿sabría por qué? ',2,15),(130,'¿Es muy duro para usted empezar nuevamente cuando se le presentan dificultades?  ',2,16),(131,'¿Siente que no termina de satisfacerlo su trabajo aunque esté trabajando en algo que eligió? ',2,17),(132,'¿Ha tratado de buscar en muchas direcciones diferentes en la vida, pero nada parece satisfacerlo?  ',2,18),(133,'¿Se encuentra desanimado y ya ni se anima a esperar algún cambio en su situación?  ',2,19),(134,'¿Piensa que ya no se pueden cambiar las cosas para mejorar algunas circunstancias o situaciones de su vida?  ',2,20),(135,'¿Cuando se despierta en la mañana se siente cansado y le cuesta levantarse?  ',2,21),(136,'¿Siempre siente que todo es demasiado pero después logra hacerlo igual?  ',2,22),(137,'¿Lo cotidiano no le interesa demasiado? ¿Le da demasiado lugar a la fantasía en su vida? ',2,23),(138,'¿Está distraído o su atención vuela con facilidad, siéndole difícil concentrase? ',2,24),(139,'¿Muchas veces se pone a pensar qué lindo sería hacer o poder hacer que determinadas cosas del pasado no hubieran ocurrido? ',2,25),(140,'¿Se encuentra como atrapado entre vivir el presente y rememorar su pasado?',2,26),(141,'¿Usted diría que la vida le enseñó que uno debe conformarse con su destino? ',2,27),(142,'¿Está resignado a su situación actual, haciendo muy poco esfuerzo para mejorar cosas y disfrutar? ',2,28),(143,'¿Se cansa más fácilmente que las demás personas a su alrededor? ',2,29),(144,'¿Está atravesando o pasó recientemente por alguna enfermedad o alguna situación personal que lo dejó agotado? ',2,30),(145,'¿Hay acontecimientos desagradables que se le repiten en sus pensamientos sin parar? ',2,31),(146,'¿Tiene preocupaciones o discusiones mentales que van y vuelven? ',2,32),(147,'¿Le cuesta aprender? ¿Repite siempre los mismos errores? ',2,33),(148,'¿Hay alguna situación en particular recurrente en su vida que le gustaría superar?  ',2,34),(149,'¿Se encuentra con que está triste y deprimido, aparentemente sin razón y que esto se va tan repentinamente como vino? ',2,35),(150,'¿Está melancólico y aislado de la vida y de las sensaciones, sin ganas ni voluntad para hacer nada, pero no sabe por qué está así? ',2,36),(151,'¿Evita cargar a otros con sus problemas e intenta complacer a los demás con tal de evitar peleas o discusiones? ',2,37),(152,'¿Se encuentra angustiado y siente como una opresión en el pecho, nudo en la garganta o dolor en la boca del estómago? ',2,38),(153,'¿Siempre termina haciendo el trabajo que dejan los demás? ',2,39),(154,'¿Le cuesta decir que no? ¿Diría que se somete en las relaciones? ',2,40),(155,'¿Es muy sensible y se siente herido con facilidad?',2,41),(156,'¿Se encuentra actualmente en alguna etapa de transición o situación de cambio (evolutivo, afectivo, laboral, etcétera.) ',2,42),(157,'¿Siente celos, odio, rabia, envidia?',2,43),(158,'¿Le cuesta sentir compasión hacia otros? ',2,44),(159,'¿Le resulta difícil incluirse en las conversaciones de los demás y por eso se retrae?  ',2,45),(160,'¿Prefiere trabajar sólo protegiéndose así de que interfieran en sus cosas o interferir en las cuestiones de otros?  ',2,46),(161,'¿No puede quedarse demasiado tiempo sentado en una silla por ser demasiado inquieto? ',2,47),(162,'¿Hace cosas apurado, corriendo de un lado a otro o de una situación a otra rápidamente? ',2,48),(163,'¿Muchas veces tiene el impulso interior de hablar con todo el mundo sobre usted? ',2,49),(164,'¿Necesita conducir las conversaciones hacia sus propios asuntos y le cuesta cortarlas aún cuando su interlocutor le diga que se tiene que ir? ',2,50),(165,'¿Se siente inferior, y que los demás son más capaces y calificados que usted? ',2,51),(166,'¿Le falta confianza en usted mismo? ',2,52),(167,'¿Es duro con usted cuando se equivoca o no cumple con las metas que se ha fijado, reprochándoselo? ',2,53),(168,'¿Son pocas las veces que se pone contento con sus logros, sintiendo que lo podía haber hecho mucho mejor?  ',2,54),(169,'¿Se siente sobrepasado por las responsabilidades y no sabe ya por donde empezar?  ',2,55),(170,'¿Se encuentra abrumado por su trabajo, y a pesar de ser capaz siente que tomó más obligaciones de las que puede cumplir?  ',2,56),(171,'¿Siente que llegó al límite de lo que puede soportar y que sólo queda frente a usted la destrucción total? ',2,57),(172,'¿Siente que su situación no tiene salida, no sabe cómo continuar? ',2,58),(173,'¿Ha tenido una pérdida importante (de cualquier tipo) recientemente? ',2,59),(174,'¿Siente que alguna operación o accidente pasados son responsables de su situación actual? ',2,60),(175,'¿Siente que es injusto todo lo que la vida le ha privado?  ',2,61),(176,'¿Siente rencor o resentimiento por aquellos que cree que lo dañaron? ',2,62),(177,'¿Tiende a realizar sus proyectos no tomando demasiado en cuenta sus propias necesidades o cansancio, así como las necesidades de los que están cerca suyo? ',2,63),(178,'¿Trabaja con tanta intensidad que recién cuando afloja un poco se da cuenta de que le duele el cuello o los hombros por lo contracturado que está?  ',2,64),(179,'¿Es compulsivo acerca de la limpieza, a veces en forma extrema? ¿Alrededor suyo tiene que estar pulcro y ordenado? ',2,65),(180,'¿Se preocupa por pequeños problemas físicos cómo granos, manchas y no tanto por algo más importante? ',2,66),(181,'¿Les hace notar a los que quiere todo lo que hace por ellos?  ',2,67),(182,'¿Se ofende y le duele que no comprendan o correspondan los esfuerzos que usted hace queriendo lo mejor para todos? ',2,68),(183,'¿Es muy sensible a las injusticias luchando por los principios en los que usted cree? ',2,69),(184,'¿A veces se pone terco en algunas cosas y le cuesta relajarse y aflojar? ',2,70),(185,'¿Cuando trabaja con otra gente, siempre termina dirigiendo el grupo?',2,71),(186,'¿Tiene dificultades con el mandar y el obedecer? ',2,72),(187,'¿Le resulta difícil soportar la estupidez de la gente? ',2,73),(188,'¿Le dicen que es demasiado crítico y que debería ser más tolerante? ',2,74),(189,'¿Es rígido y exigente consigo mismo y se priva o prohíbe algunas cosas? ',2,75),(190,'¿Suele tener dolores de columna o lumbalgias? ',2,76),(191,'Me mantengo exactamente en mis principios (4). ',3,1),(192,'A menudo tengo un miedo terrible ante determinadas ideas (35). ',3,2),(193,'No puedo seguir, estoy agotado (31).',3,3),(194,'Hago mucho por mis seres queridos y quisiera que estuvieran conmigo (2). ',3,4),(195,'Soy una persona miedosa (24).',3,5),(196,'A menudo me imagino algo que luego no sucede (5).',3,6),(197,'Costantemente me preocupo por los demás (13).',3,7),(198,'A menudo soy artificial y me encuentro agarrotado (3). ',3,8),(199,'No tengo ninguna confianza en mi propia opinión (16). ',3,9),(200,'A menudo me resulta muy difícil decidir entre dos alternativas (19). ',3,10),(201,'Me desanimo con rapidez y desisto ante las dificultades (20). ',3,11),(202,'He tenido una vivencia que no he logrado superar (24). ',3,12),(203,'Debo ser más tolerante (21).',3,13),(204,'Ya no tengo esperanzas (7). ',3,14),(205,'Estoy amargado porque me han tratado mal (34). ',3,15),(206,'Tiendo al perfeccionismo y la exageración (36). ',3,16),(207,'A menudo comienzo varias cosas al mismo tiempo, tengo demasiados intereses (19). ',3,17),(208,'Con frecuencia, el día o el trabajo se me presentan como una montaña (22). ',3,18),(209,'Estoy buscando mi profesión (8). ',3,19),(210,'No tengo la sufieciente entereza y por eso tiendo al pánico (35). ',3,20),(211,'Nunca me rindo por grande que sean las dificultades (33). ',3,21),(212,'Me gusta enseñar a los demás (37). ',3,22),(213,'Mi vida me interesa poco porque casi no me ofrece nada (17) ',3,23),(214,'Mis pensamientos se van a menudo hacia el pasado (25). ',3,24),(215,'Mi vida no tiene sentido, me frustra (8). ',3,25),(216,'Evito las discusiones (3). ',3,26),(217,'Siempre necesito compañia para poder expresarme (9). ',3,27),(218,'Tengo tendencia a buscar el amparo de alguien (18). ',3,28),(219,'Estoy a punto de perder los nervios o de volverme loco (15). ',3,29),(220,'Necesito una limpieza interior (26). ',3,30),(221,'Estoy totalmente agotado y me voy arrastrando por la vida (30). ',3,31),(222,'A menudo no puedo desprenderme de determinados pensamientos (11) ',3,32),(223,'A veces, estando alegre de pronto me invade la tristeza (28). ',3,33),(224,'Con frecuencia mis pensamientos se pierden en sueños y especulaciones (17). ',3,34),(225,'Tropiezo siempre con las mismas dificultades (10). ',3,35),(226,'Ciertos pensamientos o ideas me tiranizan (11). ',3,36),(227,'Me gusta seguir mi propio camino (38). ',3,37),(228,'A menudo estoy apático y sin ánimos (18). ',3,38),(229,'Las personas lentas me ponen los nervios de punta (23). ',3,39),(230,'Mi desesperación es insoportable (12). ',3,40),(231,'Con frecuencia me invaden temores o presentimientos inexplicables (5). ',3,41),(232,'Me gusta ser el centro (9). ',3,42),(233,'Me gusta guardar las distancias con otras personas (38).',3,43),(234,'No puedo imponerme (14). ',3,44),(235,'Necesito ser más impermeable a las influencias externas (29). ',3,45),(236,'A menudo estoy de mal humor y frustrado sin motivo (28).',3,46),(237,'Me dejo desviar fácimente de mi propio camino (29). ',3,47),(238,'A menudo estoy excitado o rabioso (1). ',3,48),(239,'Cometo siempre los mismos errores (10). ',3,49),(240,'A menudo otras personas se aprovechan de mí (14).',3,50),(241,'Me considero menos capaz que otras personas (6). ',3,51),(242,'Tiendo a que con facilidad me coja la mala conciencia (32).',3,52),(243,'Conmigo todo tiene que ir lo más rápido posible (23). ',3,53),(244,'No tengo confianza en mí mismo (6). ',3,54),(245,'Tengo la sensación de que mis cometidos son sobrehumanos (31). ',3,55),(246,'A menudo me enfado por pequeñeces (1). ',3,56),(247,'Vivo bajo circunstancias que no puedo superar interiormente (24). ',3,57),(248,'Tengo siempre la sensación de deberle algo a alguien (32). ',3,58),(249,'No veo ninguna salida ¡Es demasiado! (12) ',3,59),(250,'Me satisface vecer las dificultades (33). ',3,60),(251,'No soy alguien que resuelva problemas (20). ',3,61),(252,'Tengo una necesidad muy fuerte de limpieza (26). ',3,62),(253,'Siento el impulso de hacer cosas que no puedo aprobar (15). ',3,63),(254,'Me dan miedo determinadas cosas o situaciones (27). ',3,64),(255,'Mis malas experiencias me han vuelto un pesimista (7). ',3,65),(256,'Estoy descontento de mi difícil destino (34). ',3,66),(257,'He perdido algo que todavía echo dolorosamente de menos (25). ',3,67),(258,'No soporto que sean desagradecidos conmigo (2). ',3,68),(259,'A menudo siento que se me exige demasiado (22). ',3,69),(260,'A veces me gustaría que otros pudieran aprovechar mis conocimientos (36). ',3,70),(261,'Sé siempre perfectamente lo que es correcto o lo que hay que hacer (37). ',3,71),(262,'A menudo no sé que debo hacer de modo que pido consejo a los demás (16). ',3,72),(263,'Sólo una férrrea autodisciplina me permite avanzar (4). ',3,73),(264,'Quisiera ser una persona mejor y favorecer lo bueno en el mundo (21). ',3,74),(265,'Necesito urgentemente fuerza física o espiritual (30). ',3,75),(266,'Tiendo a sacrificarme desinteresadamente por los demás (13).',3,76);
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta_respuesta_paciente`
--

DROP TABLE IF EXISTS `pregunta_respuesta_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta_respuesta_paciente` (
  `IDPregunta` int(11) NOT NULL,
  `IDRespuesta` int(11) NOT NULL,
  `IDPaciente` int(11) NOT NULL,
  PRIMARY KEY (`IDPregunta`,`IDRespuesta`,`IDPaciente`),
  KEY `IDRespuesta_idx` (`IDRespuesta`),
  KEY `IDPaciente_idx` (`IDPaciente`),
  CONSTRAINT `IDPaciente` FOREIGN KEY (`IDPaciente`) REFERENCES `paciente` (`IDPaciente`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `IDPregunta` FOREIGN KEY (`IDPregunta`) REFERENCES `pregunta` (`IDPregunta`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `IDRespuesta` FOREIGN KEY (`IDRespuesta`) REFERENCES `respuesta` (`IDRespuesta`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta_respuesta_paciente`
--

LOCK TABLES `pregunta_respuesta_paciente` WRITE;
/*!40000 ALTER TABLE `pregunta_respuesta_paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `pregunta_respuesta_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receta` (
  `IDReceta` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_de_vencimiento` date NOT NULL,
  `IDTerapeuta` int(11) DEFAULT NULL,
  `IDPaciente` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDReceta`),
  KEY `IDTerapeuta` (`IDTerapeuta`),
  KEY `IDPaciente` (`IDPaciente`),
  CONSTRAINT `receta_ibfk_1` FOREIGN KEY (`IDTerapeuta`) REFERENCES `terapeuta` (`IDTerapeuta`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `receta_ibfk_2` FOREIGN KEY (`IDPaciente`) REFERENCES `paciente` (`IDPaciente`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta`
--

DROP TABLE IF EXISTS `respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respuesta` (
  `IDRespuesta` int(11) NOT NULL AUTO_INCREMENT,
  `DescripcionRespuesta` varchar(300) NOT NULL,
  PRIMARY KEY (`IDRespuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta`
--

LOCK TABLES `respuesta` WRITE;
/*!40000 ALTER TABLE `respuesta` DISABLE KEYS */;
INSERT INTO `respuesta` VALUES (1,'Sí'),(2,'No');
/*!40000 ALTER TABLE `respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terapeuta`
--

DROP TABLE IF EXISTS `terapeuta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terapeuta` (
  `IDTerapeuta` int(11) NOT NULL AUTO_INCREMENT,
  `NombreTerapeuta` varchar(60) NOT NULL,
  `Login` varchar(20) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  PRIMARY KEY (`IDTerapeuta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terapeuta`
--

LOCK TABLES `terapeuta` WRITE;
/*!40000 ALTER TABLE `terapeuta` DISABLE KEYS */;
INSERT INTO `terapeuta` VALUES (1,'admin','admin','adminSanaT');
/*!40000 ALTER TABLE `terapeuta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-25 10:18:06
