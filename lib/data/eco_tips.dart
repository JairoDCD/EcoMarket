import 'package:ecomarket_info_hub/models/product_tip.dart';

final List<ProductTip> ecoTips = [
  ProductTip(
    id: 1,
    title: 'Evita plásticos de un solo uso',
    description: 'Los plásticos tardan cientos de años en descomponerse. Usa bolsas reutilizables y botellas de acero inoxidable.',
    category: 'Hogar Sostenible',
    icon: '🛍️',
  ),
  ProductTip(
    id: 2,
    title: 'Usa energía solar',
    description: 'La energía solar es renovable y reduce tu huella de carbono. Instala paneles solares si es posible.',
    category: 'Energía Verde',
    icon: '☀️',
  ),
  ProductTip(
    id: 3,
    title: 'Compra productos locales',
    description: 'Los productos locales tienen menor huella de carbono al no necesitar transporte de larga distancia.',
    category: 'Alimentación',
    icon: '🚜',
  ),
  ProductTip(
    id: 4,
    title: 'Usa productos de higiene natural',
    description: 'Los productos naturales son mejores para tu piel y el medio ambiente. Sin químicos dañinos.',
    category: 'Cuidado Personal',
    icon: '🌿',
  ),
  ProductTip(
    id: 5,
    title: 'Recicla correctamente',
    description: 'Aprende a separar residuos: papel, plástico, vidrio y metal. ¡Cada pequeña acción cuenta!',
    category: 'Reciclaje',
    icon: '♻️',
  ),
  ProductTip(
    id: 6,
    title: 'Reduce el consumo de agua',
    description: 'Duchas cortas, grifos que gotean, riego eficiente. El agua es un recurso precioso.',
    category: 'Hogar Sostenible',
    icon: '💧',
  ),
  ProductTip(
    id: 7,
    title: 'Compra ropa sostenible',
    description: 'Elige marcas que usan materiales ecológicos y prácticas laborales justas.',
    category: 'Cuidado Personal',
    icon: '👕',
  ),
  ProductTip(
    id: 8,
    title: 'Apoya la energía eólica',
    description: 'La energía eólica es limpia y sostenible. Considera energía verde para tu hogar.',
    category: 'Energía Verde',
    icon: '💨',
  ),
];

// Estadísticas globales
final Map<String, String> globalStats = {
  'co2_reducido': '12.5 millones de toneladas',
  'plastico_reciclado': '890 mil toneladas',
  'arboles_plantados': '2.3 millones',
  'energia_ahorrada': '450 GWh',
};
