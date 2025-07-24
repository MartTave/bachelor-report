#import "@preview/isc-hei-bthesis:0.5.3" : *

#heavy-title("Abstract")

This bachelor's thesis was commissioned by SP-Timing. The objective was to create a system capable of timing participants in a race using a video-only solution. The timing accuracy had to be at least 1/10 second, the system had to be easy to deploy, as autonomous as possible.

The solution implemented in this work is composed as follows: first, two YOLOv11 models (one pre-trained and one fine-tuned) are responsible for detecting and locating people and bib numbers in an image. Once the bibs have been located on the image, an optical character recognition system (PaddleOCR) is tasked with reading the contents of the bib and extracting the participant's bib number. Next, a monocular depth estimation model, in our case DepthAnythingV2 Small, is used to estimate the distance of each person moving towards the camera, and compare it with the distance to the finish line. With this depth estimate, precise timing of each person can be established.

The current system can process an incoming video stream at 15 frames per second on a laptop (Lenovo Legion Y540-IRH15#footnote(link("https://psref.lenovo.com/syspool/Sys/PDF/Legion/Lenovo_Legion_Y540_15IRH/Lenovo_Legion_Y540_15IRH_Spec.PDF")) - CPU : Intel i5 9300H #footnote(link("https://www.intel.fr/content/www/fr/fr/products/sku/191075/intel-core-i59300h-processor-8m-cache-up-to-4-10-ghz/specifications.html")) - GPU: Nvidia 1660Ti Mobile GPU #footnote(link("https://www.nvidia.com/en-eu/geforce/gaming-laptops/gtx-1660-ti/")).

The final system was used to time 269 runners at the Trail du Gramont held on 14.06.2025. Of the 269 runners, 188 were timed completely autonomously. Of the 81 remaining runners, 31 did not have a visible bib number, bringing the total number of runners down to 50.  Of the remaining participants, the system failed to read the bib numbers of 47 participants, one participant had an incorrectly read bib number, and two were not detected at all by the system. This brings the critical errors count to 3 of 269. These results demonstrate the potential for professional use of a system of this type.



#v(1fr)

#abstract-footer("en")