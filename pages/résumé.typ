#import "@preview/isc-hei-bthesis:0.5.3" : *

#heavy-title("Résumé")


Ce travail de bachelor prend place suite à la demande de l'entreprise SP-Timing. L'objectif était de créer un système capable de chronométrer des participants lors d'une course avec une solution basée sur de la vidéo uniquement. La précision du chronométrage doit atteindre au minimum 1/10 seconde, le système devait être facilement déployable, et avoir le plus grand niveau d'autonomie possible

La solution implémentée dans ce travail se compose comme suit : en premier, deux models YOLOv11 (un préentraîné et un ajusté) ont la responsabilité de détecter et localiser les personnes ainsi que les numéros de dossard sur une image. Une fois les dossard localisés sur l'image, un système de reconnaissance de caractères optique (PaddleOCR est chargé de lire le contenu du dossard et d'en extraire le numéro de dossard du participant. Ensuite, un modèle d'estimation de profondeur monoculaire, dans notre cas DepthAnythingV2 Small, est utilisé afin d'estimer la distance des chaque personne se déplaçant vers la caméra, et de la comparer à celle de la ligne d'arrivée. Avec cette estimation de profondeur, un chronométrage précis de chaque personne peut être établi.

Le système actuel arrive à traiter un flux vidéo entrant à 15 images par seconde sur un ordinateur portable (Lenovo Legion Y540-15IRH#footnote(link("https://psref.lenovo.com/syspool/Sys/PDF/Legion/Lenovo_Legion_Y540_15IRH/Lenovo_Legion_Y540_15IRH_Spec.PDF")) - CPU : Intel i5 9300H #footnote(link("https://www.intel.fr/content/www/fr/fr/products/sku/191075/intel-core-i59300h-processor-8m-cache-up-to-4-10-ghz/specifications.html")) - GPU : Nvidia 1660Ti Mobile GPU #footnote(link("https://www.nvidia.com/en-eu/geforce/gaming-laptops/gtx-1660-ti/"))).

Le système final a été utilisé pour chronométrer 269 coureurs lors du trail du Gramont qui a eu lieu 14.06.2025. Sur les 269 coureurs, 188 ont pu être chronométrés en totale autonomie. Sur les 81 coureurs restants, 31 n'avaient pas un numéro de dossard visible, cela ramène le nombre de coureurs à 50.  Sur les participants restants, le système n'a pas réussi à lire le numéro de dossard de 47 participants, un participant a eu un numéro de dossard erroné, et deux n'ont pas été détecté du tout par le système. cela amène donc le nombre d'erreurs critiques à 3 sur 269. Ces résultats démontrent la possibilité d'utilisation professionelle d'un système de ce type.

#v(1fr)

#abstract-footer("fr")